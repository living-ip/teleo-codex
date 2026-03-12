---
type: claim
domain: internet-finance
description: "AMM architecture eliminates the 3.75 SOL per market pair state rent cost that CLOBs require, reducing annual costs from 135-225 SOL to near-zero"
confidence: proven
source: "MetaDAO proposal by joebuild, 2024-01-24"
created: 2024-01-24
---

# AMM futarchy reduces state rent costs from 135-225 SOL annually to near-zero by replacing CLOB market pairs

MetaDAO's CLOB-based futarchy implementation incurs 3.75 SOL in state rent per pass/fail market pair, which cannot be recouped under the current system. At 3-5 proposals per month, this creates annual costs of 135-225 SOL ($11,475-$19,125 at January 2024 prices). AMM implementations cost "almost nothing in state rent" because they use simpler state structures.

This cost reduction is structural, not marginal—the CLOB architecture requires order book state that scales with market depth, while AMMs only track pool reserves and cumulative metrics. The proposal notes that state rent can be recouped by "permissionlessly closing the AMMs and returning the state rent SOL once there are no positions," creating a complete cost recovery mechanism unavailable to CLOBs.

The 94-99% cost reduction (from 135-225 SOL to near-zero) makes futarchy economically viable at higher proposal frequencies, removing a constraint on governance throughput.

---

Relevant Notes:
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window.md]]
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale.md]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
