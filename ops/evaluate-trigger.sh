#!/usr/bin/env bash
# evaluate-trigger.sh — Find unreviewed PRs, run 2-agent review, auto-merge if approved.
#
# Reviews each PR with TWO agents:
#   1. Leo (evaluator) — quality gates, cross-domain connections, coherence
#   2. Domain agent — domain expertise, duplicate check, technical accuracy
#
# After both reviews, auto-merges if:
#   - Leo's comment contains "**Verdict:** approve"
#   - Domain agent's comment contains "**Verdict:** approve"
#   - No territory violations (files outside proposer's domain)
#
# Usage:
#   ./ops/evaluate-trigger.sh              # review + auto-merge approved PRs
#   ./ops/evaluate-trigger.sh 47           # review a specific PR by number
#   ./ops/evaluate-trigger.sh --dry-run    # show what would be reviewed, don't run
#   ./ops/evaluate-trigger.sh --leo-only   # skip domain agent, just run Leo
#   ./ops/evaluate-trigger.sh --no-merge   # review only, don't auto-merge (old behavior)
#
# Requirements:
#   - claude CLI (claude -p for headless mode)
#   - gh CLI authenticated with repo access
#   - Run from the teleo-codex repo root
#
# Safety:
#   - Lockfile prevents concurrent runs
#   - Auto-merge requires ALL reviewers to approve + no territory violations
#   - Each PR runs sequentially to avoid branch conflicts
#   - Timeout: 20 minutes per agent per PR
#   - Pre-flight checks: clean working tree, gh auth
#
# Verdict protocol:
#   All agents use `gh pr comment` (NOT `gh pr review`) because all agents
#   share the m3taversal GitHub account — `gh pr review --approve` fails
#   when the PR author and reviewer are the same user. The merge check
#   parses issue comments for structured verdict markers instead.

set -euo pipefail

# Allow nested Claude Code sessions (headless spawned from interactive)
unset CLAUDECODE 2>/dev/null || true

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_ROOT"

LOCKFILE="/tmp/evaluate-trigger.lock"
LOG_DIR="$REPO_ROOT/ops/sessions"
TIMEOUT_SECONDS=1200
DRY_RUN=false
LEO_ONLY=false
NO_MERGE=false
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
    theseus/*|logos/*|*/ai-alignment*) agent="theseus"; domain="ai-alignment" ;;
    vida/*|*/health*)          agent="vida"; domain="health" ;;
    astra/*|*/space-development*) agent="astra"; domain="space-development" ;;
    leo/*|*/grand-strategy*)   agent="leo"; domain="grand-strategy" ;;
    contrib/*)
      # External contributor — detect domain from changed files (fall through to file check)
      agent=""; domain=""
      ;;
    *)
      agent=""; domain=""
      ;;
  esac

  # If no agent detected from branch prefix, check changed files
  if [ -z "$agent" ]; then
    if echo "$files" | grep -q "domains/internet-finance/"; then
      agent="rio"; domain="internet-finance"
    elif echo "$files" | grep -q "domains/entertainment/"; then
      agent="clay"; domain="entertainment"
    elif echo "$files" | grep -q "domains/ai-alignment/"; then
      agent="theseus"; domain="ai-alignment"
    elif echo "$files" | grep -q "domains/health/"; then
      agent="vida"; domain="health"
    elif echo "$files" | grep -q "domains/space-development/"; then
      agent="astra"; domain="space-development"
    fi
  fi

  echo "$agent $domain"
}

# --- Parse arguments ---
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=true ;;
    --leo-only) LEO_ONLY=true ;;
    --no-merge) NO_MERGE=true ;;
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

# Check for dirty working tree (ignore ops/, .claude/, .github/ which may contain local-only files)
DIRTY_FILES=$(git status --porcelain | grep -v '^?? ops/' | grep -v '^ M ops/' | grep -v '^?? \.claude/' | grep -v '^ M \.claude/' | grep -v '^?? \.github/' | grep -v '^ M \.github/' || true)
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
  # NOTE: gh pr list silently returns empty in some worktree configs; use gh api instead
  OPEN_PRS=$(gh api repos/:owner/:repo/pulls --jq '.[].number' 2>/dev/null || echo "")

  if [ -z "$OPEN_PRS" ]; then
    echo "No open PRs found. Nothing to review."
    exit 0
  fi

  PRS_TO_REVIEW=""
  for pr in $OPEN_PRS; do
    # Check if this PR already has a Leo verdict comment (avoid re-reviewing)
    LEO_COMMENTED=$(gh pr view "$pr" --json comments \
      --jq '[.comments[] | select(.body | test("VERDICT:LEO:(APPROVE|REQUEST_CHANGES)"))] | length' 2>/dev/null || echo "0")
    LAST_COMMIT_DATE=$(gh pr view "$pr" --json commits --jq '.commits[-1].committedDate' 2>/dev/null || echo "")

    if [ "$LEO_COMMENTED" = "0" ]; then
      PRS_TO_REVIEW="$PRS_TO_REVIEW $pr"
    else
      # Check if new commits since last Leo review
      LAST_LEO_DATE=$(gh pr view "$pr" --json comments \
        --jq '[.comments[] | select(.body | test("VERDICT:LEO:")) | .createdAt] | last' 2>/dev/null || echo "")
      if [ -n "$LAST_COMMIT_DATE" ] && [ -n "$LAST_LEO_DATE" ] && [[ "$LAST_COMMIT_DATE" > "$LAST_LEO_DATE" ]]; then
        echo "PR #$pr: New commits since last review. Queuing for re-review."
        PRS_TO_REVIEW="$PRS_TO_REVIEW $pr"
      else
        echo "PR #$pr: Already reviewed. Skipping."
      fi
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

  echo "  Running ${agent_name} (model: ${model})..."
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

# --- Territory violation check ---
# Verifies all changed files are within the proposer's expected territory
check_territory_violations() {
  local pr_number="$1"
  local branch files proposer violations

  branch=$(gh pr view "$pr_number" --json headRefName --jq '.headRefName' 2>/dev/null || echo "")
  files=$(gh pr view "$pr_number" --json files --jq '.files[].path' 2>/dev/null || echo "")

  # Determine proposer from branch prefix
  proposer=$(echo "$branch" | cut -d'/' -f1)

  # Map proposer to allowed directories
  local allowed_domains=""
  case "$proposer" in
    rio)     allowed_domains="domains/internet-finance/" ;;
    clay)    allowed_domains="domains/entertainment/" ;;
    theseus) allowed_domains="domains/ai-alignment/" ;;
    vida)    allowed_domains="domains/health/" ;;
    astra)   allowed_domains="domains/space-development/" ;;
    leo)     allowed_domains="core/|foundations/" ;;
    contrib) echo ""; return 0 ;;  # External contributors — skip territory check
    *)       echo ""; return 0 ;;  # Unknown proposer — skip check
  esac

  # Check each file — allow inbox/archive/, agents/{proposer}/, schemas/, foundations/, and the agent's domain
  violations=""
  while IFS= read -r file; do
    [ -z "$file" ] && continue
    # Always allowed: inbox/archive, own agent dir, maps/, foundations/ (any agent can propose foundation claims)
    if echo "$file" | grep -qE "^inbox/archive/|^agents/${proposer}/|^maps/|^foundations/"; then
      continue
    fi
    # Check against allowed domain directories
    if echo "$file" | grep -qE "^${allowed_domains}"; then
      continue
    fi
    violations="${violations}  - ${file}\n"
  done <<< "$files"

  if [ -n "$violations" ]; then
    echo -e "$violations"
  else
    echo ""
  fi
}

# --- Auto-merge check ---
# Parses issue comments for structured verdict markers.
# Verdict protocol: agents post `<!-- VERDICT:AGENT_KEY:APPROVE -->` or
# `<!-- VERDICT:AGENT_KEY:REQUEST_CHANGES -->` as HTML comments in their review.
# This is machine-parseable and invisible in the rendered comment.
check_merge_eligible() {
  local pr_number="$1"
  local domain_agent="$2"
  local leo_passed="$3"

  # Gate 1: Leo must have completed without timeout/error
  if [ "$leo_passed" != "true" ]; then
    echo "BLOCK: Leo review failed or timed out"
    return 1
  fi

  # Gate 2: Check Leo's verdict from issue comments
  local leo_verdict
  leo_verdict=$(gh pr view "$pr_number" --json comments \
    --jq '[.comments[] | select(.body | test("VERDICT:LEO:")) | .body] | last' 2>/dev/null || echo "")

  if echo "$leo_verdict" | grep -q "VERDICT:LEO:APPROVE"; then
    echo "Leo: APPROVED"
  elif echo "$leo_verdict" | grep -q "VERDICT:LEO:REQUEST_CHANGES"; then
    echo "BLOCK: Leo requested changes"
    return 1
  else
    echo "BLOCK: Could not find Leo's verdict marker in PR comments"
    return 1
  fi

  # Gate 3: Check domain agent verdict (if applicable)
  if [ -n "$domain_agent" ] && [ "$domain_agent" != "leo" ]; then
    local domain_key
    domain_key=$(echo "$domain_agent" | tr '[:lower:]' '[:upper:]')
    local domain_verdict
    domain_verdict=$(gh pr view "$pr_number" --json comments \
      --jq "[.comments[] | select(.body | test(\"VERDICT:${domain_key}:\")) | .body] | last" 2>/dev/null || echo "")

    if echo "$domain_verdict" | grep -q "VERDICT:${domain_key}:APPROVE"; then
      echo "Domain agent ($domain_agent): APPROVED"
    elif echo "$domain_verdict" | grep -q "VERDICT:${domain_key}:REQUEST_CHANGES"; then
      echo "BLOCK: $domain_agent requested changes"
      return 1
    else
      echo "BLOCK: No verdict marker found for $domain_agent"
      return 1
    fi
  else
    echo "Domain agent: N/A (leo-only or grand-strategy)"
  fi

  # Gate 4: Territory violations
  local violations
  violations=$(check_territory_violations "$pr_number")

  if [ -n "$violations" ]; then
    echo "BLOCK: Territory violations detected:"
    echo -e "$violations"
    return 1
  else
    echo "Territory: clean"
  fi

  return 0
}

REVIEWED=0
FAILED=0
MERGED=0

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

For each proposed claim, evaluate against these 11 quality criteria from CLAUDE.md:
1. Specificity — Is this specific enough to disagree with?
2. Evidence — Is there traceable evidence in the body?
3. Description quality — Does the description add info beyond the title?
4. Confidence calibration — Does the confidence level match the evidence?
5. Duplicate check — Does this already exist in the knowledge base?
6. Contradiction check — Does this contradict an existing claim? If so, is the contradiction explicit?
7. Value add — Does this genuinely expand what the knowledge base knows?
8. Wiki links — Do all [[links]] point to real files?
9. Scope qualification — Does the claim specify structural vs functional, micro vs macro, causal vs correlational?
10. Universal quantifier check — Does the title use unwarranted universals (all, always, never, the only)?
11. Counter-evidence acknowledgment — For likely or higher: is opposing evidence acknowledged?

Also check:
- Source archive updated correctly (status field)
- Commit messages follow conventions
- Files are in the correct domain directory
- Cross-domain connections that the proposer may have missed

Write your complete review to ${LEO_REVIEW_FILE}

CRITICAL — Verdict format: Your review MUST end with exactly one of these verdict markers (as an HTML comment on its own line):
  <!-- VERDICT:LEO:APPROVE -->
  <!-- VERDICT:LEO:REQUEST_CHANGES -->

Then post the review as an issue comment:
  gh pr comment ${pr} --body-file ${LEO_REVIEW_FILE}

IMPORTANT: Use 'gh pr comment' NOT 'gh pr review'. We use a shared GitHub account so gh pr review --approve fails.
DO NOT merge — the orchestrator handles merge decisions after all reviews are posted.
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
    AGENT_NAME_UPPER=$(echo "${DOMAIN_AGENT}" | awk '{print toupper(substr($0,1,1)) substr($0,2)}')
    AGENT_KEY_UPPER=$(echo "${DOMAIN_AGENT}" | tr '[:lower:]' '[:upper:]')
    DOMAIN_PROMPT="You are ${AGENT_NAME_UPPER}. Read agents/${DOMAIN_AGENT}/identity.md, agents/${DOMAIN_AGENT}/beliefs.md, and skills/evaluate.md.

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

CRITICAL — Verdict format: Your review MUST end with exactly one of these verdict markers (as an HTML comment on its own line):
  <!-- VERDICT:${AGENT_KEY_UPPER}:APPROVE -->
  <!-- VERDICT:${AGENT_KEY_UPPER}:REQUEST_CHANGES -->

Then post the review as an issue comment:
  gh pr comment ${pr} --body-file ${DOMAIN_REVIEW_FILE}

IMPORTANT: Use 'gh pr comment' NOT 'gh pr review'. We use a shared GitHub account so gh pr review --approve fails.
Sign your review as ${AGENT_NAME_UPPER} (domain reviewer for ${DOMAIN}).
DO NOT duplicate Leo's quality gate checks — he covers those.
DO NOT merge — the orchestrator handles merge decisions after all reviews are posted.
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

  # --- Auto-merge decision ---
  if [ "$NO_MERGE" = true ]; then
    echo "  Auto-merge: skipped (--no-merge)"
  elif [ "$LEO_PASSED" != "true" ]; then
    echo "  Auto-merge: skipped (Leo review failed)"
  else
    echo ""
    echo "  --- Merge eligibility check ---"
    MERGE_LOG=$(check_merge_eligible "$pr" "$DOMAIN_AGENT" "$LEO_PASSED")
    MERGE_RESULT=$?
    echo "$MERGE_LOG" | sed 's/^/    /'

    if [ "$MERGE_RESULT" -eq 0 ]; then
      echo "  Auto-merge: ALL GATES PASSED — merging PR #$pr"
      if gh pr merge "$pr" --squash 2>&1; then
        echo "  PR #$pr: MERGED successfully."
        MERGED=$((MERGED + 1))
      else
        echo "  PR #$pr: Merge FAILED. May need manual intervention."
      fi
    else
      echo "  Auto-merge: BLOCKED — see reasons above"
    fi
  fi

  echo "Finished: $(date)"
done

echo ""
echo "=== Summary ==="
echo "Reviewed: $REVIEWED"
echo "Failed: $FAILED"
echo "Merged: $MERGED"
echo "Logs: $LOG_DIR"
