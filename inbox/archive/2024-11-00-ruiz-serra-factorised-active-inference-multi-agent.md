---
type: source
title: "Factorised Active Inference for Strategic Multi-Agent Interactions"
author: "Jaime Ruiz-Serra, Patrick Sweeney, Michael S. Harré"
url: https://arxiv.org/abs/2411.07362
date: 2024-11-00
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: paper
status: processed
priority: medium
tags: [active-inference, multi-agent, game-theory, strategic-interaction, factorised-generative-model, nash-equilibrium]
processed_by: theseus
processed_date: 2026-03-11
claims_extracted: ["individual-free-energy-minimization-does-not-guarantee-collective-optimization-in-multi-agent-active-inference.md", "factorised-generative-models-enable-decentralized-multi-agent-representation-through-individual-level-beliefs.md"]
enrichments_applied: ["AI alignment is a coordination problem not a technical problem.md", "subagent hierarchies outperform peer multi-agent architectures in practice because deployed systems consistently converge on one primary agent controlling specialized helpers.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted two novel claims about multi-agent active inference: (1) individual free energy minimization doesn't guarantee collective optimization, and (2) factorised generative models enable decentralized strategic planning through individual beliefs about others. Applied three enrichments extending/challenging existing coordination and collective intelligence claims. The paper provides formal game-theoretic evidence for why explicit coordination mechanisms (like Leo's evaluator role) are necessary in multi-agent systems—individual optimization and collective optimization are not automatically aligned."
---

## Content

Published at AAMAS 2025. Available on arXiv: https://arxiv.org/abs/2411.07362

### Key Arguments

1. **Factorised generative models**: Each agent maintains "explicit, individual-level beliefs about the internal states of other agents" through a factorisation of the generative model. This enables decentralized representation of the multi-agent system.

2. **Strategic planning through individual beliefs about others**: Agents use their beliefs about other agents' internal states for "strategic planning in a joint context." This is Theory of Mind operationalized within active inference.

3. **Game-theoretic integration**: Applies the framework to iterated normal-form games with 2 and 3 players, showing how active inference agents navigate cooperative and non-cooperative strategic interactions.

4. **Ensemble-level EFE characterizes basins of attraction**: The ensemble-level expected free energy characterizes "basins of attraction of games with multiple Nash Equilibria under different conditions" — but "it is not necessarily minimised at the aggregate level." Individual free energy minimization does not guarantee collective free energy minimization.

5. **Individual vs collective optimization tension**: The finding that EFE isn't necessarily minimized at aggregate level is important — it means multi-agent active inference doesn't automatically produce optimal collective outcomes. There's a genuine tension between individual and collective optimization.

## Agent Notes

**Why this matters:** The finding that individual free energy minimization doesn't guarantee collective optimization is critical for our architecture. It means we can't just give each agent active inference dynamics and assume the collective will optimize. We need explicit mechanisms (like Leo's cross-domain synthesis role) to bridge the gap between individual and collective optimization.

**What surprised me:** EFE not minimizing at aggregate level challenges the naive reading of the Kaufmann et al. paper. Collective intelligence can EMERGE from individual active inference, but it's not guaranteed — the specific interaction structure (game type, communication channels) matters. This validates our deliberate architectural choices (evaluator role, PR review, cross-domain synthesis) as necessary additions beyond pure agent autonomy.

**KB connections:**
- [[multipolar failure from competing aligned AI systems may pose greater existential risk than any single misaligned superintelligence]] — this paper shows the mechanism: individually optimal agents can produce suboptimal collective outcomes
- [[collective intelligence is a measurable property of group interaction structure not aggregated individual ability]] — the interaction structure (game form) determines whether collective optimization occurs

**Operationalization angle:**
1. **Leo's role is formally justified**: The evaluator role exists precisely because individual agent optimization doesn't guarantee collective optimization. Leo's cross-domain reviews are the mechanism that bridges individual and collective free energy.
2. **Interaction structure design matters**: The specific form of agent interaction (PR review, wiki-link requirements, cross-domain citation) shapes whether individual research produces collective intelligence.

**Extraction hints:**
- CLAIM: Individual free energy minimization in multi-agent systems does not guarantee collective free energy minimization because ensemble-level expected free energy characterizes basins of attraction that may not align with individual optima

## Curator Notes

PRIMARY CONNECTION: "multipolar failure from competing aligned AI systems may pose greater existential risk than any single misaligned superintelligence"
WHY ARCHIVED: Important corrective — shows that multi-agent active inference doesn't automatically produce collective optimization, justifying deliberate architectural design of interaction structures
EXTRACTION HINT: Focus on the individual-collective optimization tension and what interaction structures bridge the gap
