---
type: claim
title: Binary preference comparisons cannot identify latent preference types making pairwise RLHF structurally blind to diversity
description: Standard RLHF and DPO methods using single reward models structurally collapse preference diversity information that binary comparisons contain, making them incapable of detecting or preserving preference heterogeneity
confidence: experimental
created: 2026-03-11
processed_date: 2026-03-11
source: "EM-DPO Heterogeneous Preferences Extraction (2025-00-00-em-dpo-heterogeneous-preferences-extraction)"
---

# Binary preference comparisons cannot identify latent preference types making pairwise RLHF structurally blind to diversity

Standard RLHF and DPO methods train on binary preference comparisons (response A > response B), but their single-reward-function architecture prevents them from identifying or distinguishing between latent preference types. The EM-DPO paper demonstrates through formal identifiability analysis that binary ranking data contains sufficient information to recover preference diversity, but standard training procedures structurally collapse it.

**The information loss mechanism:**

1. **Collection-level collapse**: Binary comparisons discard the underlying preference type information during aggregation. Two annotators with fundamentally different value systems (e.g., one prioritizing safety, another prioritizing capability) may produce identical binary rankings on the same response pair, making their preferences indistinguishable in pooled training data.

2. **Model-level aggregation**: A reward model trained on binary comparisons learns a single scalar function that averages across preference types rather than identifying them. The Bradley-Terry model used in standard DPO assumes a single latent reward function, structurally preventing the model from distinguishing "annotator prefers safety" from "annotator prefers capability" when both lead to the same ranking.

3. **Deployment-level homogenization**: When this averaged reward function guides policy optimization in DPO or RLHF, the resulting model converges toward a single policy satisfying the aggregate preference, actively suppressing the diversity of outputs that would satisfy different preference types.

**EM-DPO's solution demonstrates the problem is methodological, not data-limited**: The paper uses an Expectation-Maximization algorithm to infer K latent preference types from the same binary ranking data, then trains separate models for each type. This shows that binary comparisons *can* contain information about preference diversity if the training procedure doesn't collapse it into a single reward function. The EM approach recovers distinct preference clusters (e.g., safety-focused vs. capability-focused annotators) from data that standard RLHF treats as homogeneous.

**Relevant Notes:**
- [[pluralistic-alignment-must-accommodate-irreducibly-diverse-values-simultaneously-rather-than-converging-on-a-single-aligned-state]] — this claim identifies the technical failure mode that motivates pluralistic alternatives
- [[egalitarian-aggregation-through-minmax-regret-bounds-worst-case-preference-group-dissatisfaction-in-pluralistic-AI-deployment]] — EM-DPO's solution mechanism

**Topics:** AI alignment, preference learning, RLHF limitations, preference diversity
