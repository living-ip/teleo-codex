# Skill: Coordinate

Structure inter-agent communication so information transfers without human routing.

## When to Use

- Discovering something relevant to another agent's domain
- Passing a working artifact (analysis, draft, data) to a collaborator
- Flagging a claim for cross-domain synthesis
- Handing off work that spans agent boundaries
- Starting or continuing a multi-agent collaboration

## Shared Workspace

Active collaboration artifacts live at `~/.pentagon/workspace/`:

```
workspace/
├── {agent1}-{agent2}/    # Bilateral collaboration dirs
├── collective/           # Cross-domain flags, synthesis queue
└── drafts/               # Pre-PR working documents
```

Use the workspace for artifacts that need iteration between agents. Use the knowledge base (repo) for finished work that passes quality gates.

## Cross-Domain Flag

When you find something in your domain relevant to another agent's domain.

### Format

Write to `~/.pentagon/workspace/collective/flag-{your-name}-{topic}.md`:

```markdown
## Cross-Domain Flag: [your name] → [target agent]
**Date**: [date]
**What I found**: [specific claim, evidence, or pattern]
**What it means for your domain**: [interpretation in their context]
**Recommended action**: extract | enrich | review | synthesize | none
**Relevant files**: [paths to claims, sources, or artifacts]
**Priority**: high | medium | low
```

### When to flag

- New evidence that strengthens or weakens a claim outside your domain
- A pattern in your domain that mirrors or contradicts a pattern in theirs
- A source that contains extractable claims for their territory
- A connection between your claims and theirs that nobody has made explicit

## Artifact Transfer

When passing a working document, analysis, or tool to another agent.

### Format

Write the artifact to `~/.pentagon/workspace/{your-name}-{their-name}/` with a companion context file:

```markdown
## Artifact: [name]
**From**: [your name]
**Date**: [date]
**Context**: [what this is and why it matters]
**How to use**: [what the receiving agent should do with it]
**Dependencies**: [what claims/beliefs this connects to]
**State**: draft | ready-for-review | final
```

The artifact itself is a separate file in the same directory. The context file tells the receiving agent what they're looking at and what to do with it.

### Key principle

Transfer the artifact AND the context. In the Claude's Cycles evidence, the orchestrator didn't just send Agent C's fiber tables to Agent O — the protocol told Agent O what to look for. An artifact without context is noise.

## Synthesis Request

When you notice a cross-domain pattern that needs Leo's synthesis attention.

### Format

Append to `~/.pentagon/workspace/collective/synthesis-queue.md`:

```markdown
### [date] — [your name]
**Pattern**: [what you noticed]
**Domains involved**: [which domains]
**Claims that connect**: [wiki links or file paths]
**Why this matters**: [what insight the synthesis would produce]
```

### Triggers

Flag for synthesis when:
- 10+ claims added to a domain since last synthesis
- A claim has been enriched 3+ times (it's load-bearing, check dependents)
- Two agents independently arrive at similar conclusions from different evidence
- A contradiction between domains hasn't been explicitly addressed

## PR Cross-Domain Tagging

When opening a PR that touches claims relevant to other agents' domains.

### Format

Add to PR description:

```markdown
## Cross-Domain Impact
- **[agent name]**: [what this PR means for their domain, what they should review]
```

This replaces ad-hoc "hey, look at this" messages with structured notification through the existing review flow.

## Handoff Protocol

When transferring ongoing work to another agent (e.g., handing off a research thread, passing a partially-complete analysis).

### Format

Write to `~/.pentagon/workspace/{your-name}-{their-name}/handoff-{topic}.md`:

```markdown
## Handoff: [your name] → [their name]
**Date**: [date]
**What I did**: [summary of work completed]
**What remains**: [specific next steps]
**Open questions**: [unresolved issues they should be aware of]
**Key files**: [paths to relevant claims, sources, artifacts]
**Context they'll need**: [background that isn't obvious from the files]
```

## Session Start Checklist

Add to your session startup:

1. Check `~/.pentagon/workspace/collective/` for new flags addressed to you
2. Check `~/.pentagon/workspace/{collaborator}-{your-name}/` for new artifacts
3. Check `~/.pentagon/workspace/collective/synthesis-queue.md` for patterns in your domain

## Quality Gate

- Every flag includes a recommended action (not just "FYI")
- Every artifact includes context (not just the file)
- Every synthesis request identifies specific claims that connect
- Every handoff includes open questions (not just completed work)
- Flags older than 5 sessions without action get triaged: act or archive
