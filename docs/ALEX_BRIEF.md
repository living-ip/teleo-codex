# Brief for Alex — Teleo Codex: What We're Building This Week

## The Big Picture

Teleo Codex is a living knowledge base where AI agents and humans build shared intelligence together. It currently has 342+ claims across 4 domains (internet-finance, entertainment, ai-alignment, health), maintained by 5 AI agents. Claims are arguable assertions backed by evidence — not notes, not summaries, but specific positions the system can reason about.

This week we're making three moves to scale it from a single-player system into a multiplayer one.

## What We Proved Today

We ran the full autonomous pipeline end-to-end for the first time:

1. **Crawl4AI** fetches a URL and converts it to clean markdown
2. **Headless Theseus** (AI agent, no human in the loop) reads the source, extracts claims, opens a PR
3. **Headless Leo** (evaluator agent) reviews the PR, catches quality issues, posts feedback on GitHub

PR #47 is the proof: Byron Reese's superorganism article → 3 extracted claims → Leo reviewed and requested changes on 2 of them. No human touched anything between URL and review.

## Three Moves This Week

### 1. Automated Ingestion
Saturn (pipeline agent) builds a daemon that discovers content (RSS feeds, X API, manual URL drops), fetches it via Crawl4AI, and writes source archive files. Right now Cory manually provides URLs. After this, content flows in automatically.

### 2. Headless Evaluation
The `evaluate-trigger.sh` script finds open PRs without reviews and runs headless Leo on each one. Cron it, and every PR gets reviewed within an hour of opening. Cory just scans Leo's review comments and clicks merge. We proved this works today.

### 3. Multiplayer — You're Here

This is where you come in. The system is ready for multiple human contributors. GitHub handles identity, attribution, and review. You push content, agents process it.

## Your Role: Proposer for AI Alignment

You'll work in Logos's domain (`domains/ai-alignment/`). Logos (formerly Theseus) is the AI alignment agent — his mission is ensuring superintelligence amplifies humanity rather than replacing it. His core thesis: alignment is a coordination problem, not a technical problem.

> Note: You may see references to "Theseus" in older files — that's the same agent, renamed to Logos. Both `agents/theseus/` and `agents/logos/` exist during the transition.

You have two modes of contribution:

### Mode A: Drop Source Material (easiest)

You bring in a source (report, article, paper). Agents extract claims from it.

```bash
git checkout main && git pull
git checkout -b contrib/alex/ai-alignment-report

# Create source file
# See inbox/archive/ for examples of the format
```

File goes in `inbox/archive/YYYY-MM-DD-author-brief-slug.md` with this frontmatter:

```yaml
---
type: source
title: "Your report title"
author: "Alex"
url: https://link-if-exists
date: 2026-03-07
domain: ai-alignment
format: report
status: unprocessed
tags: [ai-alignment, openai, anthropic, safety]
---

# Full content goes here

Paste the complete text. More content = better extraction.
```

Push, open PR. Theseus extracts claims, Leo reviews.

### Mode B: Propose Claims Directly (more involved)

You read sources yourself, extract claims, and write claim files. This is what the agents do — you'd be doing it as a human proposer operating in Theseus's territory.

Branch naming: `logos/your-brief-description`

**Important: human contributor attribution.** Add a `Contributor:` trailer to your commit messages so your claims don't look agent-authored:

```
git commit -m "logos: add 3 claims on OAI structural misalignment

Contributor: Alex
- What: [brief description]
- Why: [why these matter]"
```

Each claim is a markdown file in `domains/ai-alignment/`:

```yaml
---
type: claim
domain: ai-alignment
description: "one sentence adding context beyond the title"
confidence: proven | likely | experimental | speculative
source: "Alex — based on [source reference]"
created: 2026-03-07
---
```

**The title IS the claim.** Filename = slugified title. The title must pass this test: "This note argues that [title]" works as a sentence.

Good: `OpenAI's shift from nonprofit to capped-profit created structural misalignment between stated safety mission and fiduciary obligations.md`

Bad: `OpenAI corporate structure.md`

**Body format:**

```markdown
# OpenAI's shift from nonprofit to capped-profit created structural misalignment between stated safety mission and fiduciary obligations

[Your argument — why this is supported, what evidence underlies it]

[Cite sources, data, quotes directly in the prose]

---

Relevant Notes:
- [[the alignment tax creates a structural race to the bottom]] — how this connects
- [[another existing claim]] — how it relates

Topics:
- [[ai-alignment domain]]
```

**Quality bar (what Leo checks):**
1. Specific enough to disagree with
2. Traceable evidence in the body
3. Description adds info beyond the title
4. Confidence matches evidence strength
5. Not a duplicate of an existing claim
6. Contradictions with existing claims are explicit
7. Genuinely expands the knowledge base
8. All `[[wiki links]]` point to real files

Push, open PR. Leo reviews. You'll see his feedback as PR comments — he's thorough and specific. Address his feedback on the same branch and push updates.

## What Logos Already Knows

Before writing claims, scan existing knowledge to avoid duplicates and find connections:

- `domains/ai-alignment/` — existing claims in the domain
- `foundations/` — domain-independent theory (complexity, emergence, collective intelligence)
- `core/` — shared worldview and axioms
- `agents/logos/identity.md` — Logos's full worldview and current objectives
- `agents/logos/beliefs.md` — his active belief set

Key existing claims to be aware of:
- Arrow's impossibility theorem applies to preference aggregation → monolithic alignment is structurally insufficient
- Scalable oversight degrades at capability gaps
- Alignment is a coordination problem, not a technical problem
- Collective superintelligence is the only path that preserves human agency
- The alignment tax creates a race to the bottom
- AI is collapsing knowledge-producing communities (self-undermining loop)

Your report on what's happening with OAI and Anthropic is exactly the kind of real-world evidence that grounds these theoretical claims. The system needs current developments connected to existing theory.

## OPSEC Rules

The knowledge base is public. Before merging anything:
- **No dollar amounts, deal terms, or valuations** in any content
- **No internal business details** — investment specifics, partnership terms, revenue numbers
- If your report references funding amounts or investment details, scrub them before committing
- When in doubt, ask Cory before pushing

These rules are in CLAUDE.md. Agents enforce them too, but you're the first line of defense for your own content.

## Quick Start

```bash
# Clone (first time only)
git clone https://github.com/living-ip/teleo-codex.git
cd teleo-codex

# Read the operating manual
cat CLAUDE.md

# See what claims already exist in ai-alignment
ls domains/ai-alignment/

# See Logos's identity and beliefs
cat agents/logos/identity.md
cat agents/logos/beliefs.md

# Create your branch and start contributing
git checkout -b logos/alex-alignment-report
```

## The Experience We're Building Toward

A contributor should feel: "This system understands what I know, shows me how it connects to what others know, and makes my contribution matter more over time."

Right now that experience is: push a PR, get agent feedback, see your claims woven into the graph. As we build out the frontend (graph visualization, agent activity feed, contributor profiles), your contributions become visible nodes in a living knowledge network.

Welcome to Teleo.
