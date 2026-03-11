---
type: claim
domain: internet-finance
description: "XorraBet's team allocation structure locks tokens at launch with exponential price-multiple vesting triggers (2x through 32x) and 18-month cliff using TWAP settlement"
confidence: experimental
source: "XorraBet tokenomics from Futardio launch page, 2026-03-04"
created: 2026-03-11
---

# XorraBet implements exponential price-multiple team token vesting with 2x 4x 8x 16x 32x triggers and 18-month cliff

XorraBet's tokenomics structure locks 4 million tokens (20% of 20M total supply) at launch with five tranches that unlock only when the token price reaches 2x, 4x, 8x, 16x, and 32x multiples. The structure includes an 18-month minimum cliff before any unlock and uses 3-month time-weighted average price (TWAP) for settlement rather than spot price. If the token never reaches 2x, the team receives zero tokens.

This creates extreme performance dependency—the team gets nothing unless they at least double the token price, and the exponential structure means most team compensation comes only if they achieve 8x+ returns. The use of TWAP rather than spot price makes the vesting schedule harder to game through short-term price manipulation.

## Evidence

From the XorraBet tokenomics documentation:
- "4M tokens are locked at launch. Five tranches unlock at: 2x, 4x, 8x, 16x, 32x"
- "Minimum 18-month cliff before any unlock, evaluated using 3-month TWAP, not spot price"
- "At launch 0 team tokens are circulating"
- "If the token never reaches 2x, the team receives nothing"
- Total supply: 20M tokens with 12M ICO (60%), 4M liquidity (20%), 4M team (20%)

This structure is more aggressive than typical crypto team vesting, which usually uses time-based unlocks (e.g., 4-year linear vesting with 1-year cliff). The exponential price triggers and TWAP settlement demonstrate a real-world implementation of performance-based alignment.

## Relation to Existing Claims

This is a specific implementation of [[performance-unlocked-team-tokens-with-price-multiple-triggers-and-twap-settlement-create-long-term-alignment-without-initial-dilution]], demonstrating the mechanism in practice with particularly aggressive multiples (2x/4x/8x/16x/32x vs. more conservative structures).

The use of TWAP settlement addresses the concern in [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]]—price-based vesting with TWAP is harder to hedge than time-based vesting.

---

Relevant Notes:
- [[performance-unlocked-team-tokens-with-price-multiple-triggers-and-twap-settlement-create-long-term-alignment-without-initial-dilution]]
- [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]]

Topics:
- [[domains/internet-finance/_map]]
