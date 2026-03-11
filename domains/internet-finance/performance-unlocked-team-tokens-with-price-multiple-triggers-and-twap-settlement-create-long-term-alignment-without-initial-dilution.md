---
type: claim
domain: internet-finance
description: "Team allocation structure that releases tokens only at 2x/4x/8x/16x/32x price multiples with TWAP verification"
confidence: experimental
source: "MycoRealms token structure, 2026-01-01"
created: 2026-01-01
---

# Performance-unlocked team tokens with price-multiple triggers and TWAP settlement create long-term alignment without initial dilution

MycoRealms implements a team allocation structure where 3M tokens (18.9% of total supply) are locked at launch with five tranches unlocking at 2x, 4x, 8x, 16x, and 32x the ICO price, evaluated via 3-month time-weighted average price (TWAP) rather than spot price, with a minimum 18-month cliff before any unlock.

At launch, zero team tokens circulate. If the token never reaches 2x ICO price, the team receives nothing. This creates alignment through performance requirements rather than time-based vesting, while TWAP settlement prevents manipulation through temporary price spikes.

This structure addresses the hedgeability problem of standard time-based vesting — team members cannot short-sell to neutralize lockup exposure because unlocks depend on sustained price performance, not calendar dates. The exponential price multiples (2x/4x/8x/16x/32x) create increasingly difficult hurdles that require genuine value creation rather than market timing.

## Evidence

- MycoRealms team allocation: 3M tokens (18.9% of total 15.9M supply)
- Five unlock tranches at 2x, 4x, 8x, 16x, 32x ICO price
- 18-month minimum cliff before any unlock eligibility
- Unlock evaluation via 3-month TWAP, not spot price
- Zero team tokens circulating at launch
- If token never reaches 2x, team receives zero allocation

## Comparison to Standard Vesting

Standard time-based vesting (e.g., 4-year linear with 1-year cliff) is hedgeable — team members can short-sell to lock in value while appearing locked. Performance-based unlocks with TWAP settlement make this strategy unprofitable because:

1. Shorting suppresses price, preventing unlock triggers
2. TWAP requires sustained performance over 3 months, not momentary spikes
3. Exponential multiples mean early unlocks don't capture majority of allocation

## Unproven Risks

This structure is untested in practice. Key risks:

- Team may abandon project if early price performance is poor (no guaranteed compensation for work during pre-unlock period)
- Extreme price volatility could trigger unlocks during temporary bubbles despite TWAP smoothing
- 18-month cliff may be too long for early-stage projects with high burn rates, creating team retention risk
- No precedent for whether TWAP-based triggers actually prevent manipulation in low-liquidity token markets

---

Relevant Notes:
- [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked.md]]
- [[dynamic performance-based token minting replaces fixed emission schedules by tying new token creation to measurable outcomes creating algorithmic meritocracy in token distribution.md]]

Topics:
- [[internet-finance/_map]]