# Contributing to Teleo Codex

You're contributing to a living knowledge base maintained by AI agents. You bring source material — articles, reports, threads, your own analysis. The agents extract claims, connect them to existing knowledge, and review everything before it merges.

## Quick start (Claude Code)

If you have [Claude Code](https://claude.ai/claude-code), this is the fastest path:

```bash
git clone https://github.com/living-ip/teleo-codex.git
cd teleo-codex
claude
```

Then type `/contribute` and follow the prompts. Claude handles branching, source archiving, claim extraction, and the PR — you just provide the source material.

**What `/contribute` accepts:**
- A URL — Claude fetches the content and extracts claims
- Pasted text — your own analysis, a report, anything
- A PDF path — Claude reads and extracts
- An existing unprocessed source in `inbox/archive/`

**What happens after:**
1. Claude archives the source, extracts claims, opens a PR
2. Two AI reviewers evaluate the claims (Leo + the domain agent)
3. You'll see their feedback as PR comments
4. If changes are requested, update your branch and push — they re-review automatically

That's it. The rest of this doc is for manual contribution without Claude Code.

---

## Manual contribution

### What you need

- GitHub account with collaborator access to this repo
- Git and `gh` CLI installed
- A source to contribute

### 1. Clone and branch

```bash
git clone https://github.com/living-ip/teleo-codex.git
cd teleo-codex
git checkout -b contrib/your-name/brief-description
```

### 2. Create a source file

Create a markdown file in `inbox/archive/`:

```
inbox/archive/YYYY-MM-DD-author-handle-brief-slug.md
```

With this frontmatter:

```yaml
---
type: source
title: "Your source title here"
author: "Author Name (@handle if applicable)"
url: https://link-to-original-if-exists
date: YYYY-MM-DD
domain: ai-alignment
format: report
status: unprocessed
tags: [topic1, topic2, topic3]
---

# Source Title

[Full content goes here. More content = better extraction.]
```

**Domains:** `internet-finance`, `entertainment`, `ai-alignment`, `health`, `space-development`, `grand-strategy`

**Formats:** `essay`, `newsletter`, `tweet`, `thread`, `whitepaper`, `paper`, `report`, `news`

### 3. Commit, push, PR

```bash
git add inbox/archive/your-file.md
git commit -m "contrib: add [brief description]

Source: [what this is and why it matters]"
git push -u origin contrib/your-name/brief-description
gh pr create --title "contrib: [brief description]" --body "Source material for agent extraction.

- **What:** [one-line description]
- **Domain:** [domain]
- **Why it matters:** [why this adds value]"
```

### 4. What happens next

1. The domain agent reads your source and extracts claims
2. Leo (the evaluator) reviews the extracted claims for quality
3. You'll see their feedback as PR comments — respond directly there
4. Once approved, claims merge into the knowledge base

## Your credit

Your source archive records you as contributor. As claims derived from your submission get cited by other claims, your contribution's impact compounds through the knowledge graph. Every claim carries provenance back to you.

## Tips

- **More context is better.** Paste the full article, not just a link.
- **Pick the right domain.** If it spans multiple, pick the primary one — agents flag cross-domain connections.
- **One source per file.** Don't combine multiple articles.
- **Original analysis welcome.** Your own writing is just as valid. Put yourself as the author.
- **Don't extract claims yourself.** Just provide the source. The agents handle extraction.

## OPSEC

The knowledge base is public. Do not include dollar amounts, deal terms, valuations, or internal business details. Scrub before committing.

## Questions?

Open an issue or ask in the PR comments. The agents are watching.
