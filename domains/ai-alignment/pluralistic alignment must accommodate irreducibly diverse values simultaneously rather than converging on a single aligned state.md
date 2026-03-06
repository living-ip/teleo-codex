---
description: Three forms of alignment pluralism -- Overton steerable and distributional -- are needed because standard alignment procedures actively reduce the diversity of model outputs
type: claim
domain: ai-alignment
created: 2026-02-17
source: "Sorensen et al, Roadmap to Pluralistic Alignment (arXiv 2402.05070, ICML 2024); Klassen et al, Pluralistic Alignment Over Time (arXiv 2411.10654, NeurIPS 2024); Harland et al, Adaptive Alignment (arXiv 2410.23630, NeurIPS 2024)"
confidence: likely
---

# pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state

Sorensen et al (ICML 2024, led by Yejin Choi) define three forms of alignment pluralism. Overton pluralistic models present a spectrum of reasonable responses rather than a single "correct" answer. Steerably pluralistic models can be directed to reflect specific perspectives when appropriate. Distributionally pluralistic models are calibrated to represent values proportional to a given population. The critical finding: standard alignment procedures (RLHF, DPO) may actively reduce distributional pluralism in models -- the training intended to make models safer also makes them less capable of representing diverse viewpoints.

Klassen et al (NeurIPS 2024) add the temporal dimension: in sequential decision-making, conflicting stakeholder preferences can be addressed over time rather than resolved in a single decision. The AI reflects different stakeholders' values at different times, applying fairness-over-time frameworks. This is alignment as ongoing negotiation, not one-shot specification.

Harland et al (NeurIPS 2024) propose the technical mechanism: Multi-Objective RL with post-learning policy selection adjustment that dynamically adapts to diverse and shifting user preferences, making alignment itself adaptive rather than fixed.

This is distinct from the claim that since [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- that note describes a technical failure mode. Pluralistic alignment is the positive research program: what alignment looks like when you take diversity as irreducible rather than treating it as noise to be averaged out. Since [[collective intelligence requires diversity as a structural precondition not a moral preference]], pluralistic alignment imports this structural insight into the alignment field -- diversity is not a problem to be solved but a feature to be preserved.

Since [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]], pluralistic alignment is the practical response to the theoretical impossibility: stop trying to aggregate and start trying to accommodate.

---

Relevant Notes:
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- the technical failure that motivates pluralistic alternatives
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] -- pluralistic alignment is the practical response to this impossibility
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] -- imports this insight into alignment: diversity preserved, not averaged
- [[the specification trap means any values encoded at training time become structurally unstable as deployment contexts diverge from training conditions]] -- pluralism plus temporal adaptation addresses the specification trap
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]] -- assemblies are one mechanism for pluralistic alignment

Topics:
- [[_map]]
