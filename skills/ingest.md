# Skill: Ingest

Pull tweets from your domain network, triage for signal, archive sources, extract claims, and open a PR. This is the full ingestion loop — from raw X data to knowledge base contribution.

## Usage

```
/ingest                    # Run full loop: pull → triage → archive → extract → PR
/ingest pull-only          # Just pull fresh tweets, don't extract yet
/ingest from-cache         # Skip pulling, extract from already-cached tweets
/ingest @username          # Ingest a specific account (pull + extract)
```

## Prerequisites

- API key at `~/.pentagon/secrets/twitterapi-io-key`
- Your network file at `~/.pentagon/workspace/collective/x-ingestion/{your-name}-network.json`
- Forgejo token at `~/.pentagon/secrets/forgejo-{your-name}-token`

## The Loop

### Step 1: Pull fresh tweets

For each account in your network file (or the specified account):

1. **Check cache** — read `~/.pentagon/workspace/collective/x-ingestion/raw/{username}.json`. If `pulled_at` is <24h old, skip.
2. **Pull** — use `/x-research pull @{username}` or the API directly:
   ```bash
   API_KEY=$(cat ~/.pentagon/secrets/twitterapi-io-key)
   curl -s -H "X-API-Key: $API_KEY" \
     "https://api.twitterapi.io/twitter/user/last_tweets?userName={username}&count=100"
   ```
3. **Save** to `~/.pentagon/workspace/collective/x-ingestion/raw/{username}.json`
4. **Log** the pull to `~/.pentagon/workspace/collective/x-ingestion/pull-log.jsonl`

Rate limit: 2-second delay between accounts. Start with core tier accounts, then extended.

### Step 2: Triage for signal

Not every tweet is worth extracting. For each account's tweets, scan for:

**High signal (extract):**
- Original analysis or arguments (not just links or reactions)
- Threads with evidence chains
- Data, statistics, study citations
- Novel claims that challenge or extend KB knowledge
- Cross-domain connections

**Low signal (skip):**
- Pure engagement farming ("gm", memes, one-liners)
- Retweets without commentary
- Personal updates unrelated to domain
- Duplicate arguments already in the KB

For each high-signal tweet or thread, note:
- Username, tweet URL, date
- Why it's high signal (1 sentence)
- Which domain it maps to
- Whether it's a new claim, counter-evidence, or enrichment to existing claims

### Step 3: Archive sources

For each high-signal item, create a source archive file on your branch:

**Filename:** `inbox/archive/YYYY-MM-DD-{username}-{brief-slug}.md`

```yaml
---
type: source
title: "Brief description of the tweet/thread"
author: "Display Name (@username)"
twitter_id: "numeric_id_from_author_object"
url: https://x.com/{username}/status/{tweet_id}
date: YYYY-MM-DD
domain: {primary-domain}
format: tweet | thread
status: processing
tags: [relevant, topics]
---
```

**Body:** Include the full tweet text (or thread text concatenated). For threads, preserve the order and note which tweets are replies to which.

### Step 4: Extract claims

Follow `skills/extract.md` for each archived source:

1. Read the source completely
2. Separate evidence from interpretation
3. Extract candidate claims (specific, disagreeable, evidence-backed)
4. Check for duplicates against existing KB
5. Classify by domain
6. Identify enrichments to existing claims

Write claim files to `domains/{your-domain}/` with proper frontmatter.

After extraction, update the source archive:
```yaml
status: processed
processed_by: {your-name}
processed_date: YYYY-MM-DD
claims_extracted:
  - "claim title 1"
  - "claim title 2"
enrichments:
  - "existing claim that was enriched"
```

### Step 5: Branch, commit, PR

```bash
# Branch
git checkout -b {your-name}/ingest-{date}-{brief-slug}

# Stage
git add inbox/archive/*.md domains/{your-domain}/*.md

# Commit
git commit -m "{your-name}: ingest {N} claims from {source description}

- What: {N} claims from {M} tweets/threads by {accounts}
- Why: {brief rationale — what KB gap this fills}
- Connections: {key links to existing claims}

Pentagon-Agent: {Name} <{UUID}>"

# Push
FORGEJO_TOKEN=$(cat ~/.pentagon/secrets/forgejo-{your-name}-token)
git push -u https://{your-name}:${FORGEJO_TOKEN}@git.livingip.xyz/teleo/teleo-codex.git {branch-name}
```

Then open a PR on Forgejo:
```bash
curl -s -X POST "https://git.livingip.xyz/api/v1/repos/teleo/teleo-codex/pulls" \
  -H "Authorization: token ${FORGEJO_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{
    "title": "{your-name}: ingest {N} claims — {brief description}",
    "body": "## Source\n{tweet URLs and account names}\n\n## Claims\n{numbered list of claim titles}\n\n## Why\n{what KB gap this fills, connections to existing claims}\n\n## Enrichments\n{any existing claims updated with new evidence}",
    "base": "main",
    "head": "{branch-name}"
  }'
```

The eval pipeline handles review and auto-merge from here.

## Batch Ingestion

When running the full loop across your network:

1. Pull all accounts (Step 1)
2. Triage across all pulled tweets (Step 2) — batch the triage so you can see patterns
3. Group high-signal items by topic, not by account
4. Create one PR per topic cluster (3-8 claims per PR is ideal)
5. Don't create mega-PRs with 20+ claims — they're harder to review

## Cross-Domain Routing

If you find high-signal content outside your domain during triage:
- Archive the source in `inbox/archive/` with `status: unprocessed`
- Add `flagged_for_{agent}: ["brief reason"]` to the frontmatter
- Message the relevant agent: "New source archived for your domain: {filename}"
- Don't extract claims outside your territory — let the domain agent do it

## Quality Controls

- **Source diversity:** If you're extracting 5+ claims from one account in one batch, flag it. Monoculture risk.
- **Freshness:** Don't re-extract tweets that are already archived. Check `inbox/archive/` first.
- **Signal ratio:** Aim for ≥50% of triaged tweets yielding at least one claim. If your ratio is lower, raise your triage bar.
- **Cost tracking:** Log every API call. The pull log tracks spend across agents.

## Network Management

Your network file (`{your-name}-network.json`) lists accounts to monitor. Update it as you discover new high-signal accounts in your domain:

```json
{
  "agent": "your-name",
  "domain": "your-domain",
  "accounts": [
    {"username": "example", "tier": "core", "why": "Reason this account matters"},
    {"username": "example2", "tier": "extended", "why": "Secondary but useful"}
  ]
}
```

**Tiers:**
- `core` — Pull every ingestion cycle. High signal-to-noise ratio.
- `extended` — Pull weekly or when specifically relevant.
- `watch` — Discovered but not yet confirmed as useful. Pull once to evaluate.

Agents without a network file yet should create one as their first ingestion task. Start with 5-10 seed accounts, pull them, evaluate signal quality, then expand.
