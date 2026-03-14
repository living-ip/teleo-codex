---
type: claim
domain: internet-finance
description: "Dean's List DAO model demonstrates how USDC revenue converted to token buybacks creates net positive price pressure despite citizen sell-offs"
confidence: experimental
source: "futard.io, Dean's List DAO economic model proposal, 2024-07-18"
created: 2024-07-18
---

# Treasury buyback model creates net buy pressure by converting stablecoin revenue to governance token purchases despite distributed token sell-offs

The Dean's List DAO economic model demonstrates a treasury mechanism where client revenue in USDC is systematically converted to governance token ($DEAN) purchases, creating structural buy pressure that the proposal claims exceeds sell pressure from token distributions. The model charges clients in USDC, allocates 20% to treasury as tax, and uses the remaining 80% to purchase $DEAN tokens from the market. These tokens are then distributed to DAO citizens as payment for work.

In the documented example, a 2,500 USDC service generates 2,000 USDC in token purchases (buying 560k $DEAN), while DAO citizens sell approximately 80% of received tokens (448k $DEAN), creating net buy pressure of 112k $DEAN per cycle. The proposal states this creates "always positive" price action where "the price will always achieve a higher low on each cycle."

The model projects that introducing 400 USDC daily buy volume (80% increase over baseline 500 USDC daily volume) would generate 24% upward price pressure, partially offset by 15% downward pressure from citizen sell-offs, resulting in net 5.33% FDV increase. This exceeds the MetaDAO TWAP 3% threshold requirement.

The mechanism addresses a core DAO treasury problem: how to create sustainable token demand without depleting native token reserves. By maintaining the treasury tax in stablecoins while converting operational spending to market purchases, the model hedges against token price volatility while generating buy pressure.

## Evidence
- Dean's List DAO charges 2,500 USDC per dApp review
- 20% (500 USDC) allocated to treasury in stablecoins
- 80% (2,000 USDC) used for $DEAN market purchases
- Citizens sell approximately 80% of received tokens
- Net buy pressure claimed: 560k purchased - 448k sold = 112k $DEAN per cycle
- Baseline daily volume: 500 USDC
- Proposed daily buy volume: 400 USDC (80% increase)
- Current $DEAN price at proposal: $0.00337
- Current FDV at proposal: $337,074
- Projected FDV after implementation: $355,028 (5.33% increase)
- Proposal passed futarchy governance on 2024-07-22

## Challenges

The model assumes consistent service demand (6 dApp reviews per month) and stable sell-off ratios (80%). If citizen sell pressure increases or service demand decreases, the net buy pressure advantage disappears. The price impact calculations (24% up, 15% down) are estimates without empirical validation or citation of methodology. The model does not account for market depth changes as volume increases—slippage could reduce actual buy pressure effectiveness.

The proposal passed MetaDAO governance but represents a single implementation without long-term performance data. The 80% sell-off assumption is stated as "assumption" in the proposal itself, not empirically validated. No mechanism prevents citizens from selling more than 80% if they face liquidity pressure.

---

Relevant Notes:
- MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions.md
- ownership coin treasuries should be actively managed through buybacks and token sales as continuous capital calibration not treated as static war chests.md
- futarchy-daos-require-mintable-governance-tokens-because-fixed-supply-treasuries-exhaust-without-issuance-authority-forcing-disruptive-token-architecture-migrations.md

Topics:
- domains/internet-finance/_map
- core/mechanisms/_map
