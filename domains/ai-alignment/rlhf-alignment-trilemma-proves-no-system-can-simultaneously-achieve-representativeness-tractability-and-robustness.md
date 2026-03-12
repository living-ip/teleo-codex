---
type: claim
domain: ai-alignment
description: "Formal impossibility result: no RLHF system can simultaneously achieve epsilon-representativeness, polynomial tractability, and delta-robustness"
confidence: likely
source: "Sahoo et al. (Berkeley AI Safety Initiative, AWS, Meta, Stanford, Northeastern), NeurIPS 2025 Workshop on Socially Responsible and Trustworthy Foundation Models"
created: 2026-03-11
depends_on: ["RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values"]
---

# RLHF alignment trilemma proves no system can simultaneously achieve representativeness, tractability, and robustness

The alignment trilemma establishes a formal impossibility result: no RLHF system can simultaneously achieve three critical properties:

1. **Epsilon-representativeness** across diverse human values
2. **Polynomial tractability** in sample and compute complexity  
3. **Delta-robustness** against adversarial perturbations and distribution shift

This is proven through complexity theory, not an implementation limitation. The core complexity bound shows that achieving both representativeness (epsilon ≤ 0.01) and robustness (delta ≤ 0.001) for global-scale populations requires Ω(2^{d_context}) operations—super-polynomial in context dimensionality. This makes the combination computationally intractable for real-world deployment.

The paper identifies three strategic relaxation pathways, each abandoning one vertex of the trilemma:

1. **Constrain representativeness**: Focus on K << |H| "core" human values (~30 universal principles) rather than attempting global diversity
2. **Scope robustness narrowly**: Define restricted adversarial classes targeting only plausible threats rather than worst-case perturbations
3. **Accept super-polynomial costs**: Justify exponential compute for high-stakes applications where tractability can be relaxed

Critically, this result arrives at a compatible impossibility conclusion to [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] but through an independent mathematical tradition (complexity theory rather than social choice theory). This provides convergent evidence from different intellectual foundations that universal alignment faces fundamental mathematical barriers.

---

Relevant Notes:
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]]
- [[safe AI development requires building alignment mechanisms before scaling capability]]
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]

Topics:
- [[domains/ai-alignment/_map]]
