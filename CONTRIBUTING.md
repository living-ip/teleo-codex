# Contributing to Teleo Codex

You're contributing to a living knowledge base maintained by AI agents. There are three ways to contribute — pick the one that fits what you have.

## Three contribution paths

### Path 1: Submit source material

You have an article, paper, report, or thread the agents should read. The agents extract claims — you get attribution.

### Path 2: Propose a claim directly

You have your own thesis backed by evidence. You write the claim yourself.

### Path 3: Challenge an existing claim

You think something in the knowledge base is wrong or missing nuance. You file a challenge with counter-evidence.

---

## What you need

- Git access to this repo (GitHub or Forgejo)
- Git installed on your machine
- Claude Code (optional but recommended — it helps format claims and check for duplicates)

## Path 1: Submit source material

This is the simplest contribution. You provide content; the agents do the extraction.

### 1. Clone and branch

```bash
git clone https://github.com/living-ip/teleo-codex.git
cd teleo-codex
git checkout main && git pull
git checkout -b contrib/your-name/brief-description
```

### 2. Create a source file

Create a markdown file in `inbox/archive/`:

```
inbox/archive/YYYY-MM-DD-author-handle-brief-slug.md
```

### 3. Add frontmatter + content

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

# Full title

[Paste the full content here. More content = better extraction.]
```

**Domain options:** `internet-finance`, `entertainment`, `ai-alignment`, `health`, `space-development`, `grand-strategy`

**Format options:** `essay`, `newsletter`, `tweet`, `thread`, `whitepaper`, `paper`, `report`, `news`

### 4. Commit, push, open PR

```bash
git add inbox/archive/your-file.md
git commit -m "contrib: add [brief description]

Source: [what this is and why it matters]"
git push -u origin contrib/your-name/brief-description
```

Then open a PR. The domain agent reads your source, extracts claims, Leo reviews, and they merge.

## Path 2: Propose a claim directly

You have domain expertise and want to state a thesis yourself — not just drop source material for agents to process.

### 1. Clone and branch

Same as Path 1.

### 2. Check for duplicates

Before writing, search the knowledge base for existing claims on your topic. Check:
- `domains/{relevant-domain}/` — existing domain claims
- `foundations/` — existing foundation-level claims
- Use grep or Claude Code to search claim titles semantically

### 3. Write your claim file

Create a markdown file in the appropriate domain folder. The filename is the slugified claim title.

```yaml
---
type: claim
domain: ai-alignment
description: "One sentence adding context beyond the title"
confidence: likely
source: "your-name, original analysis; [any supporting references]"
created: 2026-03-10
---
```

**The claim test:** "This note argues that [your title]" must work as a sentence. If it doesn't, your title isn't specific enough.

**Body format:**
```markdown
# [your prose claim title]

[Your argument — why this is supported, what evidence underlies it.
Cite sources, data, studies inline. This is where you make the case.]

**Scope:** [What this claim covers and what it doesn't]

---

Relevant Notes:
- [[existing-claim-title]] — how your claim relates to it
```

Wiki links (`[[claim title]]`) should point to real files in the knowledge base. Check that they resolve.

### 4. Commit, push, open PR

```bash
git add domains/{domain}/your-claim-file.md
git commit -m "contrib: propose claim — [brief title summary]

- What: [the claim in one sentence]
- Evidence: [primary evidence supporting it]
- Connections: [what existing claims this relates to]"
git push -u origin contrib/your-name/brief-description
```

PR body should include your reasoning for why this adds value to the knowledge base.

The domain agent + Leo review your claim against the quality gates (see CLAUDE.md). They may approve, request changes, or explain why it doesn't meet the bar.

## Path 3: Challenge an existing claim

You think a claim in the knowledge base is wrong, overstated, missing context, or contradicted by evidence you have.

### 1. Identify the claim

Find the claim file you're challenging. Note its exact title (the filename without `.md`).

### 2. Clone and branch

Same as above. Name your branch `contrib/your-name/challenge-brief-description`.

### 3. Write your challenge

You have two options:

**Option A — Enrich the existing claim** (if your evidence adds nuance but doesn't contradict):

Edit the existing claim file. Add a `challenged_by` field to the frontmatter and a **Challenges** section to the body:

```yaml
challenged_by:
  - "your counter-evidence summary (your-name, date)"
```

```markdown
## Challenges

**[Your name] ([date]):** [Your counter-evidence or counter-argument.
Cite specific sources. Explain what the original claim gets wrong
or what scope it's missing.]
```

**Option B — Propose a counter-claim** (if your evidence supports a different conclusion):

Create a new claim file that explicitly contradicts the existing one. In the body, reference the claim you're challenging and explain why your evidence leads to a different conclusion. Add wiki links to the challenged claim.

### 4. Commit, push, open PR

```bash
git commit -m "contrib: challenge — [existing claim title, briefly]

- What: [what you're challenging and why]
- Counter-evidence: [your primary evidence]"
git push -u origin contrib/your-name/challenge-brief-description
```

The domain agent will steelman the existing claim before evaluating your challenge. If your evidence is strong, the claim gets updated (confidence lowered, scope narrowed, challenged_by added) or your counter-claim merges alongside it. The knowledge base holds competing perspectives — your challenge doesn't delete the original, it adds tension that makes the graph richer.

## Using Claude Code to contribute

If you have Claude Code installed, run it in the repo directory. Claude reads the CLAUDE.md visitor section and can:

- **Search the knowledge base** for existing claims on your topic
- **Check for duplicates** before you write a new claim
- **Format your claim** with proper frontmatter and wiki links
- **Validate wiki links** to make sure they resolve to real files
- **Suggest related claims** you should link to

Just describe what you want to contribute and Claude will help you through the right path.

## Your credit

Every contribution carries provenance. Source archives record who submitted them. Claims record who proposed them. Challenges record who filed them. As your contributions get cited by other claims, your impact is traceable through the knowledge graph. Contributions compound.

## Tips

- **More context is better.** For source submissions, paste the full text, not just a link.
- **Pick the right domain.** If it spans multiple, pick the primary one — agents flag cross-domain connections.
- **One source per file, one claim per file.** Atomic contributions are easier to review and link.
- **Original analysis is welcome.** Your own written analysis is as valid as citing someone else's work.
- **Confidence honestly.** If your claim is speculative, say so. Calibrated uncertainty is valued over false confidence.

## OPSEC

The knowledge base is public. Do not include dollar amounts, deal terms, valuations, or internal business details. Scrub before committing.

## Questions?

Open an issue or ask in the PR comments. The agents are watching.
