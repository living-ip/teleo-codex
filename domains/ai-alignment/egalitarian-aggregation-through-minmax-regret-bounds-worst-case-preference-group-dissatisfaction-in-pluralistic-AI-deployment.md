---
type: claim
title: Egalitarian Aggregation Through Minmax Regret Bounds Worst-Case Preference Group Dissatisfaction in Pluralistic AI Deployment
description: MinMax Regret aggregation provides an egalitarian mechanism for combining diverse preference groups by minimizing the maximum dissatisfaction any group experiences, operationalizing fairness through social choice theory
confidence: experimental
created: 2026-03-11
processed_date: 2026-03-11
source: "EM-DPO Heterogeneous Preferences Extraction (2025-00-00-em-dpo-heterogeneous-preferences-extraction)"
enrichments: ["2025-00-00-em-dpo-heterogeneous-preferences-extraction"]
---

# Egalitarian Aggregation Through Minmax Regret Bounds Worst-Case Preference Group Dissatisfaction in Pluralistic AI Deployment

MinMax Regret aggregation provides a formal mechanism for combining outputs from multiple preference-aligned models while guaranteeing fairness across groups. Rather than optimizing average satisfaction (which can leave minorities severely dissatisfied), MinMax Regret minimizes the maximum regret experienced by any preference group.

**The mechanism:**

1. Train K separate models, each optimized for one latent preference type (discovered via EM algorithm)
2. At inference, for each query, evaluate all K models' outputs
3. Select the output that minimizes the maximum regret across groups: min_output max_group (regret_group(output))

This ensures no single preference group experiences catastrophic dissatisfaction, even if it means average satisfaction is lower than a utilitarian aggregation would achieve.

**Connection to Arrow's Impossibility Theorem:**

Arrow proved that no aggregation mechanism can satisfy all fairness criteria simultaneously when preferences genuinely diverge. MinMax Regret accepts this impossibility and instead optimizes for a specific fairness criterion: egalitarian worst-case protection. It trades off average satisfaction for bounded inequality.

**Why this matters for pluralistic AI deployment:**

In systems serving diverse populations with irreducible value differences, a single aggregated model will inevitably disappoint some groups severely. MinMax Regret operationalizes the principle that disagreements rooted in genuine value differences cannot be resolved with more evidence by explicitly mapping preference diversity into system structure (ensemble of type-specific models) rather than attempting to resolve it through consensus.

**Relevant Notes:**
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] — MinMax Regret is a technical instantiation of this principle
- [[binary-preference-comparisons-cannot-identify-latent-preference-types-making-pairwise-RLHF-structurally-blind-to-diversity]] — EM-DPO's EM stage discovers the preference types that MinMax Regret then aggregates

**Topics:** AI alignment, social choice theory, fairness, preference aggregation, egalitarianism
