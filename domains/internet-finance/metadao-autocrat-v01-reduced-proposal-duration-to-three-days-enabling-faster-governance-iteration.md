---
type: claim
domain: internet-finance
description: "MetaDAO's Autocrat v0.1 made proposal duration configurable with 3-day default to accelerate futarchy feedback loops"
confidence: experimental
source: "MetaDAO Autocrat v0.1 migration proposal, futard.io, 2023-12-03"
created: 2024-01-15
---

# MetaDAO Autocrat v0.1 made proposal duration configurable with 3-day default to accelerate futarchy feedback loops

The Autocrat v0.1 upgrade introduced configurable proposal slots with a 3-day default duration (measured in Solana slots), down from an unspecified longer period in v0. The proposer explicitly stated the rationale: "to allow for quicker feedback loops."

This represents a deliberate operational tuning of the futarchy mechanism based on deployment experience. The proposal migrated 990,000 META, 10,025 USDC, and 5.5 SOL from the v0 treasury to the v0.1 treasury, indicating this was a significant protocol upgrade rather than a minor parameter adjustment.

## Evidence

From the proposal text: "Most importantly, I've made the slots per proposal configurable, and changed its default to 3 days to allow for quicker feedback loops."

The proposal passed and completed on 2023-12-13, ten days after creation on 2023-12-03. Code changes are documented at: https://github.com/metaDAOproject/meta-dao/pull/36/files

## Implementation Constraints

The upgrade was deployed without verifiable builds due to unspecified constraints. The proposer acknowledged this created counterparty risk: "You'd be placing trust in me that I didn't introduce a backdoor, not on the GitHub repo, that allows me to steal the funds." The proposer committed to using verifiable builds for future versions, indicating this was a known limitation of the deployment process rather than a permanent architectural choice.

## Relevance to Futarchy Design

The 3-day window serves as the settlement period for the conditional token markets that implement futarchy. By making this configurable and setting a shorter default, MetaDAO prioritized faster decision velocity over longer deliberation periods, suggesting that production futarchy implementations must balance theoretical design with operational constraints around market liquidity and feedback speed.

---

Relevant Notes:
- [[futarchy implementations must simplify theoretical mechanisms for production adoption because original designs include impractical elements that academics tolerate but users reject.md]]
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale.md]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
