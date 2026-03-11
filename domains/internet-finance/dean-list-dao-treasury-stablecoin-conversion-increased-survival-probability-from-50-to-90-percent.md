---
type: claim
domain: internet-finance
description: "Dean's List DAO futarchy proposal modeled treasury de-risking as increasing survival probability from 50% to 90% through stablecoin conversion"
confidence: experimental
source: "Dean's List DAO futarchy proposal analysis, 2024-12-02"
created: 2024-12-20
processed_date: 2024-12-20
depends_on:
  - "MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window.md"
---

# Dean's List DAO treasury stablecoin conversion modeled survival probability increase from 50 to 90 percent

Dean's List DAO (IslandDAO) proposed converting its treasury from volatile SOL and SPL tokens to stablecoins through futarchy governance on the MetaDAO platform using Autocrat v0.3. The proposal's impact analysis modeled longevity probability before and after de-risking:

- **Before de-risking:** 50% survival probability (subject to market volatility)
- **After de-risking:** 90% survival probability (stable reserves secured)

The 40 percentage point increase was attributed to two mechanisms:

1. **Reduction in Risk:** Stablecoins provide immunity to SOL and SPL token price volatility, securing the treasury's value
2. **Operational Buffer:** Locking in $75,000-$87,000 ensures predictable funding for operations and development

**Important caveat:** These survival probability figures are projections from the proposal's impact analysis, not empirical measurements. They represent the proposal author's modeling assumptions about how treasury stability affects DAO longevity. The proposal passed futarchy governance on 2024-12-05, meaning the market validated that the FDV impact (5-20% increase) exceeded the TWAP threshold (>3%), but this does not confirm the survival probability estimates themselves.

The treasury conversion was valued at $75,000-$87,000 at $350 SOL (excluding DEAN tokens). The proposal required TWAP >3% FDV increase; the market-estimated FDV impact of 5-20% ($525,000-$600,000 range from $500,000 baseline) exceeded this threshold.

## Evidence

- Proposal account: `4gaJ8bi1gpNEx6xSSsepjVBM6GXqTDfLbiUbzXbARHW1`
- DAO account: `9TKh2yav4WpSNkFV2cLybrWZETBWZBkQ6WB6qV9Nt9dJ`
- Proposal number: 5
- Autocrat version: 0.3
- Completed/Ended: 2024-12-05
- Treasury size: $75,000-$87,000 at $350 SOL (excluding DEAN tokens)
- Survival probability projection: 50% → 90% (40 percentage point increase)
- FDV projection: $500,000 → $525,000-$600,000 (5-20% increase)
- TWAP requirement: >3% ($515,000 minimum)

---

Relevant Notes:
- MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window.md
- futarchy-governed DAOs converge on traditional corporate governance scaffolding for treasury operations because market mechanisms alone cannot provide operational security and legal compliance.md

Topics:
- domains/internet-finance/_map
- core/mechanisms/_map
