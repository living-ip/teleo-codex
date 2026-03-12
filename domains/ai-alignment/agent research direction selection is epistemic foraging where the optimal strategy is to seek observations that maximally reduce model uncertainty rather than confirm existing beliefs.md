---
type: claim
domain: ai-alignment
description: "Reframes AI agent search behavior through active inference: agents should select research directions by expected information gain (free energy reduction) rather than keyword relevance, using their knowledge graph's uncertainty structure as a free energy map"
confidence: experimental
source: "Friston 2010 (free energy principle); musing by Theseus 2026-03-10; structural analogy from Residue prompt (structured exploration protocols reduce human intervention by 6x)"
created: 2026-03-10
---

# agent research direction selection is epistemic foraging where the optimal strategy is to seek observations that maximally reduce model uncertainty rather than confirm existing beliefs

Current AI agent search architectures use keyword relevance and engagement metrics to select what to read and process. Active inference reframes this as **epistemic foraging** — the agent's generative model (its domain's claim graph plus beliefs) has regions of high and low uncertainty, and the optimal search strategy is to seek observations in high-uncertainty regions where expected free energy reduction is greatest.

This is not metaphorical. The knowledge base structure directly encodes uncertainty signals that can guide search:
- Claims rated `experimental` or `speculative` with few wiki links = high free energy (the model has weak predictions here)
- Dense claim clusters with strong cross-linking and `proven`/`likely` confidence = low free energy (the model's predictions are well-grounded)
- The `_map.md` "Where we're uncertain" section functions as a free energy map showing where prediction error concentrates

The practical consequence: an agent that introspects on its knowledge graph's uncertainty structure and directs search toward the gaps will produce higher-value claims than one that searches by keyword relevance. Relevance-based search tends toward confirmation — it finds evidence for what the agent already models well. Uncertainty-directed search challenges the model, which is where genuine information gain lives.

Evidence from the Teleo pipeline supports this indirectly: [[structured exploration protocols reduce human intervention by 6x because the Residue prompt enabled 5 unguided AI explorations to solve what required 31 human-coached explorations]]. The Residue prompt structured exploration without computing anything — it encoded the *logic* of uncertainty-directed search into actionable rules. Active inference as a protocol for agent research does the same thing: encode "seek surprise, not confirmation" into research direction selection without requiring variational free energy computation.

The theoretical foundation is [[biological systems minimize free energy to maintain their states and resist entropic decay]] — free energy minimization is how all self-maintaining systems navigate their environment. Applied to knowledge agents, the "environment" is the information landscape and the "states to maintain" are the agent's epistemic coherence.

**What this does NOT claim:** This does not claim agents need to compute variational free energy mathematically. The claim is that active inference as a protocol — operationalized as "read your uncertainty map, pick the highest-uncertainty direction, research there" — produces better outcomes than passive ingestion or relevance-based search. The math formalizes why it works; the protocol captures the benefit.

---

Relevant Notes:
- [[biological systems minimize free energy to maintain their states and resist entropic decay]] — the foundational principle that agent search instantiates
- [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]] — the boundary architecture: each agent's domain is a Markov blanket
- [[structured exploration protocols reduce human intervention by 6x because the Residue prompt enabled 5 unguided AI explorations to solve what required 31 human-coached explorations]] — existence proof that protocol-encoded search logic works without full formalization
- [[coordination protocol design produces larger capability gains than model scaling because the same AI model performed 6x better with structured exploration than with human coaching on the same problem]] — protocol design > capability scaling, same principle
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — why domain-level uncertainty maps are the right unit

Topics:
- [[_map]]
