---
type: claim
domain: internet-finance
description: "Futarchy-governed fee proposals use MCAP-plus-threshold pass conditions to align proposal success with token price appreciation"
confidence: experimental
source: "Dean's List DAO proposal B8WLuXqoBb3hRD9XBCNuSqxDqCXCixqRdKR4pVFGzNP, passed 2025-01-17"
created: 2025-01-14
processed_date: 2025-01-14
depends_on:
  - "MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window"
  - "coin price is the fairest objective function for asset futarchy"
---

# Futarchy-governed fee proposals use MCAP-plus-threshold pass conditions to align proposal success with token price appreciation

Dean's List DAO's liquidity fee proposal set its pass threshold at current MCAP ($298,889) + 3% = $307,855, requiring token price appreciation for the proposal to pass. This creates direct alignment between the proposal's claimed value creation and the market's assessment through TWAP settlement.

## Evidence

**TWAP threshold structure:**
- Baseline MCAP at proposal creation: $314,620 (2025-01-11 8:53 UTC)
- Volatility adjustment applied: -5% = -$15,731
- Adjusted baseline MCAP: $298,889
- Pass threshold: $298,889 + 3% = $307,855
- Fail threshold: < $298,889

The proposal explicitly calculated the -5% volatility adjustment to account for market movement between proposal writing and on-chain creation. For the proposal to pass, the three-day TWAP had to exceed $307,855. For it to fail, MCAP had to remain below $298,889. The proposal passed on 2025-01-17, indicating the three-day TWAP exceeded the pass threshold.

**Mechanism design implication:** This structure forces traders to price whether the fee increase (projected to generate $19k-$25k annual treasury growth) would outweigh the expected 20-30% volume decline. The 3% threshold is modest enough to be achievable but high enough to require genuine value creation belief.

**Projected valuation impact (from proposal):**
Assuming 2.5x treasury-to-MCAP ratio, all three scenarios exceeded the 3% threshold:
- Conservative scenario: +10% MCAP
- Moderate scenario: +11.9% MCAP  
- Optimistic scenario: +13.8% MCAP

This suggests the market priced in at least the conservative case for passage.

## Mechanism Design Comparison

This approach differs from simple majority voting by:
1. **Quantification requirement:** Proposers must specify expected value creation in measurable terms
2. **Market pricing:** Forces traders to evaluate the fee-volume trade-off explicitly
3. **Skin-in-the-game:** Conditional token positions create financial incentive for accurate assessment
4. **Measurable criterion:** MCAP change is directly observable and non-subjective

## Limitations

This is a single case study. The approach assumes:
- MCAP is a valid proxy for DAO value (not always true if treasury composition changes)
- The 2.5x treasury-to-MCAP ratio is stable (may vary by market conditions)
- Traders can accurately price complex economic trade-offs (uncertain)
- The 3% threshold was appropriately calibrated (no comparative data)

---

Relevant Notes:
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]]
- [[coin price is the fairest objective function for asset futarchy]]
- [[futarchy-excels-at-relative-selection-but-fails-at-absolute-prediction-because-ordinal-ranking-works-while-cardinal-estimation-requires-calibration]]
- [[decision markets make majority theft unprofitable through conditional token arbitrage]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
