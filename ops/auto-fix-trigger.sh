#!/usr/bin/env bash
# auto-fix-trigger.sh — Find PRs with requested changes, auto-fix mechanical issues.
#
# Two-tier response to review feedback:
#   1. AUTO-FIX: Broken wiki links, missing frontmatter fields, schema compliance
#   2. FLAG: Domain classification, claim reframing, confidence changes → notify proposer
#
# Mechanical issues are fixed by a headless Claude agent on the PR branch.
# New commits trigger re-review on the next evaluate-trigger.sh cron cycle.
#
# Usage:
#   ./ops/auto-fix-trigger.sh              # fix all PRs with requested changes
#   ./ops/auto-fix-trigger.sh 66           # fix a specific PR
#   ./ops/auto-fix-trigger.sh --dry-run    # show what would be fixed, don't run
#
# Requirements:
#   - claude CLI (claude -p for headless mode)
#   - gh CLI authenticated with repo access
#   - Run from the teleo-codex repo root
#
# Safety:
#   - Lockfile prevents concurrent runs (separate from evaluate-trigger)
#   - Only fixes mechanical issues — never changes claim substance
#   - Max one fix cycle per PR per run (prevents infinite loops)
#   - Tracks fix attempts to avoid re-fixing already-attempted PRs

set -euo pipefail

# Allow nested Claude Code sessions
unset CLAUDECODE 2>/dev/null || true

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

LOCKFILE="/tmp/auto-fix-trigger.lock"
LOG_DIR="$REPO_ROOT/ops/sessions"
TIMEOUT_SECONDS=300  # 5 min — fixes should be fast
DRY_RUN=false
SPECIFIC_PR=""
FIX_MARKER="<!-- auto-fix-attempted -->"

# --- Parse arguments ---
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    [0-9]*) SPECIFIC_PR="$arg" ;;
    --help|-h)
      head -20 "$0" | tail -18
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
  echo "ERROR: gh CLI not authenticated."
  exit 1
fi

if ! command -v claude >/dev/null 2>&1; then
  echo "ERROR: claude CLI not found."
  exit 1
fi

# --- Lockfile ---
if [ -f "$LOCKFILE" ]; then
  LOCK_PID=$(cat "$LOCKFILE" 2>/dev/null || echo "")
  if [ -n "$LOCK_PID" ] && kill -0 "$LOCK_PID" 2>/dev/null; then
    echo "Another auto-fix-trigger is running (PID $LOCK_PID). Exiting."
    exit 1
  else
    rm -f "$LOCKFILE"
  fi
fi
echo $$ > "$LOCKFILE"
trap 'rm -f "$LOCKFILE"' EXIT

mkdir -p "$LOG_DIR"

# --- Find PRs needing fixes ---
if [ -n "$SPECIFIC_PR" ]; then
  PRS_TO_FIX="$SPECIFIC_PR"
else
  OPEN_PRS=$(gh pr list --state open --json number --jq '.[].number' 2>/dev/null || echo "")

  if [ -z "$OPEN_PRS" ]; then
    echo "No open PRs found."
    exit 0
  fi

  PRS_TO_FIX=""
  for pr in $OPEN_PRS; do
    # Check if PR has request_changes reviews
    HAS_CHANGES_REQUESTED=$(gh api "repos/{owner}/{repo}/pulls/$pr/reviews" \
      --jq '[.[] | select(.state == "CHANGES_REQUESTED")] | length' 2>/dev/null || echo "0")

    if [ "$HAS_CHANGES_REQUESTED" -eq 0 ]; then
      continue
    fi

    # Check if auto-fix was already attempted (marker comment exists)
    ALREADY_ATTEMPTED=$(gh pr view "$pr" --json comments \
      --jq "[.comments[].body | select(contains(\"$FIX_MARKER\"))] | length" 2>/dev/null || echo "0")

    # Check if there are new commits since the last auto-fix attempt
    if [ "$ALREADY_ATTEMPTED" -gt 0 ]; then
      LAST_FIX_DATE=$(gh pr view "$pr" --json comments \
        --jq "[.comments[] | select(.body | contains(\"$FIX_MARKER\")) | .createdAt] | last" 2>/dev/null || echo "")
      LAST_COMMIT_DATE=$(gh pr view "$pr" --json commits --jq '.commits[-1].committedDate' 2>/dev/null || echo "")

      if [ -n "$LAST_FIX_DATE" ] && [ -n "$LAST_COMMIT_DATE" ] && [[ "$LAST_COMMIT_DATE" < "$LAST_FIX_DATE" ]]; then
        echo "PR #$pr: Auto-fix already attempted, no new commits. Skipping."
        continue
      fi
    fi

    PRS_TO_FIX="$PRS_TO_FIX $pr"
  done

  PRS_TO_FIX=$(echo "$PRS_TO_FIX" | xargs)

  if [ -z "$PRS_TO_FIX" ]; then
    echo "No PRs need auto-fixing."
    exit 0
  fi
fi

echo "PRs to auto-fix: $PRS_TO_FIX"

if [ "$DRY_RUN" = true ]; then
  for pr in $PRS_TO_FIX; do
    echo "[DRY RUN] Would attempt auto-fix on PR #$pr"
    # Show the review feedback summary
    gh pr view "$pr" --json comments \
      --jq '.comments[] | select(.body | test("Verdict.*request_changes|request changes"; "i")) | .body' 2>/dev/null \
      | grep -iE "broken|missing|schema|field|link" | head -10 || echo "  (no mechanical issues detected in comments)"
  done
  exit 0
fi

# --- Auto-fix each PR ---
FIXED=0
FLAGGED=0

for pr in $PRS_TO_FIX; do
  echo ""
  echo "=== Auto-fix PR #$pr ==="

  # Get the review feedback
  REVIEW_TEXT=$(gh pr view "$pr" --json comments \
    --jq '.comments[].body' 2>/dev/null || echo "")

  if [ -z "$REVIEW_TEXT" ]; then
    echo "  No review comments found. Skipping."
    continue
  fi

  # Classify issues as mechanical vs substantive
  # Mechanical: broken links, missing fields, schema compliance
  MECHANICAL_PATTERNS="broken wiki link|broken link|missing.*challenged_by|missing.*field|schema compliance|link.*needs to match|link text needs|missing wiki.link|add.*wiki.link|BROKEN WIKI LINK"
  # Substantive: domain classification, reframing, confidence, consider
  SUBSTANTIVE_PATTERNS="domain classification|consider.*reframing|soften.*to|confidence.*recalibrat|consider whether|territory violation|evaluator-as-proposer|conflict.of.interest"

  HAS_MECHANICAL=$(echo "$REVIEW_TEXT" | grep -ciE "$MECHANICAL_PATTERNS" || echo "0")
  HAS_SUBSTANTIVE=$(echo "$REVIEW_TEXT" | grep -ciE "$SUBSTANTIVE_PATTERNS" || echo "0")

  echo "  Mechanical issues: $HAS_MECHANICAL"
  echo "  Substantive issues: $HAS_SUBSTANTIVE"

  # --- Handle mechanical fixes ---
  if [ "$HAS_MECHANICAL" -gt 0 ]; then
    echo "  Attempting mechanical auto-fix..."

    # Extract just the mechanical feedback lines for the fix agent
    MECHANICAL_FEEDBACK=$(echo "$REVIEW_TEXT" | grep -iE "$MECHANICAL_PATTERNS" | head -20)

    TIMESTAMP=$(date +%Y%m%d-%H%M%S)
    FIX_LOG="$LOG_DIR/autofix-pr${pr}-${TIMESTAMP}.log"

    PR_BRANCH=$(gh pr view "$pr" --json headRefName --jq '.headRefName' 2>/dev/null || echo "")

    FIX_PROMPT="You are a mechanical fix agent. Your ONLY job is to fix objective, mechanical issues in PR #${pr}.

RULES:
- Fix ONLY broken wiki links, missing frontmatter fields, and schema compliance issues.
- NEVER change claim titles, arguments, confidence levels, or domain classification.
- NEVER add new claims or remove existing ones.
- NEVER rewrite prose or change the substance of any argument.
- If you're unsure whether something is mechanical, SKIP IT.

STEPS:
1. Run: gh pr checkout ${pr}
2. Read the review feedback below to understand what needs fixing.
3. For each mechanical issue:
   a. BROKEN WIKI LINKS: Find the correct filename with Glob, update the [[link]] text to match exactly.
   b. MISSING challenged_by: If a claim is rated 'likely' or higher and reviewers noted missing challenged_by,
      add a challenged_by field to the frontmatter. Use the counter-argument already mentioned in the claim body.
   c. MISSING WIKI LINKS: If reviewers named specific claims that should be linked, verify the file exists
      with Glob, then add to the Relevant Notes section.
4. Stage and commit changes:
   git add -A
   git commit -m 'auto-fix: mechanical fixes from review feedback

   - What was fixed (list each fix)

   Auto-Fix-Agent: teleo-eval-orchestrator'
5. Push: git push origin ${PR_BRANCH}

REVIEW FEEDBACK (fix only the mechanical issues):
${MECHANICAL_FEEDBACK}

FULL REVIEW CONTEXT:
$(echo "$REVIEW_TEXT" | head -200)

Work autonomously. Do not ask for confirmation. If there's nothing mechanical to fix, just exit."

    if perl -e "alarm $TIMEOUT_SECONDS; exec @ARGV" claude -p \
      --model "sonnet" \
      --allowedTools "Read,Write,Edit,Bash,Glob,Grep" \
      --permission-mode bypassPermissions \
      "$FIX_PROMPT" \
      > "$FIX_LOG" 2>&1; then
      echo "  Auto-fix agent completed."

      # Check if any commits were actually pushed
      NEW_COMMIT_DATE=$(gh pr view "$pr" --json commits --jq '.commits[-1].committedDate' 2>/dev/null || echo "")
      echo "  Latest commit: $NEW_COMMIT_DATE"
      FIXED=$((FIXED + 1))
    else
      EXIT_CODE=$?
      if [ "$EXIT_CODE" -eq 142 ] || [ "$EXIT_CODE" -eq 124 ]; then
        echo "  Auto-fix: TIMEOUT after ${TIMEOUT_SECONDS}s."
      else
        echo "  Auto-fix: FAILED (exit code $EXIT_CODE)."
      fi
    fi

    echo "  Log: $FIX_LOG"
  fi

  # --- Flag substantive issues to proposer ---
  if [ "$HAS_SUBSTANTIVE" -gt 0 ]; then
    echo "  Flagging substantive issues for proposer..."

    SUBSTANTIVE_FEEDBACK=$(echo "$REVIEW_TEXT" | grep -iE "$SUBSTANTIVE_PATTERNS" | head -15)

    # Determine proposer from branch name
    PROPOSER=$(gh pr view "$pr" --json headRefName --jq '.headRefName' 2>/dev/null | cut -d'/' -f1)

    FLAG_COMMENT="## Substantive Feedback — Needs Proposer Input

The following review feedback requires the proposer's judgment and cannot be auto-fixed:

\`\`\`
${SUBSTANTIVE_FEEDBACK}
\`\`\`

**Proposer:** ${PROPOSER}
**Action needed:** Review the feedback above, make changes if you agree, then push to trigger re-review.

$FIX_MARKER
*Auto-fix agent — mechanical issues were ${HAS_MECHANICAL:+addressed}${HAS_MECHANICAL:-not found}, substantive issues flagged for human/agent review.*"

    gh pr comment "$pr" --body "$FLAG_COMMENT" 2>/dev/null
    echo "  Flagged to proposer: $PROPOSER"
    FLAGGED=$((FLAGGED + 1))
  elif [ "$HAS_MECHANICAL" -gt 0 ]; then
    # Only mechanical issues — post marker comment so we don't re-attempt
    MARKER_COMMENT="$FIX_MARKER
*Auto-fix agent ran — mechanical fixes attempted. Substantive issues: none. Awaiting re-review.*"
    gh pr comment "$pr" --body "$MARKER_COMMENT" 2>/dev/null
  fi

  # Clean up branch
  git checkout main 2>/dev/null || git checkout -f main
  PR_BRANCH=$(gh pr view "$pr" --json headRefName --jq '.headRefName' 2>/dev/null || echo "")
  [ -n "$PR_BRANCH" ] && git branch -D "$PR_BRANCH" 2>/dev/null || true

  echo "  Done."
done

echo ""
echo "=== Auto-Fix Summary ==="
echo "Fixed: $FIXED"
echo "Flagged: $FLAGGED"
echo "Logs: $LOG_DIR"
