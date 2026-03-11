---
type: claim
domain: internet-finance
secondary_domains: [collective-intelligence]
description: "Optimism futarchy outperformed on aggregate but showed higher variance selecting both best and worst projects, suggesting mechanism optimizes for upside not consistency"
confidence: experimental
source: "Optimism Futarchy v1 Preliminary Findings (2025-06-12), selection performance data"
created: 2025-06-12
---

# Futarchy variance creates portfolio problem because mechanism selects both top performers and worst performers simultaneously

Optimism's futarchy experiment outperformed traditional Grants Council by ~$32.5M aggregate TVL, but this headline masks a critical variance pattern: futarchy selected both the top-performing project (Balancer & Beets, +$27.8M) AND the single worst-performing project in the entire candidate pool.

This suggests futarchy optimizes for upside capture rather than downside protection. Markets correctly identified high-potential outliers but failed to filter out catastrophic misses. The mechanism's strength—allowing conviction-weighted betting on asymmetric outcomes—becomes a weakness when applied to portfolio construction where consistency matters.

Traditional grant committees may be selecting for lower variance: avoiding both the best and worst outcomes by gravitating toward consensus safe choices. Futarchy's higher variance could be:
1. A feature if the goal is maximizing expected value through power-law bets
2. A bug if the goal is reliable capital deployment with acceptable floors

For Living Capital applications, this matters enormously. If futarchy-governed investment vehicles systematically select high-variance portfolios, they may outperform on average while experiencing larger drawdowns and more frequent catastrophic losses than traditional VC. This changes the risk profile and appropriate use cases—futarchy may be better suited for experimental grant programs than fiduciary capital management.

The variance pattern also interacts with the prediction accuracy failure: markets were overconfident about both winners and losers, suggesting the calibration problem compounds at the tails.

## Evidence
- Futarchy aggregate performance: +$32.5M vs Grants Council
- Top performer: Balancer & Beets +$27.8M (futarchy selection)
- Futarchy selected single worst-performing project in candidate pool
- Both methods converged on 2 of 5 projects (Rocket Pool, SuperForm)
- Futarchy unique selections: Balancer & Beets, Avantis, Polynomial
- Grants Council unique selections: Extra Finance, Gyroscope, Reservoir
- Prediction overconfidence at tails: Rocket Pool $59.4M predicted vs $0 actual, Balancer & Beets -$13.7M actual despite $47.9M predicted

---

Relevant Notes:
- [[Living Capital vehicles pair Living Agent domain expertise with futarchy-governed investment to direct capital toward crucial innovations.md]]
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles.md]]
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements.md]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/living-capital/_map]]
