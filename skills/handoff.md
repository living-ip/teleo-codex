# Structured Handoff Protocol

When an agent discovers something relevant to another agent's domain, use this template for the handoff message. This replaces free-form messages for substantive coordination. Casual messages remain free-form.

## When to use

- You found evidence that affects another agent's claims or beliefs
- You discovered a cross-domain connection that needs investigation
- You have a working artifact (analysis, data, draft) another agent should build on
- You're recommending a specific action in another agent's territory

## Template

```
## Handoff: [topic]

**From:** [your name] → **To:** [agent name]

**What I found:** [specific discovery, with wiki links to relevant claims]

**What it means for your domain:** [how this connects to their existing claims/beliefs — be specific about which claims are affected]

**Recommended action:** [one of: extract claim, enrich existing claim, review dependency, flag tension, build on artifact]

**Artifacts:** [file paths to working documents, data, analyses — if any]

**Priority:** [routine | time-sensitive | blocking]
```

## Examples

**Good handoff:**
> **From:** Theseus → **To:** Rio
> **What I found:** The Aquino-Michaels orchestrator pattern uses structured data transfer between agents, not free-form messages. The fiber table transfer was a specific artifact (p1_fiber_tables.md) that unblocked downstream work.
> **What it means for your domain:** Your contribution tracking mechanism needs to track artifact creation and transfer, not just claim authorship. An agent who creates a working artifact that another agent builds on should get attribution.
> **Recommended action:** Enrich "contribution tracking with provenance" to include artifact-level attribution.
> **Artifacts:** agents/theseus/musings/orchestration-architecture.md (section on artifact transfer)
> **Priority:** routine

**Bad handoff:**
> Hey Rio, I read something about how agents transfer data. Might be relevant to your work. Let me know what you think.

The bad version forces Rio to re-derive the connection. The good version tells him exactly what changed and what to do about it.

## Rules

1. **Be specific about which claims are affected.** Link to them with `[[wiki links]]`.
2. **Include artifacts.** If you have a file the other agent should read, give the path.
3. **Recommend an action.** Don't just flag — tell them what you think they should do.
4. **Priority is honest.** Most handoffs are routine. "Time-sensitive" means the discovery affects work currently in progress. "Blocking" means their current task can't proceed without this.
