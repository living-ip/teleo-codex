# Skill: Contribute to Teleo Codex

Ingest source material and extract claims for the shared knowledge base. This skill turns any Claude Code session into a Teleo contributor.

## Trigger

`/contribute` or when the user wants to add source material, extract claims, or propose knowledge to the Teleo Codex.

## Prerequisites

- You are running inside a clone of `living-ip/teleo-codex`
- `gh` CLI is authenticated with access to the repo
- User has collaborator access to the repo

## Overview

Teleo Codex is a living knowledge base maintained by AI agents and human contributors. You contribute by:
1. Archiving source material in `inbox/archive/`
2. Extracting claims to `domains/{domain}/`
3. Opening a PR for review by Leo (evaluator) and the domain agent

## Step 1: Orient

Read these files to understand the system:
- `CLAUDE.md` — operating rules, schemas, workflows
- `skills/extract.md` — extraction methodology
- `schemas/source.md` — source archive format
- `schemas/claim.md` — claim file format (if it exists)

Identify which domain the contribution targets:

| Domain | Territory | Agent |
|--------|-----------|-------|
| `internet-finance` | `domains/internet-finance/` | Rio |
| `entertainment` | `domains/entertainment/` | Clay |
| `ai-alignment` | `domains/ai-alignment/` | Theseus/Logos |
| `health` | `domains/health/` | Vida |
| `grand-strategy` | `core/grand-strategy/` | Leo |

## Step 2: Determine Input Type

Ask the user what they're contributing:

**A) URL** — Fetch the content, create source archive, extract claims.
**B) Text/report** — User pastes or provides content directly. Create source archive, extract claims.
**C) PDF** — User provides a file path. Read it, create source archive, extract claims.
**D) Existing source** — User points to an unprocessed file already in `inbox/archive/`. Extract claims from it.

## Step 3: Create Branch

```bash
git checkout main
git pull origin main
git checkout -b {domain-agent}/contrib-{user}-{brief-slug}
```

Use the domain agent's name as the branch prefix (e.g., `logos/contrib-alex-alignment-report`). This signals whose territory the claims enter.

## Step 4: Archive the Source

Create a file in `inbox/archive/` following this naming convention:
```
YYYY-MM-DD-{author-handle}-{brief-slug}.md
```

Frontmatter template:
```yaml
---
type: source
title: "Source title"
author: "Author Name"
url: https://original-url-if-exists
date: YYYY-MM-DD
domain: {domain}
format: essay | paper | report | thread | newsletter | whitepaper | news
status: unprocessed
tags: [tag1, tag2, tag3]
contributor: "{user's name}"
---
```

After the frontmatter, include the FULL content of the source. More content = better extraction.

## Step 5: Scan Existing Knowledge

Before extracting, check what already exists to avoid duplicates:

```bash
# List existing claims in the target domain
ls domains/{domain}/

# Read titles — each filename IS a claim
# Check for semantic overlap with what you're about to extract
```

Also scan:
- `foundations/` — domain-independent theory
- `core/` — shared worldview and axioms
- The domain agent's beliefs: `agents/{agent}/beliefs.md`

## Step 6: Extract Claims

Follow `skills/extract.md`. For each claim:

1. **Title IS the claim.** Must pass: "This note argues that [title]" works as a sentence.
   - Good: `OpenAI's shift to capped-profit created structural misalignment between safety mission and fiduciary obligations.md`
   - Bad: `OpenAI corporate structure.md`

2. **Frontmatter:**
```yaml
---
type: claim
domain: {domain}
description: "one sentence adding context beyond the title"
confidence: proven | likely | experimental | speculative
source: "{contributor name} — based on {source reference}"
created: YYYY-MM-DD
---
```

3. **Body:**
```markdown
# [claim title as prose]

[Argument — why this is supported, evidence]

[Inline evidence: cite sources, data, quotes directly in prose]

---

Relevant Notes:
- [[existing-claim-title]] — how it connects
- [[another-claim]] — relationship

Topics:
- [[domain-map]]
```

4. **File location:** `domains/{domain}/{slugified-title}.md`

5. **Quality gates (what reviewers check):**
   - Specific enough to disagree with
   - Traceable evidence in the body
   - Description adds info beyond the title
   - Confidence matches evidence strength
   - Not a duplicate of existing claim
   - Contradictions are explicit and argued
   - Genuinely expands the knowledge base
   - All `[[wiki links]]` point to real files

## Step 7: Update Source Archive

After extraction, update the source file:
```yaml
status: processed
processed_by: "{contributor name}"
processed_date: YYYY-MM-DD
claims_extracted:
  - "claim title 1"
  - "claim title 2"
enrichments:
  - "existing claim that was enriched"
```

## Step 8: Commit

```bash
git add domains/{domain}/*.md inbox/archive/*.md
git commit -m "{agent}/contrib-{user}: add N claims about {topic}

- What: [brief description of claims added]
- Why: [source material, why these matter]
- Connections: [what existing claims these relate to]

Contributor: {user's name}"
```

The `Contributor:` trailer is required for human contributions — it ensures attribution.

## Step 9: Push and Open PR

```bash
git push -u origin {branch-name}

gh pr create \
  --title "{agent}/contrib-{user}: {brief description}" \
  --body "## Source
{source title and link}

## Claims Proposed
{numbered list of claim titles}

## Why These Matter
{1-2 sentences on value add}

## Contributor
{user's name}

## Cross-Domain Flags
{any connections to other domains the reviewers should check}"
```

## Step 10: What Happens Next

Tell the user:

> Your PR is open. Two reviewers will evaluate it:
> 1. **Leo** — checks quality gates, cross-domain connections, overall coherence
> 2. **{Domain agent}** — checks domain expertise, duplicates within the domain, technical accuracy
>
> You'll see their feedback as PR comments on GitHub. If they request changes, update your branch and push — they'll re-review automatically.
>
> Your source archive records you as contributor. As claims derived from your work get cited by other claims, your contribution's impact grows through the knowledge graph.

## OPSEC

Before committing, verify:
- No dollar amounts, deal terms, or valuations
- No internal business details
- No private communications or confidential information
- When in doubt, ask the user before pushing

## Error Handling

- **Dirty working tree:** Stash or commit existing changes before starting
- **Branch conflict:** If the branch name exists, append a number or use a different slug
- **gh not authenticated:** Tell the user to run `gh auth login`
- **Merge conflicts on main:** `git pull --rebase origin main` before pushing
