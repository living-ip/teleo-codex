---
type: claim
domain: internet-finance
secondary_domains: [collective-intelligence]
description: "Optimism's futarchy experiment outperformed traditional grants by $32.5M TVL but overshot magnitude predictions by 8x, revealing mechanism's strength is comparative ranking not absolute forecasting"
confidence: experimental
source: "Optimism Futarchy v1 Preliminary Findings (2025-06-12), 21-day experiment with 430 forecasters"
created: 2025-06-12
depends_on: ["MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions.md"]
---

# Futarchy excels at relative selection but fails at absolute prediction because ordinal ranking works while cardinal estimation requires calibration

Optimism's 21-day futarchy experiment (March-June 2025) reveals a critical distinction between futarchy's selection capability and prediction accuracy. The mechanism selected grants that outperformed traditional Grants Council picks by ~$32.5M TVL, primarily through choosing Balancer & Beets (~$27.8M gain) over Grants Council alternatives. Both methods converged on 2 of 5 projects (Rocket Pool, SuperForm), but futarchy's unique selections drove superior aggregate outcomes.

However, prediction accuracy was catastrophically poor. Markets predicted aggregate TVL increase of ~$239M against actual ~$31M—an 8x overshoot. Specific misses: Rocket Pool predicted $59.4M (actual: 0), SuperForm predicted $48.5M (actual: -$1.2M), Balancer & Beets predicted $47.9M (actual: -$13.7M despite being the top performer).

The mechanism's strength is ordinal ranking weighted by conviction—markets correctly identified which projects would perform *better* relative to alternatives. The failure is cardinal estimation—markets could not calibrate absolute magnitudes. This suggests futarchy works through comparative advantage assessment ("this will outperform that") rather than precise forecasting ("this will generate exactly $X").

Contributing factors to prediction failure: play-money environment created no downside risk for inflated predictions; $50M initial liquidity anchor may have skewed price discovery; strategic voting to influence allocations; TVL metric conflated ETH price movements with project quality.

## Evidence
- Optimism Futarchy v1 experiment: 430 active forecasters, 5,898 trades, selected 5 of 23 grant candidates
- Selection performance: futarchy +$32.5M vs Grants Council, driven by Balancer & Beets (+$27.8M)
- Prediction accuracy: predicted $239M aggregate TVL, actual $31M (8x overshoot)
- Individual project misses: Rocket Pool 0 vs $59.4M predicted, SuperForm -$1.2M vs $48.5M predicted, Balancer & Beets -$13.7M vs $47.9M predicted
- Play-money structure: no real capital at risk, 41% of participants hedged in final days to avoid losses

## Challenges
This was a play-money experiment, which is the primary confound. Real-money futarchy may produce different calibration through actual downside risk. The 84-day measurement window may have been too short for TVL impact to materialize. ETH price volatility during the measurement period confounded project-specific performance attribution.


### Additional Evidence (extend)
*Source: [[2024-11-25-futardio-proposal-launch-a-boost-for-hnt-ore]] | Added: 2026-03-12 | Extractor: anthropic/claude-sonnet-4.5*

ORE's HNT-ORE boost proposal demonstrates futarchy's strength in relative selection: the market validated HNT as the next liquidity pair to boost relative to other candidates (ISC already had a boost at equivalent multiplier), but the proposal does not require absolute prediction of HNT's future price or utility—only that HNT is a better strategic choice than alternatives. The proposal passed by market consensus on relative positioning (HNT as flagship DePIN project post-HIP-138), not by predicting absolute HNT performance metrics.

---

Relevant Notes:
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions.md]]
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds.md]]
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles.md]]

Topics:
- [[domains/internet-finance/_map]]
- [[foundations/collective-intelligence/_map]]
