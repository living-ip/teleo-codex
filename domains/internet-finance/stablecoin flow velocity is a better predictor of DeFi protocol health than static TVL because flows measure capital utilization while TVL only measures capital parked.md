---
type: claim
domain: internet-finance
description: "oxranga argues stablecoin flows > TVL as the primary DeFi health metric — a snapshot of capital parked tells you less than a movie of capital moving, and protocols with high flow velocity but low TVL may be healthier than those with high TVL but stagnant capital"
confidence: speculative
source: "rio, based on @oxranga X archive (Mar 2026)"
created: 2026-03-09
depends_on:
  - "@oxranga: 'stablecoin flows > TVL' as metric framework"
  - "DeFi industry standard: TVL as primary protocol health metric"
---

# Stablecoin flow velocity is a better predictor of DeFi protocol health than static TVL because flows measure capital utilization while TVL only measures capital parked

TVL (Total Value Locked) is the default metric for evaluating DeFi protocols. oxranga (Solomon Labs co-founder) argues this is fundamentally misleading: "stablecoin flows > TVL." A protocol with $100M TVL and $1M daily flows is less healthy than a protocol with $10M TVL and $50M daily flows — the first is a parking lot, the second is a highway.

The insight maps to economics directly. TVL is analogous to money supply (M2) while flow velocity is analogous to monetary velocity (V). Since GDP = M × V, protocol economic activity depends on both capital present and capital moving. TVL-only analysis is like measuring an economy by its savings rate and ignoring all transactions.

This matters for ownership coin valuation. Since [[coin price is the fairest objective function for asset futarchy]], and coin price should reflect underlying economic value, metrics that better capture economic activity produce better price signals. If futarchy markets are pricing based on TVL (capital parked) rather than flow velocity (capital utilized), they may be mispricing protocols.

oxranga's complementary insight — "moats were made of friction" — connects this to our disruption framework. Since [[transaction costs determine organizational boundaries because firms exist to economize on the costs of using markets and the boundary shifts when technology changes the relative cost of internal coordination versus external contracting]], DeFi protocols that built moats on user friction (complex UIs, high switching costs) lose those moats as composability improves. Flow velocity becomes the durable metric because it measures actual utility, not friction-trapped capital.

## Evidence

- @oxranga X archive (Mar 2026): "stablecoin flows > TVL" framework
- DeFi industry practice: TVL reported by DefiLlama, DappRadar as primary metric
- Economic analogy: monetary velocity (V) as better economic health indicator than money supply (M2) alone
- oxranga: "moats were made of friction" — friction-based TVL is not durable

## Challenges

- Flow velocity can be gamed more easily than TVL — wash trading inflates flows without economic activity, while TVL requires actual capital commitment
- TVL and flow velocity measure different things: TVL reflects capital confidence (willingness to lock), flows reflect capital utility (willingness to transact). Both matter.
- The claim is framed as "better predictor" but no empirical comparison exists — this is a conceptual argument from analogy to monetary economics, not a tested hypothesis
- High flow velocity with low TVL could indicate capital that doesn't trust the protocol enough to stay — fleeting interactions rather than sustained engagement

---

Relevant Notes:
- [[coin price is the fairest objective function for asset futarchy]] — better protocol metrics produce better futarchy price signals
- [[transaction costs determine organizational boundaries because firms exist to economize on the costs of using markets and the boundary shifts when technology changes the relative cost of internal coordination versus external contracting]] — oxranga's "moats were made of friction" maps directly

Topics:
- [[internet finance and decision markets]]
