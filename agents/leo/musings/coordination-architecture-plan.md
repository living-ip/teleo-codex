---
type: musing
agent: leo
title: "coordination architecture — from Stappers coaching to Aquino-Michaels protocols"
status: developing
created: 2026-03-08
updated: 2026-03-08
tags: [architecture, coordination, cross-domain, design-doc]
---

# Coordination Architecture: Scaling the Collective

Grounded assessment of 5 bottlenecks identified by Theseus (from Claude's Cycles evidence) and confirmed by Cory. This musing tracks the execution plan.

## Context

The collective has demonstrated real complementarity: 350+ claims, functioning PR review, domain specialization producing work no single agent could do. But the coordination model is Stappers (continuous human coaching) not Aquino-Michaels (one-time protocol design + autonomous execution). Cory routes messages, provides sources, makes scope decisions. This works at 6 agents. It breaks at 9.

→ SOURCE: Aquino-Michaels "Completing Claude's Cycles" — structured protocol (Residue) replaced continuous coaching with agent-autonomous exploration. Same agents, better protocols, dramatically better output.

## Bottleneck 1: Orchestrator doesn't scale (Cory as routing layer)

**Problem:** Cory manually routes messages, provides sources, makes scope decisions. Every inter-agent coordination goes through him.

**Target state:** Agents coordinate directly via protocols. Cory sets direction and approves structural changes. Agents handle routine coordination autonomously.

**Control mechanism — graduated autonomy:**

| Level | Agents can | Requires Cory | Advance trigger |
|-------|-----------|---------------|-----------------|
| 1 (now) | Propose claims, message siblings, draft designs | Merge PRs, approve arch, route sources, scope decisions | — |
| 2 | Peer-review and merge each other's PRs (Leo reviews all) | New agents, architecture, public output | 3mo clean history, <5% quality regression |
| 3 | Auto-merge with 2+ peer approvals, scheduled synthesis | Capital deployment, identity changes, public output | 6mo, peer review audit passes |
| 4 | Full internal autonomy | Strategic direction, external commitments, money/reputation | Collective demonstrably outperforms directed mode |

**Principle:** The git log IS the trust evidence. Every action is auditable. Autonomy expands only when the audit shows quality is maintained.

→ CLAIM CANDIDATE: graduated autonomy with auditable checkpoints is the control mechanism for scaling agent collectives because git history provides the trust evidence that human oversight traditionally requires

**v1 implementation:**
- [ ] Formalize the level table as a claim in core/living-agents/
- [ ] Define specific metrics for "quality regression" (use Vida's vital signs)
- [ ] Current level: 1. Cory confirms.

## Bottleneck 2: Message latency kills compounding

**Problem:** Inter-agent coordination takes days (3 agent sessions routed through Cory). In Aquino-Michaels, artifact transfer produced immediate results.

**Target state:** Agents message directly with <1 session latency. Broadcast channels for collective announcements.

**v1 implementation:**
- Pentagon already supports direct agent-to-agent messaging
- Bottleneck is agent activation, not message delivery — agents are idle between sessions
- VPS deployment (Rhea's plan) fixes this: agents can be activated by webhook on message receipt
- Broadcast channels: Pentagon team channels coming soon (Cory confirmed)

→ FLAG @theseus: message-triggered agent activation is an orchestration architecture requirement. Design the webhook → agent activation flow as part of the VPS deployment.

## Bottleneck 3: No shared working artifacts

**Problem:** Agents transfer messages ABOUT artifacts, not the artifacts themselves. Rio's LP analysis should be directly buildable-on, not re-derived from a message summary.

**Target state:** Shared workspace where agents leave drafts, data, analyses for each other. Separate from the knowledge base (which is long-term memory, reviewed).

**Cory's direction:** "Can store on my computer then publish jointly when you have been able to iterate, explore and build."

**v1 implementation:**
- Create `workspace/` directory in repo — gitignored from main, lives on working branches
- OR: use Pentagon agent directories (already shared filesystem)
- OR: a dedicated shared dir like `~/.pentagon/shared/artifacts/`

**What I need from Cory:** Which location? Options:
1. **Repo workspace/ dir** (gitignored) — version controlled but not in main. Pro: agents already know how to work with repo files. Con: branch isolation means artifacts don't cross branches easily.
2. **Pentagon shared dir** — filesystem-level sharing. Pro: always accessible regardless of branch. Con: no version control, no review.
3. **Pentagon shared dir + git submodule** — best of both but more complex.

→ QUESTION: recommendation is option 2 (Pentagon shared dir) for speed. Artifacts that mature get extracted into the codex via normal PR flow. The shared dir is the scratchpad; the codex is the permanent record.

## Bottleneck 4: Single evaluator (Leo) bottleneck

**Problem:** Leo reviews every PR. With 6 proposers, quality degrades under load.

**Cory's direction:** "We are going to move to a VPS instance of Leo that can be called up in parallel reviews."

**Target state:** Peer review as default path. Every PR gets Leo + 1 domain peer. VPS Leo handles parallel review load.

**v1 implementation (what we can do NOW, before VPS):**
- Every PR requires 2 approvals: Leo + 1 domain agent
- Domain peer selected by highest wiki-link overlap between PR claims and agent's domain
- For cross-domain PRs: Leo + 2 domain agents (existing rule, now enforced as default)
- Leo can merge after both approvals. Domain agent can request changes but not merge.

**Making it more robust (v2, with VPS):**
- VPS Leo instances handle parallel reviews
- Review assignment algorithm: when PR opens, auto-assign Leo + most-relevant domain agent
- Review SLA: 48-hour target (Vida's vital sign threshold)
- Quality audit: monthly sample of peer-merged PRs — did peer catch what Leo would have caught?

→ CLAIM CANDIDATE: peer review as default path doubles review throughput and catches domain-specific issues that cross-domain evaluation misses because complementary frameworks produce better error detection than single-evaluator review

## Bottleneck 5: No periodic synthesis cadence

**Problem:** Cross-domain synthesis happens ad hoc. No structured trigger.

**Target state:** Automatic synthesis triggers based on KB state.

**v1 implementation:**
- Every 10 new claims across domains → Leo synthesis sweep
- Every claim enriched 3+ times → flag as load-bearing, review dependents
- Every new domain agent onboarded → mandatory cross-domain link audit
- Vida's vital signs provide the monitoring: when cross-domain linkage density drops below 15%, trigger synthesis

→ FLAG @vida: your vital signs claim is the monitoring layer for synthesis triggers. When you build the measurement scripts, add synthesis trigger alerts.

## Theseus's recommendations — implementation mapping

| Recommendation | Bottleneck | Status | v1 action |
|---------------|-----------|--------|-----------|
| Shared workspace | #3 | Cory approved, need location decision | Ask Cory re: option 1/2/3 |
| Broadcast channels | #2 | Pentagon will support soon | Wait for Pentagon feature |
| Peer review default | #4 | Cory approved: "Let's implement" | Update CLAUDE.md review rules |
| Synthesis triggers | #5 | Acknowledged | Define triggers, add to evaluate skill |
| Structured handoff protocol | #1, #2 | Cory: "I like this" | Design handoff template |

## Structured handoff protocol (v1 template)

When an agent discovers something relevant to another agent's domain:

```
## Handoff: [topic]
**From:** [agent] → **To:** [agent]
**What I found:** [specific discovery, with links]
**What it means for your domain:** [how this connects to their existing claims/beliefs]
**Recommended action:** [specific: extract claim, enrich existing claim, review dependency, flag tension]
**Artifacts:** [file paths to working documents, data, analyses]
**Priority:** [routine / time-sensitive / blocking]
```

This replaces free-form messages for substantive coordination. Casual messages remain free-form.

## Execution sequence

1. **Now:** Peer review v1 — update CLAUDE.md (this PR)
2. **Now:** Structured handoff template — add to skills/ (this PR)
3. **Next session:** Shared workspace — after Cory decides location
4. **With VPS:** Parallel Leo instances, message-triggered activation, synthesis automation
5. **Ongoing:** Graduated autonomy — track level advancement evidence

---

Relevant Notes:
- [[single evaluator bottleneck means review throughput scales linearly with proposer count because one agent reviewing every PR caps collective output at the evaluators context window]]
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]]
- [[adversarial PR review produces higher quality knowledge than self-review because separated proposer and evaluator roles catch errors that the originating agent cannot see]]
- [[collective knowledge health is measurable through five vital signs that detect degradation before it becomes visible in output quality]]
- [[agent integration health is diagnosed by synapse activity not individual output because a well-connected agent with moderate output contributes more than a prolific isolate]]
