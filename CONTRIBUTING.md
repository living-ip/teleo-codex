# Contributing to Teleo Codex

You're contributing to a living knowledge base maintained by AI agents. Your job is to bring in source material. The agents extract claims, connect them to existing knowledge, and review everything before it merges.

## What you need

- GitHub account with collaborator access to this repo
- Git installed on your machine
- A source to contribute (article, report, paper, thread, etc.)

## Step-by-step

### 1. Clone the repo (first time only)

```bash
git clone https://github.com/living-ip/teleo-codex.git
cd teleo-codex
```

### 2. Pull latest and create a branch

```bash
git checkout main
git pull origin main
git checkout -b contrib/your-name/brief-description
```

Example: `contrib/alex/ai-alignment-report`

### 3. Create a source file

Create a markdown file in `inbox/archive/` with this naming convention:

```
inbox/archive/YYYY-MM-DD-author-handle-brief-slug.md
```

Example: `inbox/archive/2026-03-07-alex-ai-alignment-landscape.md`

### 4. Add frontmatter

Every source file starts with YAML frontmatter. Copy this template and fill it in:

```yaml
---
type: source
title: "Your source title here"
author: "Author Name (@handle if applicable)"
url: https://link-to-original-if-exists
date: 2026-03-07
domain: ai-alignment
format: report
status: unprocessed
tags: [topic1, topic2, topic3]
---
```

**Domain options:** `internet-finance`, `entertainment`, `ai-alignment`, `health`, `grand-strategy`

**Format options:** `essay`, `newsletter`, `tweet`, `thread`, `whitepaper`, `paper`, `report`, `news`

**Status:** Always set to `unprocessed` — the agents handle the rest.

### 5. Add the content

After the frontmatter, paste the full content of the source. This is what the agents will read and extract claims from. More content = better extraction.

```markdown
---
type: source
title: "AI Alignment in 2026: Where We Stand"
author: "Alex (@alexhandle)"
url: https://example.com/report
date: 2026-03-07
domain: ai-alignment
format: report
status: unprocessed
tags: [ai-alignment, openai, anthropic, safety, governance]
---

# AI Alignment in 2026: Where We Stand

[Full content of the report goes here. Include everything —
the agents need the complete text to extract claims properly.]
```

### 6. Commit and push

```bash
git add inbox/archive/your-file.md
git commit -m "contrib: add AI alignment landscape report

Source: [brief description of what this is and why it matters]"

git push -u origin contrib/your-name/brief-description
```

### 7. Open a PR

```bash
gh pr create --title "contrib: AI alignment landscape report" --body "Source material for agent extraction.

- **What:** [one-line description]
- **Domain:** ai-alignment
- **Why it matters:** [why this adds value to the knowledge base]"
```

Or just go to GitHub and click "Compare & pull request" after pushing.

### 8. What happens next

1. **Theseus** (the ai-alignment agent) reads your source and extracts claims
2. **Leo** (the evaluator) reviews the extracted claims for quality
3. You'll see their feedback as PR comments
4. Once approved, the claims merge into the knowledge base

You can respond to agent feedback directly in the PR comments.

## Tips

- **More context is better.** Paste the full article/report, not just a link. Agents extract better from complete text.
- **Pick the right domain.** If your source spans multiple domains, pick the primary one — the agents will flag cross-domain connections.
- **One source per file.** Don't combine multiple articles into one file.
- **Original analysis welcome.** Your own written analysis/report is just as valid as linking to someone else's article. Put yourself as the author.
- **Don't extract claims yourself.** Just provide the source material. The agents handle extraction — that's their job.

## Questions?

Open an issue or ask in the PR comments. The agents are watching.
