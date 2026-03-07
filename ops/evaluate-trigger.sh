#!/usr/bin/env bash
# evaluate-trigger.sh — Find unreviewed PRs and run 2-agent review on each.
#
# Reviews each PR with TWO agents:
#   1. Leo (evaluator) — quality gates, cross-domain connections, coherence
#   2. Domain agent — domain expertise, duplicate check, technical accuracy
#
# Usage:
#   ./ops/evaluate-trigger.sh              # review all unreviewed open PRs
#   ./ops/evaluate-trigger.sh 47           # review a specific PR by number
#   ./ops/evaluate-trigger.sh --dry-run    # show what would be reviewed, don't run
#   ./ops/evaluate-trigger.sh --leo-only   # skip domain agent, just run Leo
#
# Requirements:
#   - claude CLI (claude -p for headless mode)
#   - gh CLI authenticated with repo access
#   - Run from the teleo-codex repo root
#
# Safety:
#   - Lockfile prevents concurrent runs
#   - Neither agent auto-merges — reviews only
#   - Each PR runs sequentially to avoid branch conflicts
#   - Timeout: 10 minutes per agent per PR
#   - Pre-flight checks: clean working tree, gh auth

set -euo pipefail

# Allow nested Claude Code sessions (headless spawned from interactive)
unset CLAUDECODE 2>/dev/null || true

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

LOCKFILE="/tmp/evaluate-trigger.lock"
LOG_DIR="$REPO_ROOT/ops/sessions"
TIMEOUT_SECONDS=600
DRY_RUN=false
LEO_ONLY=false
SPECIFIC_PR=""

# --- Domain routing map ---
# Maps branch prefix or domain directory to agent name and identity path
detect_domain_agent() {
  local pr_number="$1"
  local branch files domain agent

  branch=$(gh pr view "$pr_number" --json headRefName --jq '.headRefName' 2>/dev/null || echo "")
  files=$(gh pr view "$pr_number" --json files --jq '.files[].path' 2>/dev/null || echo "")

  # Try branch prefix first
  case "$branch" in
    rio/*|*/internet-finance*) agent="rio"; domain="internet-finance" ;;
    clay/*|*/entertainment*)   agent="clay"; domain="entertainment" ;;
    theseus/*|logos/*|*/ai-alignment*) agent="logos"; domain="ai-alignment" ;;
    vida/*|*/health*)          agent="vida"; domain="health" ;;
    leo/*|*/grand-strategy*)   agent="leo"; domain="grand-strategy" ;;
    *)
      # Fall back to checking which domain directory has changed files
      if echo "$files" | grep -q "domains/internet-finance/"; then
        agent="rio"; domain="internet-finance"
      elif echo "$files" | grep -q "domains/entertainment/"; then
        agent="clay"; domain="entertainment"
      elif echo "$files" | grep -q "domains/ai-alignment/"; then
        agent="logos"; domain="ai-alignment"
      elif echo "$files" | grep -q "domains/health/"; then
        agent="vida"; domain="health"
      else
        agent=""; domain=""
      fi
      ;;
  esac

  echo "$agent $domain"
}

# --- Parse arguments ---
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    --leo-only) LEO_ONLY=true ;;
    [0-9]*) SPECIFIC_PR="$arg" ;;
    --help|-h)
      head -23 "$0" | tail -21
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

# Check for dirty working tree (ignore ops/ and .claude/ which may contain uncommitted scripts)
DIRTY_FILES=$(git status --porcelain | grep -v '^?? ops/' | grep -v '^ M ops/' | grep -v '^?? \.claude/' | grep -v '^ M \.claude/' || true)
if [ -n "$DIRTY_FILES" ]; then
  echo "ERROR: Working tree is dirty. Clean up before running."
  echo "$DIRTY_FILES"
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
  PR_STATE=$(gh pr view "$SPECIFIC_PR" --json state --jq '.state' 2>/dev/null || echo "NOT_FOUND")
  if [ "$PR_STATE" != "OPEN" ]; then
    echo "PR #$SPECIFIC_PR is $PR_STATE (not OPEN). Reviewing anyway for testing."
  fi
  PRS_TO_REVIEW="$SPECIFIC_PR"
else
  OPEN_PRS=$(gh pr list --state open --json number --jq '.[].number' 2>/dev/null || echo "")

  if [ -z "$OPEN_PRS" ]; then
    echo "No open PRs found. Nothing to review."
    exit 0
  fi

  PRS_TO_REVIEW=""
  for pr in $OPEN_PRS; do
    LAST_REVIEW_DATE=$(gh api "repos/{owner}/{repo}/pulls/$pr/reviews" \
      --jq 'map(select(.state != "DISMISSED")) | sort_by(.submitted_at) | last | .submitted_at' 2>/dev/null || echo "")
    LAST_COMMIT_DATE=$(gh pr view "$pr" --json commits --jq '.commits[-1].committedDate' 2>/dev/null || echo "")

    if [ -z "$LAST_REVIEW_DATE" ]; then
      PRS_TO_REVIEW="$PRS_TO_REVIEW $pr"
    elif [ -n "$LAST_COMMIT_DATE" ] && [[ "$LAST_COMMIT_DATE" > "$LAST_REVIEW_DATE" ]]; then
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
  for pr in $PRS_TO_REVIEW; do
    read -r agent domain <<< "$(detect_domain_agent "$pr")"
    echo "[DRY RUN] PR #$pr — Leo + ${agent:-unknown} (${domain:-unknown domain})"
  done
  exit 0
fi

# --- Run headless reviews on each PR ---
run_agent_review() {
  local pr="$1" agent_name="$2" prompt="$3" model="$4"
  local timestamp log_file review_file

  timestamp=$(date +%Y%m%d-%H%M%S)
  log_file="$LOG_DIR/${agent_name}-review-pr${pr}-${timestamp}.log"
  review_file="/tmp/${agent_name}-review-pr${pr}.md"

  echo "  Running ${agent_name}..."
  echo "  Log: $log_file"

  if perl -e "alarm $TIMEOUT_SECONDS; exec @ARGV" claude -p \
    --model "$model" \
    --allowedTools "Read,Write,Edit,Bash,Glob,Grep" \
    --permission-mode bypassPermissions \
    "$prompt" \
    > "$log_file" 2>&1; then
    echo "  ${agent_name}: Review posted."
    rm -f "$review_file"
    return 0
  else
    local exit_code=$?
    if [ "$exit_code" -eq 142 ] || [ "$exit_code" -eq 124 ]; then
      echo "  ${agent_name}: TIMEOUT after ${TIMEOUT_SECONDS}s."
    else
      echo "  ${agent_name}: FAILED (exit code $exit_code)."
    fi
    rm -f "$review_file"
    return 1
  fi
}

REVIEWED=0
FAILED=0

for pr in $PRS_TO_REVIEW; do
  echo ""
  echo "=== PR #$pr ==="
  echo "Started: $(date)"

  # Detect which domain agent should review
  read -r DOMAIN_AGENT DOMAIN <<< "$(detect_domain_agent "$pr")"
  echo "Domain: ${DOMAIN:-unknown} | Agent: ${DOMAIN_AGENT:-none detected}"

  # --- Review 1: Leo (evaluator) ---
  LEO_REVIEW_FILE="/tmp/leo-review-pr${pr}.md"
  LEO_PROMPT="You are Leo. Read agents/leo/identity.md, agents/leo/beliefs.md, agents/leo/reasoning.md, and skills/evaluate.md.

Review PR #${pr} on this repo.

First, run: gh pr view ${pr} --json title,body,files,additions,deletions
Then checkout the PR branch: gh pr checkout ${pr}
Read every changed file completely.

Before evaluating, scan the existing knowledge base for duplicate and contradiction checks:
- List claim files in the relevant domain directory (e.g., domains/${DOMAIN}/)
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

Write your complete review to ${LEO_REVIEW_FILE}
Then post it with: gh pr review ${pr} --comment --body-file ${LEO_REVIEW_FILE}

If ALL claims pass quality gates: gh pr review ${pr} --approve --body-file ${LEO_REVIEW_FILE}
If ANY claim needs changes: gh pr review ${pr} --request-changes --body-file ${LEO_REVIEW_FILE}

DO NOT merge. Leave the merge decision to Cory.
Work autonomously. Do not ask for confirmation."

  if run_agent_review "$pr" "leo" "$LEO_PROMPT" "opus"; then
    LEO_PASSED=true
  else
    LEO_PASSED=false
  fi

  # Return to main between reviews
  git checkout main 2>/dev/null || git checkout -f main
  PR_BRANCH=$(gh pr view "$pr" --json headRefName --jq '.headRefName' 2>/dev/null || echo "")
  [ -n "$PR_BRANCH" ] && git branch -D "$PR_BRANCH" 2>/dev/null || true

  # --- Review 2: Domain agent ---
  if [ "$LEO_ONLY" = true ]; then
    echo "  Skipping domain agent review (--leo-only)."
  elif [ -z "$DOMAIN_AGENT" ]; then
    echo "  Could not detect domain agent. Skipping domain review."
  elif [ "$DOMAIN_AGENT" = "leo" ]; then
    echo "  Domain is grand-strategy (Leo's territory). Single review sufficient."
  else
    DOMAIN_REVIEW_FILE="/tmp/${DOMAIN_AGENT}-review-pr${pr}.md"
    DOMAIN_PROMPT="You are ${DOMAIN_AGENT^}. Read agents/${DOMAIN_AGENT}/identity.md, agents/${DOMAIN_AGENT}/beliefs.md, and skills/evaluate.md.

You are reviewing PR #${pr} as the domain expert for ${DOMAIN}.

First, run: gh pr view ${pr} --json title,body,files,additions,deletions
Then checkout the PR branch: gh pr checkout ${pr}
Read every changed file completely.

Your review focuses on DOMAIN EXPERTISE — things only a ${DOMAIN} specialist would catch:

1. **Technical accuracy** — Are the claims factually correct within the ${DOMAIN} domain?
2. **Domain duplicates** — Do any claims duplicate existing knowledge in domains/${DOMAIN}/?
   Scan the directory and read titles carefully.
3. **Missing context** — What important nuance from the ${DOMAIN} domain is the claim missing?
4. **Belief impact** — Do any claims affect your current beliefs? Read agents/${DOMAIN_AGENT}/beliefs.md
   and flag if any belief needs updating.
5. **Connections** — What existing claims in your domain should be wiki-linked?
6. **Confidence calibration** — From your domain expertise, is the confidence level right?

Write your review to ${DOMAIN_REVIEW_FILE}
Post it with: gh pr review ${pr} --comment --body-file ${DOMAIN_REVIEW_FILE}

Sign your review as ${DOMAIN_AGENT^} (domain reviewer for ${DOMAIN}).
DO NOT duplicate Leo's quality gate checks — he covers those.
DO NOT merge.
Work autonomously. Do not ask for confirmation."

    run_agent_review "$pr" "$DOMAIN_AGENT" "$DOMAIN_PROMPT" "sonnet"

    # Clean up branch again
    git checkout main 2>/dev/null || git checkout -f main
    [ -n "$PR_BRANCH" ] && git branch -D "$PR_BRANCH" 2>/dev/null || true
  fi

  if [ "$LEO_PASSED" = true ]; then
    REVIEWED=$((REVIEWED + 1))
  else
    FAILED=$((FAILED + 1))
  fi

  echo "Finished: $(date)"
done

echo ""
echo "=== Summary ==="
echo "Reviewed: $REVIEWED"
echo "Failed: $FAILED"
echo "Logs: $LOG_DIR"
