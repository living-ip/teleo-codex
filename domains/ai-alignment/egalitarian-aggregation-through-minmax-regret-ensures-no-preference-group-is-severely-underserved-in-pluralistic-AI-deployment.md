---
type: claim
domain: ai-alignment
description: "MinMax Regret Aggregation uses egalitarian social choice theory to bound worst-case dissatisfaction across preference groups at inference time"
confidence: experimental
source: "EM-DPO paper (EAAMO 2025) — MinMax Regret Aggregation mechanism"
created: 2025-01-16
secondary_domains: [mechanisms]
---

# Egalitarian aggregation through minmax regret bounds worst-case preference group dissatisfaction in pluralistic AI deployment

EM-DPO's MinMax Regret Aggregation (MMRA) mechanism combines outputs from an ensemble of preference-specialized LLMs using an egalitarian fairness criterion from social choice theory. When the user's preference type is unknown at inference time, MMRA selects responses that minimize the maximum regret across all possible preference groups.

## Mechanism

The EM algorithm first discovers K latent preference types from ranking data. It then trains K separate LLMs, each optimized for one preference type. At deployment, when user type is unknown, MMRA aggregates the K model outputs by selecting the response that minimizes worst-case regret—the maximum dissatisfaction any single preference group would experience.

This implements a specific normative principle: no preference subpopulation should experience severe dissatisfaction, even if that means sacrificing average satisfaction across all groups. The mechanism works within Arrow's impossibility framework by committing to a particular social choice principle (min-max regret) rather than attempting to satisfy all fairness criteria simultaneously.

## Fairness-First Tradeoff

MMRA explicitly trades off average performance for bounded worst-case performance. This prioritizes equity (no group left behind) over efficiency (maximum average satisfaction). The paper does not provide head-to-head comparisons with alternative pluralistic approaches (PAL, MixDPO) or deployment results beyond benchmarks, so the practical performance tradeoffs remain unquantified.

## Connection to Irreducible Disagreement

The mechanism assumes preference differences are permanent features of the deployment context to be accommodated structurally, not temporary conflicts to be eliminated through consensus or better information. This aligns with the principle that some disagreements stem from genuine value differences rather than information gaps.

---

Relevant Notes:
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]
- [[some disagreements are permanently irreducible because they stem from genuine value differences not information gaps and systems must map rather than eliminate them]]

Topics:
- [[domains/ai-alignment/_map]]
