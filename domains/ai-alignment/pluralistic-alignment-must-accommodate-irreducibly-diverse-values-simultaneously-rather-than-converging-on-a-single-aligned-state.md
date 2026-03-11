---
type: claim
title: Pluralistic Alignment Must Accommodate Irreducibly Diverse Values Simultaneously Rather Than Converging on a Single Aligned State
description: Standard alignment procedures (RLHF, DPO) reduce distributional pluralism by forcing convergence to a single model, but pluralistic alignment preserves diverse viewpoints through ensemble structures, temporal negotiation, and adaptive policy selection
confidence: likely
created: 2026-03-11
processed_date: 2026-03-11
source: "Sorensen et al, Roadmap to Pluralistic Alignment (arXiv 2402.05070, ICML 2024); Klassen et al, Pluralistic Alignment Over Time (arXiv 2411.10654, NeurIPS 2024); Harland et al, Adaptive Alignment (arXiv 2410.23630, NeurIPS 2024)"
enrichments: ["2025-00-00-em-dpo-heterogeneous-preferences-extraction"]
---

# Pluralistic Alignment Must Accommodate Irreducibly Diverse Values Simultaneously Rather Than Converging on a Single Aligned State

Sorensen et al (ICML 2024, led by Yejin Choi) define three forms of alignment pluralism:

- **Overton pluralistic models** present a spectrum of reasonable responses rather than a single "correct" answer
- **Steerably pluralistic models** can be directed to reflect specific perspectives when appropriate
- **Distributionally pluralistic models** are calibrated to represent values proportional to a given population

The critical finding: standard alignment procedures (RLHF, DPO) may actively reduce distributional pluralism. The training intended to make models safer also makes them less capable of representing diverse viewpoints. This is not a side effect but a structural consequence of forcing diverse preferences into a single reward function.

Klassen et al (NeurIPS 2024) add the temporal dimension. In sequential decision-making, conflicting stakeholder preferences can be addressed over time rather than resolved in a single decision. The AI reflects different stakeholders' values at different times, applying fairness-over-time frameworks. This reframes alignment as ongoing negotiation rather than one-shot specification.

Harland et al (NeurIPS 2024) propose the technical mechanism: Multi-Objective RL with post-learning policy selection adjustment that dynamically adapts to diverse and shifting user preferences, making alignment itself adaptive rather than fixed.

**EM-DPO enrichment (extend)**: The EM-DPO paper provides a concrete implementation of distributional pluralism through latent preference type discovery. Rather than treating preference diversity as noise to average out, EM-DPO uses Expectation-Maximization to identify K distinct preference clusters from binary comparison data, then trains separate models for each type. This operationalizes the principle that diverse values should be accommodated structurally (through model ensembles) rather than collapsed into consensus.

**Relevant Notes:**
- [[binary-preference-comparisons-cannot-identify-latent-preference-types-making-pairwise-RLHF-structurally-blind-to-diversity]] — describes the technical failure mode
- [[egalitarian-aggregation-through-minmax-regret-bounds-worst-case-preference-group-dissatisfaction-in-pluralistic-AI-deployment]] — MinMax Regret is a technical instantiation of this principle
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]] — assemblies are one mechanism for pluralistic alignment

**Topics:** AI alignment, preference diversity, value pluralism, multi-objective optimization
