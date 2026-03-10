#!/bin/bash
# Run a self-directed research session for one agent.
# Usage: ./research-session.sh <agent-name>
# Example: ./research-session.sh clay
#
# What it does:
#   1. Pulls latest tweets from the agent's network accounts (X API)
#   2. Gives Claude the agent's identity, beliefs, and current KB state
#   3. Agent picks a research direction and archives sources with notes
#   4. Commits source archives to a branch, pushes, opens PR
#   5. Extract cron picks up the unprocessed sources separately
#
# The researcher never extracts — a separate Claude instance does that.
# This prevents motivated reasoning in extraction.

set -euo pipefail

AGENT="${1:?Usage: $0 <agent-name>}"
REPO_DIR="/opt/teleo-eval/workspaces/research-${AGENT}"
FORGEJO_URL="http://localhost:3000"
FORGEJO_ADMIN_TOKEN=$(cat /opt/teleo-eval/secrets/forgejo-admin-token)
AGENT_TOKEN=$(cat "/opt/teleo-eval/secrets/forgejo-${AGENT}-token" 2>/dev/null || echo "$FORGEJO_ADMIN_TOKEN")
TWITTER_API_KEY=$(cat /opt/teleo-eval/secrets/twitterapi-io-key)
CLAUDE_BIN="/home/teleo/.local/bin/claude"
LOG_DIR="/opt/teleo-eval/logs"
LOG="$LOG_DIR/research-${AGENT}.log"
LOCKFILE="/tmp/research-${AGENT}.lock"
DATE=$(date +%Y-%m-%d)
BRANCH="${AGENT}/research-${DATE}"
RAW_DIR="/opt/teleo-eval/research-raw/${AGENT}"

log() { echo "[$(date -Iseconds)] $*" >> "$LOG"; }

# --- Lock (prevent concurrent sessions for same agent) ---
if [ -f "$LOCKFILE" ]; then
    pid=$(cat "$LOCKFILE" 2>/dev/null)
    if kill -0 "$pid" 2>/dev/null; then
        log "SKIP: research session already running for $AGENT (pid $pid)"
        exit 0
    fi
    log "WARN: stale lockfile for $AGENT, removing"
    rm -f "$LOCKFILE"
fi
echo $$ > "$LOCKFILE"
trap 'rm -f "$LOCKFILE"' EXIT

log "=== Starting research session for $AGENT ==="

# --- Ensure directories ---
mkdir -p "$RAW_DIR" "$LOG_DIR"

# --- Clone or update repo ---
if [ ! -d "$REPO_DIR/.git" ]; then
    log "Cloning repo for $AGENT research..."
    git -c http.extraHeader="Authorization: token $FORGEJO_ADMIN_TOKEN" \
        clone "${FORGEJO_URL}/teleo/teleo-codex.git" "$REPO_DIR" >> "$LOG" 2>&1
fi

cd "$REPO_DIR"
git config credential.helper "!f() { echo username=m3taversal; echo password=$FORGEJO_ADMIN_TOKEN; }; f"
git remote set-url origin "${FORGEJO_URL}/teleo/teleo-codex.git" 2>/dev/null || true
git checkout main >> "$LOG" 2>&1
git pull --rebase >> "$LOG" 2>&1

# --- Map agent to domain ---
case "$AGENT" in
    rio) DOMAIN="internet-finance" ;;
    clay) DOMAIN="entertainment" ;;
    theseus) DOMAIN="ai-alignment" ;;
    vida) DOMAIN="health" ;;
    astra) DOMAIN="space-development" ;;
    leo) DOMAIN="grand-strategy" ;;
    *) log "ERROR: Unknown agent $AGENT"; exit 1 ;;
esac

# --- Pull tweets from agent's network ---
# Check if agent has a network file in the repo
NETWORK_FILE="agents/${AGENT}/network.json"
if [ ! -f "$NETWORK_FILE" ]; then
    log "No network file at $NETWORK_FILE — agent will use KB context to decide what to research"
    TWEET_DATA=""
else
    log "Pulling tweets from ${AGENT}'s network..."
    ACCOUNTS=$(python3 -c "
import json
with open('$NETWORK_FILE') as f:
    data = json.load(f)
for acct in data.get('accounts', []):
    if acct.get('tier') in ('core', 'extended'):
        print(acct['username'])
" 2>/dev/null || true)

    TWEET_DATA=""
    for USERNAME in $ACCOUNTS; do
        OUTFILE="$RAW_DIR/${USERNAME}.json"
        # Only pull if file doesn't exist or is older than 12 hours
        if [ ! -f "$OUTFILE" ] || [ $(find "$OUTFILE" -mmin +720 2>/dev/null | wc -l) -gt 0 ]; then
            log "Pulling @${USERNAME}..."
            curl -s "https://api.twitterapi.io/twitter/user/last_tweets?userName=${USERNAME}" \
                -H "X-API-Key: ${TWITTER_API_KEY}" \
                -o "$OUTFILE" 2>/dev/null || {
                log "WARN: Failed to pull @${USERNAME}"
                continue
            }
            sleep 2  # Rate limit courtesy
        fi
        if [ -f "$OUTFILE" ]; then
            TWEET_DATA="${TWEET_DATA}
--- @${USERNAME} tweets ---
$(python3 -c "
import json, sys
try:
    d = json.load(open('$OUTFILE'))
    tweets = d.get('tweets', d.get('data', []))
    for t in tweets[:20]:
        text = t.get('text', '')[:500]
        likes = t.get('likeCount', t.get('public_metrics', {}).get('like_count', 0))
        date = t.get('createdAt', t.get('created_at', 'unknown'))
        url = t.get('twitterUrl', t.get('url', ''))
        print(f'[{date}] ({likes} likes) {text}')
        print(f'  URL: {url}')
        print()
except Exception as e:
    print(f'Error reading: {e}', file=sys.stderr)
" 2>/dev/null || echo "(failed to parse)")"
        fi
    done
fi

# --- Also check for any raw JSON dumps in inbox-raw ---
INBOX_RAW="/opt/teleo-eval/inbox-raw/${AGENT}"
if [ -d "$INBOX_RAW" ] && ls "$INBOX_RAW"/*.json 2>/dev/null | head -1 > /dev/null; then
    log "Found raw dumps in $INBOX_RAW"
    for RAWFILE in "$INBOX_RAW"/*.json; do
        USERNAME=$(basename "$RAWFILE" .json)
        TWEET_DATA="${TWEET_DATA}
--- @${USERNAME} tweets (from raw dump) ---
$(python3 -c "
import json, sys
try:
    d = json.load(open('$RAWFILE'))
    tweets = d.get('tweets', d.get('data', []))
    for t in tweets[:20]:
        text = t.get('text', '')[:500]
        likes = t.get('likeCount', t.get('public_metrics', {}).get('like_count', 0))
        date = t.get('createdAt', t.get('created_at', 'unknown'))
        url = t.get('twitterUrl', t.get('url', ''))
        print(f'[{date}] ({likes} likes) {text}')
        print(f'  URL: {url}')
        print()
except Exception as e:
    print(f'Error: {e}', file=sys.stderr)
" 2>/dev/null || echo "(failed to parse)")"
    done
fi

# --- Create branch ---
git branch -D "$BRANCH" 2>/dev/null || true
git checkout -b "$BRANCH" >> "$LOG" 2>&1
log "On branch $BRANCH"

# --- Build the research prompt ---
# Write tweet data to a temp file so Claude can read it
TWEET_FILE="/tmp/research-tweets-${AGENT}.md"
echo "$TWEET_DATA" > "$TWEET_FILE"

RESEARCH_PROMPT="You are ${AGENT}, a Teleo knowledge base agent. Domain: ${DOMAIN}.

## Your Task: Self-Directed Research Session

You have ~90 minutes of compute. Use it wisely.

### Step 1: Orient (5 min)
Read these files to understand your current state:
- agents/${AGENT}/identity.md (who you are)
- agents/${AGENT}/beliefs.md (what you believe)
- agents/${AGENT}/reasoning.md (how you think)
- domains/${DOMAIN}/_map.md (your domain's current claims)

### Step 2: Review Recent Tweets (10 min)
Read ${TWEET_FILE} — these are recent tweets from accounts in your domain.
Scan for anything substantive: new claims, evidence, debates, data, counterarguments.

### Step 3: Check Previous Follow-ups (2 min)
Read agents/${AGENT}/musings/ — look for any previous research-*.md files. If they exist, check the 'Follow-up Directions' section at the bottom. These are threads your past self flagged but didn't have time to cover. Give them priority when picking your direction.

### Step 4: Pick ONE Research Question (5 min)
Pick ONE research question — not one topic, but one question that naturally spans multiple accounts and sources. 'How is capital flowing through Solana launchpads?' is one question even though it touches MetaDAO, SOAR, Futardio.

**Direction selection priority** (active inference — pursue surprise, not confirmation):
1. Follow-up ACTIVE THREADS from previous sessions (your past self flagged these)
2. Claims rated 'experimental' or areas where the KB flags live tensions — highest uncertainty = highest learning value
3. Evidence that CHALLENGES your beliefs, not confirms them
4. Cross-domain connections flagged by other agents
5. New developments that change the landscape

Also read agents/${AGENT}/research-journal.md if it exists — this is your cross-session pattern tracker.

Write a brief note explaining your choice to: agents/${AGENT}/musings/research-${DATE}.md

### Step 5: Archive Sources (60 min)
For each relevant tweet/thread, create an archive file:

Path: inbox/archive/YYYY-MM-DD-{author-handle}-{brief-slug}.md

Use this frontmatter:
---
type: source
title: \"Descriptive title\"
author: \"Display Name (@handle)\"
url: https://original-url
date: YYYY-MM-DD
domain: ${DOMAIN}
secondary_domains: []
format: tweet | thread
status: unprocessed
priority: high | medium | low
tags: [topic1, topic2]
---

## Content
[Full text of tweet/thread]

## Agent Notes
**Why this matters:** [1-2 sentences]
**What surprised me:** [Anything unexpected — the extractor needs this to avoid confirming your priors]
**What I expected but didn't find:** [Gaps or missing evidence you noticed]
**KB connections:** [Which existing claims relate?]
**Extraction hints:** [What claims might an extractor pull?]
**Context:** [Who is the author, what debate is this part of?]

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [exact claim title this source most relates to]
WHY ARCHIVED: [what pattern or tension this evidences]
EXTRACTION HINT: [what the extractor should focus on — scopes attention]

### Step 5 Rules:
- Archive EVERYTHING substantive, not just what supports your views
- Set all sources to status: unprocessed (a DIFFERENT instance will extract)
- Flag cross-domain sources with flagged_for_{agent}: [\"reason\"]
- Do NOT extract claims yourself — write good notes so the extractor can
- Check inbox/archive/ for duplicates before creating new archives
- Aim for 5-15 source archives per session

### Step 6: Flag Follow-up Directions (5 min)
At the bottom of your research musing (agents/${AGENT}/musings/research-${DATE}.md), add a section:

## Follow-up Directions

Three categories — be specific, not vague:

### Active Threads (continue next session)
- [Thread]: [What to do next, what you'd look for]

### Dead Ends (don't re-run these)
- [What you searched for]: [Why it was empty — saves future you from wasting time]

### Branching Points (one finding opened multiple directions)
- [Finding]: [Direction A vs Direction B — which to pursue first and why]

### Step 7: Update Research Journal (3 min)
Append to agents/${AGENT}/research-journal.md (create if it doesn't exist). This is your cross-session memory — NOT the same as the musing.

Format:
## Session ${DATE}
**Question:** [your research question]
**Key finding:** [most important thing you learned]
**Pattern update:** [did this session confirm, challenge, or extend a pattern you've been tracking?]
**Confidence shift:** [did any of your beliefs get stronger or weaker?]

The journal accumulates session over session. After 5+ sessions, review it for cross-session patterns — when independent sources keep converging on the same observation, that's a claim candidate.

### Step 8: Commit and Push (5 min)
Stage your archives and musing, commit with:
  ${AGENT}: research session ${DATE} — {brief description of direction}

  Pentagon-Agent: $(echo ${AGENT} | sed 's/./\U&/') <HEADLESS>

Then stop. Do not open a PR — the script handles that."

# --- Run Claude research session ---
log "Starting Claude research session..."
timeout 5400 "$CLAUDE_BIN" -p "$RESEARCH_PROMPT" \
    --allowedTools 'Read,Write,Edit,Glob,Grep,Bash' \
    --model sonnet \
    --permission-mode bypassPermissions \
    >> "$LOG" 2>&1 || {
    log "WARN: Research session failed or timed out for $AGENT"
    git checkout main >> "$LOG" 2>&1
    exit 1
}

log "Claude session complete"

# --- Check for changes ---
CHANGED_FILES=$(git status --porcelain)
if [ -z "$CHANGED_FILES" ]; then
    log "No sources archived by $AGENT"
    git checkout main >> "$LOG" 2>&1
    exit 0
fi

# --- Stage and commit if Claude didn't already ---
if ! git log --oneline -1 | grep -q "research session"; then
    # Claude didn't commit — do it manually
    git add inbox/archive/ agents/${AGENT}/musings/ agents/${AGENT}/research-journal.md 2>/dev/null || true

    if git diff --cached --quiet; then
        log "No valid changes to commit"
        git checkout main >> "$LOG" 2>&1
        exit 0
    fi

    AGENT_UPPER=$(echo "$AGENT" | sed 's/./\U&/')
    SOURCE_COUNT=$(git diff --cached --name-only | grep -c "^inbox/archive/" || echo "0")
    git commit -m "${AGENT}: research session ${DATE} — ${SOURCE_COUNT} sources archived

Pentagon-Agent: ${AGENT_UPPER} <HEADLESS>" >> "$LOG" 2>&1
fi

# --- Push ---
git push -u origin "$BRANCH" --force >> "$LOG" 2>&1
log "Pushed $BRANCH"

# --- Open PR ---
PR_JSON=$(python3 -c "
import json
data = {
    'title': '${AGENT}: research session ${DATE}',
    'body': '## Self-Directed Research\\n\\nAutomated research session for ${AGENT} (${DOMAIN}).\\n\\nSources archived with status: unprocessed — extract cron will handle claim extraction separately.\\n\\nResearcher and extractor are different Claude instances to prevent motivated reasoning.',
    'base': 'main',
    'head': '${BRANCH}'
}
print(json.dumps(data))
")

PR_RESULT=$(curl -s -X POST "${FORGEJO_URL}/api/v1/repos/teleo/teleo-codex/pulls" \
    -H "Authorization: token $AGENT_TOKEN" \
    -H "Content-Type: application/json" \
    -d "$PR_JSON" 2>&1)

PR_NUMBER=$(echo "$PR_RESULT" | python3 -c "import sys,json; print(json.load(sys.stdin).get('number','unknown'))" 2>/dev/null || echo "unknown")
log "PR #${PR_NUMBER} opened for ${AGENT}'s research session"

# --- Back to main ---
git checkout main >> "$LOG" 2>&1
log "=== Research session complete for $AGENT ==="
