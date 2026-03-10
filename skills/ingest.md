# Skill: Ingest

Research your domain, find source material, and archive it in inbox/. You choose whether to extract claims yourself or let the VPS handle it.

**Archive everything.** The inbox is a library, not a filter. If it's relevant to any Teleo domain, archive it. Null-result sources (no extractable claims) are still valuable — they prevent duplicate work and build domain context.

## Usage

```
/ingest                    # Research loop: pull tweets, find sources, archive with notes
/ingest @username          # Pull and archive a specific X account's content
/ingest url <url>          # Archive a paper, article, or thread from URL
/ingest scan               # Scan your network for new content since last pull
/ingest extract            # Extract claims from sources you've already archived (Track A)
```

## Two Tracks

### Track A: Agent-driven extraction (full control)

You research, archive, AND extract. You see exactly what you're proposing before it goes up.

1. Archive sources with `status: processing`
2. Extract claims yourself using `skills/extract.md`
3. Open a PR with both source archives and claim files
4. Eval pipeline reviews your claims

**Use when:** You're doing a deep dive on a specific topic, care about extraction quality, or want to control the narrative around new claims.

### Track B: VPS extraction (hands-off)

You research and archive. The VPS extracts headlessly.

1. Archive sources with `status: unprocessed`
2. Push source-only PR (merges fast — no claim changes)
3. VPS cron picks up unprocessed sources every 15 minutes
4. Extracts claims via Claude headless, opens a separate PR
5. Eval pipeline reviews the extraction

**Use when:** You're batch-archiving many sources, the content is straightforward, or you want to focus your session time on research rather than extraction.

### The switch is the status field

| Status | What happens |
|--------|-------------|
| `unprocessed` | VPS will extract (Track B) |
| `processing` | You're handling it (Track A) — VPS skips this source |
| `processed` | Already extracted — no further action |
| `null-result` | Reviewed, no claims — no further action |

You can mix tracks freely. Archive 10 sources as `unprocessed` for the VPS, then set 2 high-priority ones to `processing` and extract those yourself.

## Prerequisites

- API key at `~/.pentagon/secrets/twitterapi-io-key`
- Your network file at `~/.pentagon/workspace/collective/x-ingestion/{your-name}-network.json`
- Forgejo token at `~/.pentagon/secrets/forgejo-{your-name}-token`

## The Loop

### Step 1: Research

Find source material relevant to your domain. Sources include:
- **X/Twitter** — tweets, threads, debates from your network accounts
- **Papers** — academic papers, preprints, whitepapers
- **Articles** — blog posts, newsletters, news coverage
- **Reports** — industry reports, data releases, government filings
- **Conversations** — podcast transcripts, interview notes, voicenote transcripts

For X accounts, use `/x-research pull @{username}` to pull tweets, then scan for anything worth archiving. Don't just archive the "best" tweets — archive anything substantive. A thread arguing a wrong position is as valuable as one arguing a right one.

### Step 2: Archive with notes

For each source, create an archive file on your branch:

**Filename:** `inbox/archive/YYYY-MM-DD-{author-handle}-{brief-slug}.md`

```yaml
---
type: source
title: "Descriptive title of the content"
author: "Display Name (@handle)"
twitter_id: "numeric_id_from_author_object"  # X sources only
url: https://original-url
date: YYYY-MM-DD
domain: internet-finance | entertainment | ai-alignment | health | space-development | grand-strategy
secondary_domains: [other-domain]  # if cross-domain
format: tweet | thread | essay | paper | whitepaper | report | newsletter | news | transcript
status: unprocessed | processing    # unprocessed = VPS extracts; processing = you extract
priority: high | medium | low
tags: [topic1, topic2]
flagged_for_rio: ["reason"]  # if relevant to another agent's domain
---
```

**Body:** Include the full source text, then your research notes.

```markdown
## Content

[Full text of tweet/thread/article. For long papers, include abstract + key sections.]

## Agent Notes

**Why this matters:** [1-2 sentences — what makes this worth archiving]

**KB connections:** [Which existing claims does this relate to, support, or challenge?]

**Extraction hints:** [What claims might the extractor pull from this? Flag specific passages.]

**Context:** [Anything the extractor needs to know — who the author is, what debate this is part of, etc.]
```

The "Agent Notes" section is critical for Track B. The VPS extractor is good at mechanical extraction but lacks your domain context. Your notes guide it. For Track A, you still benefit from writing notes — they organize your thinking before extraction.

### Step 3: Extract claims (Track A only)

If you set `status: processing`, follow `skills/extract.md`:

1. Read the source completely
2. Separate evidence from interpretation
3. Extract candidate claims (specific, disagreeable, evidence-backed)
4. Check for duplicates against existing KB
5. Write claim files to `domains/{your-domain}/`
6. Update source: `status: processed`, `processed_by`, `processed_date`, `claims_extracted`

### Step 4: Cross-domain flagging

When you find sources outside your domain:
- Archive them anyway (you're already reading them)
- Set the `domain` field to the correct domain, not yours
- Add `flagged_for_{agent}: ["brief reason"]` to frontmatter
- Set `priority: high` if it's urgent or challenges existing claims

### Step 5: Branch, commit, push

```bash
# Branch
git checkout -b {your-name}/sources-{date}-{brief-slug}

# Stage — sources only (Track B) or sources + claims (Track A)
git add inbox/archive/*.md
git add domains/{your-domain}/*.md  # Track A only

# Commit
git commit -m "{your-name}: archive {N} sources — {brief description}

- What: {N} sources from {list of authors/accounts}
- Domains: {which domains these cover}
- Track: A (agent-extracted) | B (VPS extraction pending)

Pentagon-Agent: {Name} <{UUID}>"

# Push
FORGEJO_TOKEN=$(cat ~/.pentagon/secrets/forgejo-{your-name}-token)
git push -u https://{your-name}:${FORGEJO_TOKEN}@git.livingip.xyz/teleo/teleo-codex.git {branch-name}
```

Open a PR:
```bash
curl -s -X POST "https://git.livingip.xyz/api/v1/repos/teleo/teleo-codex/pulls" \
  -H "Authorization: token ${FORGEJO_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{
    "title": "{your-name}: {archive N sources | extract N claims} — {brief description}",
    "body": "## Sources\n{numbered list with titles and domains}\n\n## Claims (Track A only)\n{claim titles}\n\n## Track B sources (VPS extraction pending)\n{list of unprocessed sources}",
    "base": "main",
    "head": "{branch-name}"
  }'
```

## Network Management

Your network file (`{your-name}-network.json`) lists X accounts to monitor:

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
- `core` — Pull every session. High signal-to-noise.
- `extended` — Pull weekly or when specifically relevant.
- `watch` — Pull once to evaluate, then promote or drop.

Agents without a network file should create one as their first task. Start with 5-10 seed accounts.

## Quality Controls

- **Archive everything substantive.** Don't self-censor. The extractor decides what yields claims.
- **Write good notes.** Your domain context is the difference between a useful source and a pile of text.
- **Check for duplicates.** Don't re-archive sources already in `inbox/archive/`.
- **Flag cross-domain.** If you see something relevant to another agent, flag it — don't assume they'll find it.
- **Log API costs.** Every X pull gets logged to `~/.pentagon/workspace/collective/x-ingestion/pull-log.jsonl`.
- **Source diversity.** If you're archiving 10+ items from one account in a batch, note it — the extractor should be aware of monoculture risk.
