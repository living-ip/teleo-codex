---
type: claim
domain: internet-finance
description: "TriDash's house mode shows prediction markets can bootstrap through protocol-backed counterparty provision when peer liquidity is insufficient"
confidence: experimental
source: "TriDash game modes description via futard.io, 2026-03-05"
created: 2026-03-11
---

# House mode betting against protocol enables prediction markets to function with uneven liquidity by having the platform take counterparty risk

Prediction markets require balanced liquidity on both sides to function as information aggregation mechanisms. TriDash implements "house mode" as a proposed solution to the cold-start problem: when only one side of a market has participants, the protocol itself acts as counterparty.

The project describes two gameplay modes:

**Pool Mode:** "Players bet against each other. Winners split the pool." This is the traditional prediction market structure where participants provide liquidity to each other.

**House Mode:** "Players bet against the protocol when only one side of a market is available. This ensures rounds can still run even when player liquidity is uneven during the early stages of the protocol."

This design choice reveals a fundamental tension in prediction market bootstrapping. Pure peer-to-peer markets cannot function without bilateral liquidity, but requiring matched liquidity before any market can run creates a chicken-and-egg problem. House mode proposes to solve this by having the protocol treasury absorb counterparty risk.

The mechanism is explicitly positioned as temporary infrastructure: "during the early stages of the protocol" suggests house mode is meant to be phased out as player pools grow. However, the project's funding allocation includes "House Liquidity — ~$1,000 / month" as an ongoing operational expense, indicating anticipated sustained need for protocol-backed liquidity provision.

This approach differs from automated market makers (which provide continuous liquidity through bonding curves) by maintaining the binary bet structure while substituting protocol capital for missing counterparties.

## Evidence

- TriDash game modes: Pool mode (peer-to-peer) vs. House mode (protocol counterparty)
- Explicit justification: "ensures rounds can still run even when player liquidity is uneven"
- Ongoing operational expense: $1,000/month allocated to "bootstrapping gameplay liquidity" with note that "liquidity expands as player pools and protocol revenue grow"
- Total monthly burn estimate of ~$8,000 includes house liquidity as second-largest line item after development (~$5,000)

## Limitations and Unresolved Questions

House mode fundamentally changes the mechanism from information aggregation to casino-style betting. When the protocol is counterparty, it has direct financial interest in outcomes, creating potential manipulation incentives that don't exist in pure peer-to-peer markets. This undermines the epistemic function of prediction markets.

The need for ongoing house liquidity funding (rather than one-time bootstrap) suggests the peer-to-peer model may not be sustainable at 60-second resolution timescales. If house mode becomes permanent rather than transitional, TriDash is effectively a gambling platform rather than a prediction market.

The project's failure to reach funding targets ($1,740 of $50,000 raised) may indicate investor skepticism about whether house mode can successfully transition to sustainable peer liquidity, or whether the model is viable at all. No operational data exists to validate the house mode mechanism in practice.

---

Relevant Notes:
- [[futarchy-adoption-faces-friction-from-token-price-psychology-proposal-complexity-and-liquidity-requirements]]
- [[MetaDAOs-futarchy-implementation-shows-limited-trading-volume-in-uncontested-decisions]]

Topics:
- [[internet-finance/_map]]