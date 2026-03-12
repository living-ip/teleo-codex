---
type: claim
domain: internet-finance
description: "Proposer-locked initial liquidity plus 3-5% LP fees create incentive for liquidity provision that grows over proposal duration"
confidence: experimental
source: "MetaDAO AMM proposal by joebuild, 2024-01-24"
created: 2024-01-24
---

# AMM futarchy bootstraps liquidity through high fee incentives and required proposer initial liquidity creating self-reinforcing depth

The proposed AMM futarchy design solves the cold-start liquidity problem through two mechanisms:

1. **Proposer commitment**: "These types of proposals would also require that the proposer lock-up some initial liquidity, and set the starting price for the pass/fail markets."

2. **High fee LP incentives**: 3-5% swap fees that "encourage LPs" to provide additional liquidity

The expected liquidity trajectory is: "Liquidity would start low when the proposal is launched, someone would swap and move the AMM price to their preferred price, and then provide liquidity at that price since the fee incentives are high. Liquidity would increase over the duration of the proposal."

This creates a self-reinforcing cycle where:
- Initial proposer liquidity enables first trades
- High fees from those trades attract additional LPs
- Increased liquidity makes manipulation more expensive (see liquidity-weighted pricing)
- More liquidity attracts more trading volume
- Higher volume generates more fee revenue for LPs

The mechanism addresses the "lack of liquidity" problem identified with CLOBs, where "estimating a fair price for the future value of MetaDao under pass/fail conditions is difficult, and most reasonable estimates will have a wide range. This uncertainty discourages people from risking their funds with limit orders near the midpoint price."

Rated experimental because this is a proposed design not yet deployed. The liquidity bootstrapping logic is sound but requires real-world validation.

---

Relevant Notes:
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions.md]]
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements.md]]
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale.md]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
