---
type: claim
domain: internet-finance
description: "Dean's List DAO passed a futarchy proposal to increase liquidity fees 20x (0.25% to 5%) projecting $19k-$25k annual treasury growth despite assuming 20-30% volume decline"
confidence: experimental
source: "Dean's List DAO proposal B8WLuXqoBb3hRD9XBCNuSqxDqCXCixqRdKR4pVFGzNP, passed 2025-01-17"
created: 2025-01-14
processed_date: 2025-01-14
depends_on:
  - "MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window"
  - "coin price is the fairest objective function for asset futarchy"
---

# Dean's List DAO passed futarchy proposal to increase swap fees 20x, projecting $19k-$25k annual treasury growth despite 20-30% volume decline assumption

Dean's List DAO passed a futarchy-governed proposal (B8WLuXqoBb3hRD9XBCNuSqxDqCXCixqRdKR4pVFGzNP) on 2025-01-17 to increase its swap liquidity fee from 0.25% dynamic pool fee to a 5% DLMM base fee (with potential escalation to 10%), projecting annual treasury growth of $19,416 to $24,960 despite assuming 20-30% trading volume decline.

## Evidence

**Current metrics (06 Dec 2024 - 06 Jan 2025):**
- Monthly trading volume: 46,228 USDC
- Average daily volume: ~1,541 USDC  
- Current monthly fee revenue (0.25%): ~3.85 USDC
- Treasury: ~$80,000 (including native tokens)
- MCAP: $298,889 (adjusted -5% for volatility from proposal creation)

**Rationale:** The proposal stated current 0.25% fees generated only ~3.85 USDC daily, insufficient for operational costs and development reserves. At 5% fees, even with 30% volume decrease (conservative scenario), monthly fee revenue would increase to 1,618 USDC.

**Projected scenarios (all assume 5% fee rate):**

1. Conservative (30% volume decrease):
   - New monthly volume: 32,360 USDC
   - New monthly fee revenue: 1,618 USDC
   - Annual treasury growth: ~$19,416
   - Projected MCAP: $328,778 (+10%)

2. Moderate (20% volume decrease):
   - New monthly volume: 36,982 USDC
   - New monthly fee revenue: 1,849 USDC
   - Annual treasury growth: ~$22,188
   - Projected MCAP: $334,445 (+11.9%)

3. Optimistic (10% volume decrease):
   - New monthly volume: 41,605 USDC
   - New monthly fee revenue: 2,080 USDC
   - Annual treasury growth: ~$24,960
   - Projected MCAP: $340,112 (+13.8%)

The proposal assumes a 2.5x treasury-to-MCAP ratio for valuation projections.

## Market Structure Hypothesis

The proposal theorizes a tiered market structure would emerge:
- Large trades prefer DAO pool (high liquidity, accept 5% fees, less slippage)
- Small trades use individual LP pools (lower fees ~0.25%, acceptable liquidity)
- DAO captures revenue from size-requiring trades
- Contributors incentivized to provide smaller pools

This represents the proposer's untested theory of market segmentation.

## Implementation

- DLMM pool with 5% base fee, bin step of 80
- Quote token changed from mSOL back to SOL
- Fee reclaiming monthly (first week) to main treasury
- Implemented through DAO treasurer hot wallet
- Immediate effect (1-2 days post-passage)

## Limitations

The proposal's projections depend on:
- Trading volume remaining stable or declining predictably (20-30% range)
- Market participants accepting higher fees for larger trades
- No competing pools emerging at lower fee rates
- The 2.5x treasury-to-MCAP ratio holding as a valuation model

No post-implementation data on actual volume impact or fee revenue is available in the source.

---

Relevant Notes:
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]]
- [[coin price is the fairest objective function for asset futarchy]]
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]]
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
