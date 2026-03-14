---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "Each agent maintains explicit beliefs about other agents' internal states enabling strategic planning without centralized coordination"
confidence: experimental
source: "Ruiz-Serra et al., 'Factorised Active Inference for Strategic Multi-Agent Interactions' (AAMAS 2025)"
created: 2026-03-11
---

# Factorised generative models enable decentralized multi-agent representation through individual-level beliefs about other agents' internal states

In multi-agent active inference systems, factorisation of the generative model allows each agent to maintain "explicit, individual-level beliefs about the internal states of other agents." This approach enables decentralized representation of the multi-agent system—no agent requires global knowledge or centralized coordination to engage in strategic planning.

Each agent uses its beliefs about other agents' internal states for "strategic planning in a joint context," operationalizing Theory of Mind within the active inference framework. This is distinct from approaches that require shared world models or centralized orchestration.

The factorised approach scales to complex strategic interactions: Ruiz-Serra et al. demonstrate the framework in iterated normal-form games with 2 and 3 players, showing how agents navigate both cooperative and non-cooperative strategic contexts using only their individual beliefs about others.

## Evidence

Ruiz-Serra et al. (2024) introduce factorised generative models for multi-agent active inference, where "each agent maintains explicit, individual-level beliefs about the internal states of other agents" through factorisation of the generative model. This enables "strategic planning in a joint context" without requiring centralized coordination or shared representations.

The paper applies this framework to game-theoretic settings (iterated normal-form games with 2-3 players), demonstrating that agents can engage in strategic interaction using only their individual beliefs about others' internal states.

## Architectural Implications

This approach provides a formal foundation for decentralized multi-agent architectures:

1. **No centralized world model required**: Each agent maintains its own beliefs about others, eliminating single points of failure and scaling bottlenecks.

2. **Theory of Mind as computational mechanism**: Strategic planning emerges from individual beliefs about others' internal states, not from explicit communication protocols or shared representations.

3. **Scalable strategic interaction**: The factorised approach extends to N-agent systems without requiring exponential growth in representational complexity.

However, as demonstrated in [[individual-free-energy-minimization-does-not-guarantee-collective-optimization-in-multi-agent-active-inference]], decentralized representation does not automatically produce collective optimization—explicit coordination mechanisms remain necessary.

---

Relevant Notes:
- [[individual-free-energy-minimization-does-not-guarantee-collective-optimization-in-multi-agent-active-inference]]
- [[subagent hierarchies outperform peer multi-agent architectures in practice because deployed systems consistently converge on one primary agent controlling specialized helpers]]
- [[AI agent orchestration that routes data and tools between specialized models outperforms both single-model and human-coached approaches because the orchestrator contributes coordination not direction]]
