---
type: claim
domain: ai-alignment
description: "Social choice theory (Arrow), complexity theory (RLHF trilemma), and multi-objective optimization (agreement complexity) independently arrive at the same impossibility result through different mathematical paths."
confidence: likely
source: "Multiple authors, Intrinsic Barriers and Practical Pathways for Human-AI Alignment (arXiv 2502.05934, AAAI 2026 oral); Sahoo et al, The Complexity of Perfect AI Alignment (arXiv 2511.19504, NeurIPS 2025); Conitzer et al, Social Choice for AI Alignment (arXiv 2404.10271, ICML 2024)"
created: 2026-03-11
secondary_domains: [collective-intelligence]
depends_on:
  - "universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective"
---

# alignment impossibility is convergently proven by three independent mathematical traditions suggesting it reflects structural properties of the problem not limitations of current methods

Three separate mathematical traditions, working from incompatible starting assumptions, have independently proven that perfect alignment with diverse human preferences is impossible or intractable:

**Tradition 1 — Social choice theory (Arrow, 1951; Conitzer et al., ICML 2024):** Arrow's impossibility theorem proves that no ranked voting rule can simultaneously satisfy minimal fairness criteria when preferences genuinely diverge. Applied to AI alignment, this means no aggregation mechanism — including RLHF — can satisfy fairness, individual preference respect, and non-dictatorship simultaneously. This tradition uses discrete preference structures and combinatorial fairness axioms.

**Tradition 2 — Computational complexity theory (Sahoo et al., NeurIPS 2025):** The RLHF alignment trilemma proves that no RLHF system can simultaneously achieve epsilon-representativeness across diverse values, polynomial tractability in sample and compute complexity, and delta-robustness against distribution shift. Achieving both representativeness and robustness for global-scale populations requires Omega(2^{d_context}) operations — super-polynomial in context dimensionality. This tradition uses probabilistic sample complexity bounds.

**Tradition 3 — Multi-objective optimization (AAAI 2026 oral, arXiv 2502.05934):** Formalizing alignment as a problem where N agents must reach approximate agreement across M candidate objectives, the paper proves that when either M (objectives) or N (agents) becomes sufficiently large, "no amount of computational power or rationality can avoid intrinsic alignment overheads." This is a No-Free-Lunch result for alignment: computational costs are irreducible regardless of method sophistication. This tradition uses multi-objective optimization and agreement complexity.

**The significance of convergence:** Each tradition uses different mathematical machinery, different formalizations of "alignment," and different notions of what makes alignment fail. The convergence is not circular — these are genuinely independent proofs. When incompatible mathematical traditions reach the same conclusion, that conclusion likely reflects a deep structural property of the problem rather than an artifact of any particular formalization. The probability that three independent proofs all happen to find the same impossibility by coincidence is low; the more parsimonious explanation is that the impossibility is real.

This convergence also provides a form of robustness that no single proof can: critics who reject social choice theory as the wrong frame for alignment must still contend with the complexity-theoretic and multi-objective proofs, and vice versa. The impossibility survives across frameworks.

**Practical implication:** The convergence shifts the burden of proof. Researchers proposing that alignment is achievable must now explain how their approach escapes not one but three independent impossibility results. The most credible escape routes are scope limitation — restricting M (objectives), restricting N (agents), or restricting the domain — all of which are forms of consensus-driven reduction rather than universal coverage.

## Challenges

A recurring counter-argument is that impossibility results in social choice apply to *unrestricted* preference domains and that practical alignment restricts the domain enough to escape them. The AAAI 2026 paper partially addresses this: it specifies exactly when (large M or large N) the intractability emerges, implying small-M/small-N alignment is tractable. But the objection has force for restricted-domain alignment proposals. Confidence is `likely` rather than `proven` because the escape conditions for each tradition are not yet formally unified.

---

Relevant Notes:
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — Tradition 1; this note confirms from two additional independent traditions
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] — the practical response: stop trying to aggregate across all traditions, start accommodating
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] — the informal version that all three traditions now formally prove

Topics:
- [[_map]]
