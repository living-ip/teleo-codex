#!/bin/bash
# Extract claims from unprocessed sources in inbox/archive/
# Runs via cron on VPS every 15 minutes.
#
# Concurrency model:
#   - Lockfile prevents overlapping runs
#   - MAX_SOURCES=5 per cycle (works through backlog over multiple runs)
#   - Sequential processing (one source at a time)
#   - 50 sources landing at once = ~10 cron cycles to clear, not 50 parallel agents
#
# Domain routing:
#   - Reads domain: field from source frontmatter
#   - Maps to the domain agent (rio, clay, theseus, vida, astra, leo)
#   - Runs extraction AS that agent — their territory, their extraction
#   - Skips sources with status: processing (agent handling it themselves)
#
# Flow:
#   1. Pull latest main
#   2. Find sources with status: unprocessed (skip processing/processed/null-result)
#   3. For each: run Claude headless to extract claims as the domain agent
#   4. Commit extractions, push, open PR
#   5. Update source status to processed
#
# The eval pipeline (webhook.py) handles review and merge separately.

set -euo pipefail

REPO_DIR="/opt/teleo-eval/workspaces/extract"
REPO_URL="http://m3taversal:$(cat /opt/teleo-eval/secrets/forgejo-admin-token)@localhost:3000/teleo/teleo-codex.git"
CLAUDE_BIN="/home/teleo/.local/bin/claude"
LOG_DIR="/opt/teleo-eval/logs"
LOG="$LOG_DIR/extract-cron.log"
LOCKFILE="/tmp/extract-cron.lock"
MAX_SOURCES=5  # Process at most 5 sources per run to limit cost

log() { echo "[$(date -Iseconds)] $*" >> "$LOG"; }

# --- Lock ---
if [ -f "$LOCKFILE" ]; then
    pid=$(cat "$LOCKFILE" 2>/dev/null)
    if kill -0 "$pid" 2>/dev/null; then
        log "SKIP: already running (pid $pid)"
        exit 0
    fi
    log "WARN: stale lockfile, removing"
    rm -f "$LOCKFILE"
fi
echo $$ > "$LOCKFILE"
trap 'rm -f "$LOCKFILE"' EXIT

# --- Ensure repo clone ---
if [ ! -d "$REPO_DIR/.git" ]; then
    log "Cloning repo..."
    git clone "$REPO_URL" "$REPO_DIR" >> "$LOG" 2>&1
fi

cd "$REPO_DIR"

# --- Pull latest main ---
git checkout main >> "$LOG" 2>&1
git pull --rebase >> "$LOG" 2>&1

# --- Find unprocessed sources ---
UNPROCESSED=$(grep -rl '^status: unprocessed' inbox/archive/ 2>/dev/null | head -n "$MAX_SOURCES" || true)

if [ -z "$UNPROCESSED" ]; then
    log "No unprocessed sources found"
    exit 0
fi

COUNT=$(echo "$UNPROCESSED" | wc -l | tr -d ' ')
log "Found $COUNT unprocessed source(s)"

# --- Process each source ---
for SOURCE_FILE in $UNPROCESSED; do
    SLUG=$(basename "$SOURCE_FILE" .md)
    BRANCH="extract/$SLUG"

    log "Processing: $SOURCE_FILE → branch $BRANCH"

    # Create branch from main
    git checkout main >> "$LOG" 2>&1
    git branch -D "$BRANCH" 2>/dev/null || true
    git checkout -b "$BRANCH" >> "$LOG" 2>&1

    # Read domain from frontmatter
    DOMAIN=$(grep '^domain:' "$SOURCE_FILE" | head -1 | sed 's/domain: *//' | tr -d '"' | tr -d "'" | xargs)

    # Map domain to agent
    case "$DOMAIN" in
        internet-finance) AGENT="rio" ;;
        entertainment) AGENT="clay" ;;
        ai-alignment) AGENT="theseus" ;;
        health) AGENT="vida" ;;
        space-development) AGENT="astra" ;;
        *) AGENT="leo" ;;
    esac

    AGENT_TOKEN=$(cat "/opt/teleo-eval/secrets/forgejo-${AGENT}-token" 2>/dev/null || cat /opt/teleo-eval/secrets/forgejo-leo-token)

    log "Domain: $DOMAIN, Agent: $AGENT"

    # Run Claude headless to extract claims
    EXTRACT_PROMPT="You are $AGENT, a Teleo knowledge base agent. Extract claims from this source.

READ these files first:
- skills/extract.md (extraction process)
- schemas/claim.md (claim format)
- $SOURCE_FILE (the source to extract from)

Then scan domains/$DOMAIN/ to check for duplicate claims.

EXTRACT claims following the process in skills/extract.md:
1. Read the source completely
2. Separate evidence from interpretation
3. Extract candidate claims (specific, disagreeable, evidence-backed)
4. Check for duplicates against existing claims in domains/$DOMAIN/
5. Write claim files to domains/$DOMAIN/ with proper YAML frontmatter
6. Update $SOURCE_FILE: set status to 'processed', add processed_by: $AGENT, processed_date: $(date +%Y-%m-%d), and claims_extracted list

If no claims can be extracted, update $SOURCE_FILE: set status to 'null-result' and add notes explaining why.

IMPORTANT: Use the Edit tool to update the source file status. Use the Write tool to create new claim files. Do not create claims that duplicate existing ones."

    # Run extraction with timeout (10 minutes)
    timeout 600 "$CLAUDE_BIN" -p "$EXTRACT_PROMPT" \
        --allowedTools 'Read,Write,Edit,Glob,Grep' \
        --model sonnet \
        >> "$LOG" 2>&1 || {
        log "WARN: Claude extraction failed or timed out for $SOURCE_FILE"
        git checkout main >> "$LOG" 2>&1
        continue
    }

    # Check if any files were created/modified
    CHANGES=$(git status --porcelain | wc -l | tr -d ' ')
    if [ "$CHANGES" -eq 0 ]; then
        log "No changes produced for $SOURCE_FILE"
        git checkout main >> "$LOG" 2>&1
        continue
    fi

    # Stage and commit
    git add inbox/archive/ "domains/$DOMAIN/" >> "$LOG" 2>&1
    git commit -m "$AGENT: extract claims from $(basename "$SOURCE_FILE")

- Source: $SOURCE_FILE
- Domain: $DOMAIN
- Extracted by: headless extraction cron

Pentagon-Agent: $(echo "$AGENT" | sed 's/./\U&/') <HEADLESS>" >> "$LOG" 2>&1

    # Push branch
    git push -u "$REPO_URL" "$BRANCH" --force >> "$LOG" 2>&1

    # Open PR
    PR_TITLE="$AGENT: extract claims from $(basename "$SOURCE_FILE" .md)"
    PR_BODY="## Automated Extraction\n\nSource: \`$SOURCE_FILE\`\nDomain: $DOMAIN\nExtracted by: headless cron on VPS\n\nThis PR was created automatically by the extraction cron job. Claims were extracted using \`skills/extract.md\` process via Claude headless."

    curl -s -X POST "http://localhost:3000/api/v1/repos/teleo/teleo-codex/pulls" \
        -H "Authorization: token $AGENT_TOKEN" \
        -H "Content-Type: application/json" \
        -d "{
            \"title\": \"$PR_TITLE\",
            \"body\": \"$PR_BODY\",
            \"base\": \"main\",
            \"head\": \"$BRANCH\"
        }" >> "$LOG" 2>&1

    log "PR opened for $SOURCE_FILE"

    # Back to main for next source
    git checkout main >> "$LOG" 2>&1

    # Brief pause between extractions
    sleep 5
done

log "Extraction run complete: processed $COUNT source(s)"
