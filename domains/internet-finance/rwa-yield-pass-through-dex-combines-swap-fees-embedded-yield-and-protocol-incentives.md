---
type: claim
domain: internet-finance
description: "DEX architecture where LPs earn three simultaneous revenue streams instead of swap fees alone"
confidence: speculative
source: "Areal Finance pitch deck, futard.io launch 2026-03-05"
created: 2026-03-11
---

# RWA yield pass-through DEX architecture claims to combine swap fees embedded yield and protocol incentives into triple revenue stream for liquidity providers

Areal Finance proposes a DEX architecture where liquidity providers earn three simultaneous revenue streams: traditional swap fees, embedded yield from the RWT token itself (which appreciates as underlying RWA projects generate revenue), and protocol incentives. This differs from standard AMM designs where LPs earn only swap fees and optional liquidity mining rewards.

The claimed mechanism: RWT is designed as an appreciating asset — as real-world assets generate yield (rent, interest, revenue share), that value accrues to RWT holders. LPs providing RWT liquidity would therefore earn:
1. Swap fees from trading activity
2. Continuous yield appreciation from holding RWT in the pool
3. Protocol incentives (ARL token emissions)

This addresses a structural problem in RWA-specific DEXs: standard AMMs create opportunity cost for yield-bearing assets. LPs must choose between earning swap fees (by providing liquidity) or earning underlying yield (by holding). Areal's architecture claims to eliminate this tradeoff.

## Evidence

**Stated design:**
- "Yield pass-through DEX — LPs earn swap fees + embedded token yield + protocol incentives" (pitch deck)
- Native DEX receives 20% of $50k raise ($10,000) for initial liquidity
- Roadmap includes concentrated liquidity pools (Q3-Q4 2026)

## Unproven Mechanisms

**No implementation evidence:** This DEX architecture has not been implemented or tested. The claim that LPs can earn "embedded token yield" while providing liquidity depends on:
- RWT actually appreciating (requires RWA projects generating real yield)
- Pool design that doesn't dilute yield through impermanent loss
- Sufficient trading volume to generate meaningful swap fees

**Liquidity bootstrapping problem:** $10,000 initial DEX liquidity is insufficient for meaningful trading activity. The triple revenue stream only matters if there's enough volume to generate material swap fees and enough RWT appreciation to make embedded yield significant.

**Impermanent loss unresolved:** If RWT appreciates significantly, LPs suffer impermanent loss relative to holding RWT directly. The pitch deck does not address whether the "triple revenue stream" overcomes this structural disadvantage.

---

Relevant Notes:
- [[stablecoin flow velocity is a better predictor of DeFi protocol health than static TVL because flows measure capital utilization while TVL only measures capital parked]]
- [[optimal token launch architecture is layered not monolithic because separating quality governance from price discovery from liquidity bootstrapping from community rewards lets each layer use the mechanism best suited to its objective]]

Topics:
- [[domains/internet-finance/_map]]
