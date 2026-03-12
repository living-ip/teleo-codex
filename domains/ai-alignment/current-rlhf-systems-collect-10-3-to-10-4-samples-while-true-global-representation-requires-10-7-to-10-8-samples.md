---
type: claim
domain: ai-alignment
description: "Four orders of magnitude gap between current RLHF practice (10^3-10^4 samples) and theoretical requirements for representative alignment (10^7-10^8 samples)"
confidence: likely
source: "Sahoo et al. (Berkeley AI Safety Initiative, AWS, Meta, Stanford, Northeastern), NeurIPS 2025 Workshop on Socially Responsible and Trustworthy Foundation Models"
created: 2026-03-11
depends_on: ["RLHF alignment trilemma proves no system can simultaneously achieve representativeness tractability and robustness"]
---

# Current RLHF systems collect 10^3 to 10^4 samples while true global representation requires 10^7 to 10^8 samples

Current RLHF systems collect 10^3 to 10^4 preference samples from homogeneous annotator pools, while achieving true global representation requires 10^7 to 10^8 samples—a four-order-of-magnitude gap between practice and theoretical requirements.

This gap is not merely a resource constraint but reflects the alignment trilemma's fundamental tradeoff. Collecting 10^7-10^8 samples would violate tractability constraints, making the system computationally infeasible for deployment. Current systems choose tractability over representativeness, accepting that they will systematically underrepresent minority perspectives and context-dependent preferences.

The homogeneity of annotator pools compounds this problem. Even if sample counts increased, drawing from demographically narrow populations cannot capture global value diversity. The paper notes that achieving epsilon ≤ 0.01 representativeness requires not just more samples but samples from genuinely diverse populations spanning different cultures, socioeconomic contexts, and value systems. Current practice fails on both dimensions: insufficient sample size AND insufficient demographic diversity.

This practical gap makes current RLHF systems fundamentally unrepresentative by design, not by accident. The choice to deploy with 10^3-10^4 samples is a deliberate choice to optimize for tractability at the expense of representativeness. Scaling to 10^7-10^8 samples would require either accepting super-polynomial compute costs or abandoning the attempt to represent global diversity.

---

Relevant Notes:
- [[RLHF alignment trilemma proves no system can simultaneously achieve representativeness tractability and robustness]]
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
- [[safe AI development requires building alignment mechanisms before scaling capability]]

Topics:
- [[domains/ai-alignment/_map]]
