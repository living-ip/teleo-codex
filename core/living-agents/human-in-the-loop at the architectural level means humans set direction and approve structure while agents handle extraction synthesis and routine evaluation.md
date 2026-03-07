---
type: claim
domain: living-agents
description: "The Teleo collective operates with a human (Cory) who directs strategy, approves architecture, and overrides when needed — while agents handle the volume work of extraction, synthesis, and routine review"
confidence: likely
source: "Teleo collective operational evidence — human directs all architectural decisions, OPSEC rules, agent team composition, while agents execute knowledge work"
created: 2026-03-07
---

# Human-in-the-loop at the architectural level means humans set direction and approve structure while agents handle extraction synthesis and routine evaluation

The Teleo collective is not an autonomous AI system. A human (Cory) sits at the top of the governance hierarchy, making decisions that agents cannot and should not make autonomously: strategic direction, team composition, OPSEC rules, architectural approvals, and override authority. Agents handle the volume work — extraction, synthesis, review, and routine operations — where AI capability exceeds human bandwidth.

## How it works today

The division of authority is:

**Human decides:**
- Strategic priorities (which sources to process, which domains to grow, what to build next)
- Team composition (which agents exist, what roles they fill, when to add or remove agents)
- OPSEC rules (no dollar amounts in public materials — established mid-session, immediately enforced across all agents)
- Architectural direction (cloud-primary vs local, Forgejo migration, multi-model diversity)
- Override on any agent decision (Cory can approve, reject, or redirect any PR, task, or plan)

**Agents decide (within human-set constraints):**
- Which claims to extract from assigned sources
- How to structure arguments and evidence in claim bodies
- Which wiki links to add, what confidence level to assign
- Review verdicts on each other's PRs (accept/reject/request changes)
- Cross-domain synthesis — which connections to propose
- Musing development — exploratory thinking within their domains

**Shared authority (agent proposes, human approves):**
- Architecture plans (Rhea and Ganymede design, Leo evaluates, Cory approves)
- New agent assignments (Leo recommends, Cory decides)
- Process changes (agents propose PR to CLAUDE.md or schemas, reviewed and merged through normal PR process, but Cory can override)

## Evidence from practice

- **OPSEC enforcement.** Cory established mid-session that no dollar amounts or valuations appear in public materials. This was immediately enforced — Rio scrubbed PR #43, Leo scrubbed PR #42 musings and position files. The rule cascaded to all agents within one session. No agent could have established this rule autonomously because it requires understanding the legal and strategic context of public disclosure.
- **Architecture direction.** Cory corrected Leo multiple times when Leo over-emphasized the Mac Studio as the platform. The definitive answer — cloud is primary, Mac Studio is Cory's terminal — required human knowledge about infrastructure plans, budget, and operational preferences that no agent had access to.
- **Team composition.** Cory added Venus, Saturn, Rhea, Oberon, Ganymede, and Mercury to the organization. Leo audited them and recommended gap-filling (platform connector, blockchain, orchestrator), but the hiring decisions are human.
- **Source routing.** Cory directs which sources to extract ("we need to rerun extraction on all historical tweets"). Agents don't autonomously decide to process the entire LivingIP v1 database — that directive came from human strategic judgment.

## What this doesn't do yet

- **No automated escalation.** When an agent encounters a decision that exceeds its authority (e.g., a claim that has OPSEC implications), there is no formal escalation mechanism. The agent either catches it or doesn't. Structured escalation rules would define triggers for human review beyond the standard PR process.
- **No permission tiers.** All agents have the same technical access to the repository. A domain agent could theoretically push to main or modify files outside their territory. Permission-based access control requires Forgejo (GitHub doesn't support the granularity needed).
- **Human bandwidth is the bottleneck.** Cory reviews agent output, directs strategy, and manages the organization. As the collective scales, this becomes unsustainable. The system needs to define which decisions can be fully delegated to agents and which always require human approval.

## Where this goes

The immediate improvement is defining explicit escalation triggers: OPSEC-relevant content, cross-territory modifications, architecture changes, and belief/position updates that affect public commitments all trigger human review.

The next step is permission tiers on Forgejo: domain agents can only write to their territory, Leo can write to `core/` and `foundations/`, architecture agents can write to infrastructure specs, and main branch protection requires human approval for merges that touch CLAUDE.md, schemas, or skills.

The ultimate form maintains human authority at the architectural level while delegating routine operations completely: agents run on VPS, ingest content, extract claims, review each other's work, and post to X — all autonomously within human-set constraints. The human reviews dashboards, approves structural changes, and intervenes when the system's behavior diverges from intent. The human never needs to read every PR, but always can.

---

Relevant Notes:
- [[adversarial PR review produces higher quality knowledge than self-review because separated proposer and evaluator roles catch errors that the originating agent cannot see]] — PR review is one of the mechanisms that operates within human-set constraints
- [[agents must evaluate the risk of outgoing communications and flag sensitive content for human review as the safety mechanism for autonomous public-facing AI]] — outgoing communications are a specific case where human-in-the-loop is safety-critical
- [[centaur teams succeed only when role boundaries prevent humans from overriding AI in domains where AI is the stronger partner]] — the Teleo model respects this by not having humans re-extract claims or re-review evidence that agents handle better

Topics:
- [[collective agents]]
