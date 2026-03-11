---
type: claim
domain: internet-finance
title: RWA yield pass-through DEX combines swap fees embedded yield and protocol incentives
description: Areal Finance proposes a DEX where LPs earn three simultaneous yield streams, but the mechanism mirrors existing approaches (Curve v2, Pendle) and impermanent loss remains unresolved.
confidence: speculative
created: 2026-03-11
processed_date: 2026-03-11
source: "Areal Finance pitch deck, futard.io launch 2026-03-05"
---

# RWA yield pass-through DEX combines swap fees embedded yield and protocol incentives

Areal Finance proposes a DEX model where liquidity providers earn three simultaneous yield streams: traditional swap fees, embedded yield from appreciating RWA tokens, and protocol incentives. The pitch deck claims this creates superior LP economics compared to standard DEXs.

## Evidence

### Proposed Mechanism

The March 2026 pitch deck describes:

- **Swap fees**: Standard AMM trading fees from RWT/stablecoin pairs
- **Embedded yield**: LPs holding RWT in pools benefit from token appreciation as underlying RWAs generate yield
- **Protocol incentives**: Additional RWT emissions to bootstrap liquidity

However, the "embedded yield" component is mechanically just holding an appreciating asset in a liquidity pool—this is the standard consequence of providing liquidity with any yield-bearing token, not novel architecture. If RWT appreciates due to underlying yield, LPs holding RWT in pools benefit, but this is not a protocol innovation; it's basic asset economics.

### Unproven Mechanisms and Existing Solutions

The claim assumes:

1. **Impermanent loss mitigation**: That RWT appreciation offsets IL from price divergence with stablecoin pairs (unproven for RWA volatility profiles). This is a known problem with known partial solutions: Curve v2 (correlated asset pools) and Pendle (yield splitting into principal and yield tokens) already address this. Areal's pitch deck does not reference either approach, suggesting either unfamiliarity with the literature or a genuinely different mechanism—neither of which is explained.

2. **Yield capture efficiency**: That LPs can capture embedded yield without withdrawing from pools (true for rebase/appreciation tokens, but not unique to Areal)

3. **Sustainable incentives**: That protocol emissions can bootstrap liquidity without diluting RWT value

4. **Competitive advantage**: That triple-yield model attracts more liquidity than existing RWA protocols. The failed futarchy raise ($1,350 of $50,000 target, 2.7%) suggests investors are skeptical of the value proposition.

The pitch deck provides no technical specification for how yield pass-through works beyond standard appreciation mechanics. There is no evidence of actual innovation beyond marketing positioning.

### Market Validation

The failed futarchy raise suggests investors are skeptical of the value proposition. Possible interpretations:

- Triple-yield claim seen as marketing rather than technical innovation
- Concerns about impermanent loss with RWA volatility
- Existing yield-bearing token DEXs (e.g., stETH pools) already provide similar economics
- RWA custody/legal risks outweigh yield benefits

## Related Claims

- [[Areal Finance unifies RWA liquidity through single appreciating token]]
- [[AI agent portfolio management requires protocol architecture designed for autonomous operation]]
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]]

## Sources

- Areal Finance pitch deck, futard.io launch 2026-03-05 (self-reported marketing material)
- Futarchy launch results, March 5, 2026
