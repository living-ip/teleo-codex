---
type: claim
domain: internet-finance
description: "3-5% swap fees combined with liquidity-weighted averaging make wash trading prohibitively expensive as a manipulation mechanism in futarchy AMMs"
confidence: experimental
source: "MetaDAO AMM proposal by joebuild, 2024-01-24"
created: 2024-01-24
---

# Liquidity-weighted price over time solves futarchy manipulation through wash trading costs because high fees make price movement expensive

MetaDAO's proposed AMM futarchy uses "liquidity-weighted price over time" as the settlement metric, where "the more liquidity that is on the books, the more weight the current price of the pass or fail market is given." This is paired with 3-5% swap fees that "aggressively discourage wash-trading and manipulation."

The mechanism works because:
1. Moving price requires swaps that pay the high fee
2. The liquidity weighting means manipulation attempts when liquidity is high are both expensive (large swaps needed) and heavily weighted in the final calculation
3. The fee revenue accrues to LPs, creating a natural defender class that profits from manipulation attempts

The proposal explicitly contrasts this with CLOB vulnerabilities: "With CLOBs there is always a bid/ask spread, and someone with 1 $META can push the midpoint towards the current best bid/ask" and "VWAP can be manipulated by wash trading."

This is rated experimental rather than proven because the mechanism has not yet been deployed or tested against real manipulation attempts. The theoretical argument is sound but requires empirical validation.

---

Relevant Notes:
- futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders.md
- MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window.md
- optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles.md

Topics:
- domains/internet-finance/_map
- core/mechanisms/_map
