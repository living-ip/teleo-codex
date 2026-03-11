---
type: claim
title: Binary Preference Comparisons Cannot Identify Latent Preference Types, Making Pairwise RLHF Structurally Blind to Diversity
description: Binary preference comparisons lack the information structure to identify latent preference types, making standard pairwise RLHF and DPO methods incapable of detecting or preserving preference diversity
confidence: experimental
created: 2026-03-11
source: "2025-00-00-em-dpo-heterogeneous-preferences-extraction (EM-DPO paper)"
---

# Binary Preference Comparisons Cannot Identify Latent Preference Types, Making Pairwise RLHF Structurally Blind to Diversity

Standard RLHF and DPO methods train on binary preference comparisons (response A > response B), which contain insufficient information to identify or distinguish between latent preference types. A formal identifiability analysis shows that the same binary ranking data is consistent with multiple distinct preference structures. This means:

1. **Information loss at collection**: Binary comparisons discard the underlying preference type information. Two annotators with fundamentally different value systems may produce identical binary rankings on the same pair.

2. **Structural blindness**: A reward model trained on binary comparisons learns a single scalar function that averages across preference types rather than identifying them. The model cannot distinguish between "annotator prefers safety" and "annotator prefers capability" if both lead to the same ranking on a given pair.

3. **Diversity collapse**: When this averaged reward function is used in DPO or RLHF, the resulting model converges toward a single policy that satisfies the aggregate preference, actively suppressing the diversity of outputs that would satisfy different preference types.

The EM-DPO approach addresses this by using an Expectation-Maximization algorithm to infer K latent preference types from the same binary ranking data, then training separate models for each type. This demonstrates that the limitation is not in the data but in the aggregation method: binary comparisons *can* contain information about preference diversity if you don't collapse it into a single reward function.

**Relevant Notes:**
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] — this claim identifies the technical failure mode that motivates pluralistic alternatives
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] — related but distinct: this focuses on context-dependence; the current claim focuses on latent type identification
- [[egalitarian aggregation through minmax regret bounds worst case preference group dissatisfaction in pluralistic AI deployment]] — EM-DPO's solution mechanism

**Topics:** AI alignment, preference learning, RLHF limitations, preference diversity
