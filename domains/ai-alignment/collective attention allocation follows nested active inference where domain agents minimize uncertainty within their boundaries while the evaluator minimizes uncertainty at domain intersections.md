---
type: claim
domain: ai-alignment
description: "Extends Markov blanket architecture to collective search: each domain agent runs active inference within its blanket while the cross-domain evaluator runs active inference at the inter-domain level, and the collective's surprise concentrates at domain intersections"
confidence: experimental
source: "Friston et al 2024 (Designing Ecosystems of Intelligence); Living Agents Markov blanket architecture; musing by Theseus 2026-03-10"
created: 2026-03-10
---

# collective attention allocation follows nested active inference where domain agents minimize uncertainty within their boundaries while the evaluator minimizes uncertainty at domain intersections

The Living Agents architecture already uses Markov blankets to define agent boundaries: [[Living Agents mirror biological Markov blanket organization with specialized domain boundaries and shared knowledge]]. Active inference predicts what should happen at these boundaries — each agent minimizes free energy (prediction error) within its domain, while the evaluator minimizes free energy at the cross-domain level where domain models interact.

This has a concrete architectural prediction: **the collective's surprise is concentrated at domain intersections.** Within a mature domain, the agent's generative model makes good predictions — claims are well-linked, confidence levels are calibrated, uncertainty is mapped. But at the boundaries between domains, the models are weakest: neither agent has a complete picture of how their claims interact with the other's. This is where cross-domain synthesis claims live, and it's where the collective should allocate the most attention.

Evidence from the Teleo pipeline:
- The highest-value claims identified so far are cross-domain connections (e.g., [[alignment research is experiencing its own Jevons paradox because improving single-model safety induces demand for more single-model safety rather than coordination-based alignment]] applied from economics to alignment, [[human civilization passes falsifiable superorganism criteria because individuals cannot survive apart from society and occupations function as role-specific cellular algorithms]] applying biology to AI governance)
- The extraction quality review (2026-03-10) found that the automated pipeline identifies `secondary_domains` but fails to create wiki links to specific claims in other domains — exactly the domain-boundary uncertainty that active inference predicts should be prioritized
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — the existing architectural claim, which this grounds in active inference theory

The nested structure mirrors biological Markov blankets: [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]]. Cells minimize free energy within their membranes. Organs minimize at the inter-cellular level. Organisms minimize at the organ-coordination level. Similarly: domain agents minimize within their claim graph, the evaluator minimizes at the cross-domain graph, and the collective minimizes at the level of the full knowledge base vs external reality.

**Practical implication:** Leo (evaluator) should prioritize review resources on claims that span domain boundaries, not on claims deep within a well-mapped domain. The proportional eval pipeline already moves in this direction — auto-merging low-risk ingestion while reserving full review for knowledge claims. Active inference provides the theoretical justification: cross-domain claims carry the highest expected free energy, so they deserve the most precision-weighted attention.

**Limitation:** This is a structural analogy grounded in Friston's framework, not an empirical measurement. We have not quantified free energy at domain boundaries or verified that cross-domain claims are systematically higher-value than within-domain claims (though extraction review observations suggest this). The claim is `experimental` pending systematic evidence.

---

Relevant Notes:
- [[Living Agents mirror biological Markov blanket organization with specialized domain boundaries and shared knowledge]] — the existing architecture this claim grounds in theory
- [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]] — the mathematical foundation for nested boundaries
- [[biological systems minimize free energy to maintain their states and resist entropic decay]] — what happens at each boundary: internal states minimize prediction error
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — the architectural claim this provides theoretical grounding for
- [[cross-domain knowledge connections generate disproportionate value because most insights are siloed]] — empirical observation consistent with domain-boundary surprise concentration
- [[partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity]] — Markov blankets are partial connectivity: they preserve internal diversity while enabling boundary interaction
- [[scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps]] — oversight resources should be allocated where free energy is highest, not spread uniformly

Topics:
- [[_map]]
