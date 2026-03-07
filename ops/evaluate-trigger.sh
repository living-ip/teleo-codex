#!/usr/bin/env bash
# evaluate-trigger.sh — Find unreviewed PRs and run headless Leo on each.
#
# Usage:
#   ./ops/evaluate-trigger.sh              # review all unreviewed open PRs
#   ./ops/evaluate-trigger.sh 47           # review a specific PR by number
#   ./ops/evaluate-trigger.sh --dry-run    # show what would be reviewed, don't run
#
# Requirements:
#   - claude CLI (claude -p for headless mode)
#   - gh CLI authenticated with repo access
#   - Run from the teleo-codex repo root
#
# Safety:
#   - Lockfile prevents concurrent runs
#   - Leo does NOT auto-merge — posts review only
#   - Each PR runs sequentially to avoid branch conflicts
#   - Timeout: 10 minutes per PR (kills runaway sessions)
#   - Pre-flight checks: clean working tree, gh auth, on main branch

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

LOCKFILE="/tmp/evaluate-trigger.lock"
LOG_DIR="$REPO_ROOT/ops/sessions"
TIMEOUT_SECONDS=600
DRY_RUN=false
SPECIFIC_PR=""

# --- Parse arguments ---
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    [0-9]*) SPECIFIC_PR="$arg" ;;
    --help|-h)
      head -19 "$0" | tail -17
      exit 0
      ;;
    *)
      echo "Unknown argument: $arg"
      exit 1
      ;;
  esac
done

# --- Pre-flight checks ---
if ! gh auth status >/dev/null 2>&1; then
  echo "ERROR: gh CLI not authenticated. Run 'gh auth login' first."
  exit 1
fi

if ! command -v claude >/dev/null 2>&1; then
  echo "ERROR: claude CLI not found. Install it first."
  exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
  echo "ERROR: Working tree is dirty. Clean up before running."
  git status --short
  exit 1
fi

# --- Lockfile (prevent concurrent runs) ---
if [ -f "$LOCKFILE" ]; then
  LOCK_PID=$(cat "$LOCKFILE" 2>/dev/null || echo "")
  if [ -n "$LOCK_PID" ] && kill -0 "$LOCK_PID" 2>/dev/null; then
    echo "Another evaluate-trigger is running (PID $LOCK_PID). Exiting."
    exit 1
  else
    echo "Stale lockfile found. Removing."
    rm -f "$LOCKFILE"
  fi
fi
echo $$ > "$LOCKFILE"
trap 'rm -f "$LOCKFILE"' EXIT

# --- Ensure log directory exists ---
mkdir -p "$LOG_DIR"

# --- Find PRs to review ---
if [ -n "$SPECIFIC_PR" ]; then
  # Review a specific PR
  PR_STATE=$(gh pr view "$SPECIFIC_PR" --json state --jq '.state' 2>/dev/null || echo "NOT_FOUND")
  if [ "$PR_STATE" != "OPEN" ]; then
    echo "PR #$SPECIFIC_PR is $PR_STATE (not OPEN). Reviewing anyway for testing."
  fi
  PRS_TO_REVIEW="$SPECIFIC_PR"
else
  # Find open PRs that need (re-)review
  OPEN_PRS=$(gh pr list --state open --json number --jq '.[].number' 2>/dev/null || echo "")

  if [ -z "$OPEN_PRS" ]; then
    echo "No open PRs found. Nothing to review."
    exit 0
  fi

  PRS_TO_REVIEW=""
  for pr in $OPEN_PRS; do
    # Check if there are new commits since the last review
    LAST_REVIEW_DATE=$(gh api "repos/{owner}/{repo}/pulls/$pr/reviews" \
      --jq 'map(select(.state != "DISMISSED")) | sort_by(.submitted_at) | last | .submitted_at' 2>/dev/null || echo "")
    LAST_COMMIT_DATE=$(gh pr view "$pr" --json commits --jq '.commits[-1].committedDate' 2>/dev/null || echo "")

    if [ -z "$LAST_REVIEW_DATE" ]; then
      # No reviews yet — needs review
      PRS_TO_REVIEW="$PRS_TO_REVIEW $pr"
    elif [ -n "$LAST_COMMIT_DATE" ] && [[ "$LAST_COMMIT_DATE" > "$LAST_REVIEW_DATE" ]]; then
      # New commits after last review — needs re-review
      echo "PR #$pr: New commits since last review. Queuing for re-review."
      PRS_TO_REVIEW="$PRS_TO_REVIEW $pr"
    else
      echo "PR #$pr: No new commits since last review. Skipping."
    fi
  done

  PRS_TO_REVIEW=$(echo "$PRS_TO_REVIEW" | xargs)

  if [ -z "$PRS_TO_REVIEW" ]; then
    echo "All open PRs are up to date. Nothing to do."
    exit 0
  fi
fi

echo "PRs to review: $PRS_TO_REVIEW"

if [ "$DRY_RUN" = true ]; then
  echo "[DRY RUN] Would review PRs: $PRS_TO_REVIEW"
  exit 0
fi

# --- Run headless Leo on each PR ---
REVIEWED=0
FAILED=0

for pr in $PRS_TO_REVIEW; do
  TIMESTAMP=$(date +%Y%m%d-%H%M%S)
  LOG_FILE="$LOG_DIR/leo-review-pr${pr}-${TIMESTAMP}.log"
  REVIEW_FILE="/tmp/leo-review-pr${pr}.md"

  echo ""
  echo "=== Reviewing PR #$pr ==="
  echo "Log: $LOG_FILE"
  echo "Started: $(date)"

  PROMPT="You are Leo. Read agents/leo/identity.md, agents/leo/beliefs.md, agents/leo/reasoning.md, and skills/evaluate.md.

Review PR #${pr} on this repo.

First, run: gh pr view ${pr} --json title,body,files,additions,deletions
Then checkout the PR branch: gh pr checkout ${pr}
Read every changed file completely.

Before evaluating, scan the existing knowledge base for duplicate and contradiction checks:
- List claim files in the relevant domain directory (e.g., domains/internet-finance/, domains/ai-alignment/)
- Read titles to check for semantic duplicates
- Check for contradictions with existing claims in that domain and in foundations/

For each proposed claim, evaluate against these 8 quality criteria from CLAUDE.md:
1. Specificity — Is this specific enough to disagree with?
2. Evidence — Is there traceable evidence in the body?
3. Description quality — Does the description add info beyond the title?
4. Confidence calibration — Does the confidence level match the evidence?
5. Duplicate check — Does this already exist in the knowledge base?
6. Contradiction check — Does this contradict an existing claim? If so, is the contradiction explicit?
7. Value add — Does this genuinely expand what the knowledge base knows?
8. Wiki links — Do all [[links]] point to real files?

Also check:
- Source archive updated correctly (status field)
- Commit messages follow conventions
- Files are in the correct domain directory
- Cross-domain connections that the proposer may have missed

Write your complete review to ${REVIEW_FILE}
Then post it with: gh pr review ${pr} --comment --body-file ${REVIEW_FILE}

If ALL claims pass quality gates: gh pr review ${pr} --approve --body-file ${REVIEW_FILE}
If ANY claim needs changes: gh pr review ${pr} --request-changes --body-file ${REVIEW_FILE}

DO NOT merge. Leave the merge decision to Cory.
Work autonomously. Do not ask for confirmation."

  # Run headless Leo with timeout (perl-based, works on macOS without coreutils)
  if perl -e "alarm $TIMEOUT_SECONDS; exec @ARGV" claude -p \
    --model opus \
    --allowedTools "Read,Write,Edit,Bash,Glob,Grep" \
    --permission-mode bypassPermissions \
    "$PROMPT" \
    > "$LOG_FILE" 2>&1; then
    echo "PR #$pr: Review complete."
    REVIEWED=$((REVIEWED + 1))
  else
    EXIT_CODE=$?
    if [ "$EXIT_CODE" -eq 124 ]; then
      echo "PR #$pr: TIMEOUT after ${TIMEOUT_SECONDS}s. Check log."
    else
      echo "PR #$pr: FAILED (exit code $EXIT_CODE). Check log."
    fi
    FAILED=$((FAILED + 1))
  fi

  echo "Finished: $(date)"

  # Clean up review temp file
  rm -f "$REVIEW_FILE"

  # Return to main branch and clean up PR branch
  PR_BRANCH=$(gh pr view "$pr" --json headRefName --jq '.headRefName' 2>/dev/null || echo "")
  if ! git checkout main 2>/dev/null; then
    echo "WARNING: Could not checkout main. Forcing reset."
    git checkout -f main
    git clean -fd
  fi
  [ -n "$PR_BRANCH" ] && git branch -D "$PR_BRANCH" 2>/dev/null || true
done

echo ""
echo "=== Summary ==="
echo "Reviewed: $REVIEWED"
echo "Failed: $FAILED"
echo "Logs: $LOG_DIR"
