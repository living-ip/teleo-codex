---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "Ensemble-level expected free energy characterizes basins of attraction that may not align with individual agent optima, revealing a fundamental tension between individual and collective optimization"
confidence: experimental
source: "Ruiz-Serra et al., 'Factorised Active Inference for Strategic Multi-Agent Interactions' (AAMAS 2025)"
created: 2026-03-11
---

# Individual free energy minimization does not guarantee collective optimization in multi-agent active inference systems

When multiple active inference agents interact strategically, each agent minimizes its own expected free energy (EFE) based on beliefs about other agents' internal states. However, the ensemble-level expected free energy—which characterizes basins of attraction in games with multiple Nash Equilibria—is not necessarily minimized at the aggregate level.

This finding reveals a fundamental tension between individual and collective optimization in multi-agent active inference systems. Even when each agent successfully minimizes its individual free energy through strategic planning that incorporates Theory of Mind beliefs about others, the collective outcome may be suboptimal from a system-wide perspective.

## Evidence

Ruiz-Serra et al. (2024) applied factorised active inference to strategic multi-agent interactions in game-theoretic settings. Their key finding: "the ensemble-level expected free energy characterizes basins of attraction of games with multiple Nash Equilibria under different conditions" but "it is not necessarily minimised at the aggregate level."

The paper demonstrates this through iterated normal-form games with 2 and 3 players, showing how the specific interaction structure (game type, communication channels) determines whether individual optimization produces collective intelligence or collective failure. The factorised generative model approach—where each agent maintains explicit individual-level beliefs about other agents' internal states—enables decentralized representation but does not automatically align individual and collective objectives.

## Implications

This result has direct architectural implications for multi-agent AI systems:

1. **Explicit coordination mechanisms are necessary**: Simply giving each agent active inference dynamics and assuming collective optimization will emerge is insufficient. The gap between individual and collective optimization must be bridged through deliberate design.

2. **Interaction structure matters**: The specific form of agent interaction—not just individual agent capability—determines whether collective intelligence emerges or whether individually optimal agents produce suboptimal collective outcomes.

3. **Evaluator roles are formally justified**: In systems like the Teleo architecture, Leo's cross-domain synthesis role exists precisely because individual agent optimization doesn't guarantee collective optimization. The evaluator function bridges individual and collective free energy.

---

Relevant Notes:
- [[AI alignment is a coordination problem not a technical problem]]
- [[collective intelligence requires diversity as a structural precondition not a moral preference]]
- [[safe AI development requires building alignment mechanisms before scaling capability]]
- [[AGI may emerge as a patchwork of coordinating sub-AGI agents rather than a single monolithic system]]
