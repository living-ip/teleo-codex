---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "RLCF implements pluralistic alignment through role separation where AI automates content generation, humans retain rating authority, and bridging algorithms select for cross-partisan agreement"
confidence: experimental
source: "Li et al. 2025, Scaling Human Judgment in Community Notes with LLMs"
created: 2025-06-30
depends_on: ["democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations", "community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules"]
---

# RLCF architecture separates AI generation from human evaluation with bridging-based selection

Reinforcement Learning from Community Feedback (RLCF) is not merely a reward signal but a three-component architecture: (1) LLMs automate post selection, research, evidence synthesis, and note composition; (2) humans retain exclusive rating authority to determine what is "helpful enough to show"; and (3) a bridging algorithm surfaces notes that receive support from raters with diverse viewpoints.

The bridging mechanism uses matrix factorization to predict ratings: y_ij = w_i * x_j + b_i + c_j, where c_j is the intercept score capturing what people with opposing views agree on. Notes must achieve high intercept scores to surface, creating selection pressure for cross-partisan consensus rather than majority preference.

The reward model training uses predicted intercept scores as the primary signal, balanced with stylistic novelty rewards to prevent homogenization. This creates a feedback loop where AI learns to generate content that bridges divides rather than optimizing for any single constituency.

Implemented in Community Notes on X (formerly Twitter), this represents the first deployed specification of RLCF at scale, transitioning the concept from philosophical framework to operational mechanism.

## Evidence
- Li et al. (2025) specify the three-role architecture: AI generates, humans rate, bridging selects
- Matrix factorization formula explicitly separates user factors, note factors, and bridging intercepts
- Community Notes deployment demonstrates feasibility at platform scale
- Training combines intercept prediction with novelty rewards to balance optimization and diversity

## Limitations
- No formal analysis of whether this architecture escapes Arrow's impossibility conditions
- Empirical results limited to Community Notes context; generalization unclear
- The paper acknowledges but does not resolve the "optimally inoffensive" homogenization risk
- Single-source specification; requires independent validation

---

Relevant Notes:
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]]
- [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]]
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]
- [[AI alignment is a coordination problem not a technical problem]]

Topics:
- [[domains/ai-alignment/_map]]
- [[foundations/collective-intelligence/_map]]
