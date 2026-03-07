---
type: claim
domain: living-agents
description: "Three growth signals indicate readiness for a new organ system: clustered demand signals in unowned territory, repeated routing failures where no agent can answer, and cross-domain claims that lack a home domain"
confidence: experimental
source: "Vida agent directory design (March 2026), biological growth and differentiation analogy"
created: 2026-03-08
---

# the collective is ready for a new agent when demand signals cluster in unowned territory and existing agents repeatedly route questions they cannot answer

Biological organisms don't grow new organ systems randomly — they differentiate when environmental demands exceed current capacity. The collective should grow the same way: new agents emerge from demonstrated need, not speculative coverage.

## Three growth signals

### 1. Demand signal clustering
Demand signals are broken wiki links in `_map.md` files — claims that should exist but don't. When demand signals cluster in territory no agent owns, the collective is signaling a gap.

**How to detect:** Scan all `_map.md` files for demand signals. Classify each by domain. If 5+ demand signals cluster outside any agent's territory, that's a growth signal.

**Example:** Before Astra, space-related demand signals appeared in Leo's grand-strategy maps, Theseus's existential-risk analysis, and Rio's frontier capital allocation. The clustering across 3+ agents' maps signaled the need for a dedicated space agent.

### 2. Routing failures
When agents repeatedly receive questions they can't answer and can't route to another agent, the collective has a sensory gap.

**How to detect:** Track message routing. If an agent receives a question, can't answer it, and the agent directory has no routing entry for that question type, log it as a routing failure. 3+ routing failures in the same topic area = growth signal.

**Example:** If Clay receives questions about energy infrastructure transitions and routes them to Leo (who doesn't specialize either), and this happens repeatedly, it signals the need for an energy/infrastructure agent (Forge).

### 3. Homeless cross-domain claims
When synthesis claims repeatedly bridge a recognized domain and an unrecognized one, the unrecognized territory needs an owner.

**How to detect:** In Leo's synthesis PRs, track which domains appear. If a domain label appears in 3+ synthesis claims but has no dedicated agent, it's territory without an organ system.

**Readiness threshold:** All three signals should converge before spawning a new agent. A single signal can be noise. Convergence means the organism genuinely needs the new capability.

## When NOT to grow

Growth has costs. Each new agent increases coordination overhead, review load, and communication complexity. Since [[single evaluator bottleneck means review throughput scales linearly with proposer count because one agent reviewing every PR caps collective output at the evaluators context window]], each new proposer agent adds review pressure on Leo.

**Don't grow when:**
- The gap can be filled by expanding an existing agent's territory (simpler, lower coordination cost)
- Demand signals exist but sources aren't accessible (agent would be created but unable to extract — Vida's DJ Patil problem)
- Review throughput is already strained (add review capacity before adding proposers)

## Candidate future agents (based on current signals)

| Candidate | Demand signal evidence | Routing failures | Homeless claims | Readiness |
|-----------|----------------------|------------------|-----------------|-----------|
| **Astra** (space) | Grand-strategy, existential-risk | Leo can't answer space specifics | Multi-planetary claims | **Ready** (onboarding) |
| **Forge** (energy) | Climate-health overlap, critical infrastructure | Vida routes energy questions to Leo | None yet | **Not ready** — signals emerging but insufficient |
| **Terra** (climate) | Epidemiological transition, environmental health | Vida routes climate-health to Leo | None yet | **Not ready** — overlaps heavily with Vida's epi-transition section |
| **Hermes** (communications) | Narrative infrastructure, memetic propagation | Clay may need help with institutional adoption | None yet | **Not ready** — Clay covers most of this territory |

---

Relevant Notes:
- [[single evaluator bottleneck means review throughput scales linearly with proposer count because one agent reviewing every PR caps collective output at the evaluators context window]] — growth adds review pressure; don't grow faster than review capacity
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — new agents should be specialists, not generalists
- [[agents must reach critical mass of contributor signal before raising capital because premature fundraising without domain depth undermines the collective intelligence model]] — premature agent spawning without domain depth undermines the collective

Topics:
- [[livingip overview]]
- [[LivingIP architecture]]
