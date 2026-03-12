---
type: claim
domain: internet-finance
description: "SPL 404 is a Solana token standard that creates bidirectional swaps between fungible governance tokens and NFTs, letting DAOs earn secondary revenue from swap activity without direct NFT treasury sales."
confidence: experimental
source: "Rio; FutureDAO Champions NFT Collection proposal (2024-07-18, passed 2024-07-22)"
created: 2026-03-12
depends_on:
  - "MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale"
---

# SPL 404 enables fungible-NFT swap revenue for DAOs by bridging governance tokens and NFT liquidity on Solana

SPL 404 is a Solana token standard that allows bidirectional swaps between fungible tokens and NFTs. For DAOs, this creates a monetization path that doesn't require direct NFT sales from the treasury: instead, when community members swap their governance tokens (e.g., $FUTURE) into NFT form or back, the protocol earns revenue from the swap mechanics. Secondary market royalties then compound on top.

FutureDAO's Champions NFT Collection proposal (passed July 2024) illustrates this architecture in practice. Of the $10,000 design budget, $3,000 was earmarked for non-artistic technical work — $1,000 for smart contract development and $2,000 for metadata integration — required specifically to enable SPL 404 swap mechanics. The proposal projected two revenue streams: SPL 404 swap fees and secondary market royalties. Neither stream requires the DAO to sell NFTs directly; revenue flows from market activity rather than treasury disposition.

This matters for DAO treasury design. Traditional NFT monetization requires either initial sales (one-time, often fraught with launch mechanics) or secondary royalties (declining in enforcement reliability post-Blur). SPL 404 adds a third path: perpetual swap revenue tied to the governance token's own liquidity. As long as members convert between token and NFT form, the swap mechanism generates revenue.

The limitation is that SPL 404 swap revenue is indirect and hard to project — it depends on community demand for the NFT form specifically. If members prefer holding the fungible token, swap volume is minimal regardless of collection quality.

---

Relevant Notes:
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — FutureDAO runs on MetaDAO's futarchy infrastructure; SPL 404 extends the token utility layer
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — the governance mechanism that approved this SPL 404-enabled NFT spend

Topics:
- [[_map]]
