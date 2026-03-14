---
type: claim
domain: internet-finance
description: "FutureDAO routes 100% of migration fees to staked Champions NFT holders via SPL-404 rather than capturing revenue in DAO treasury, creating alternative revenue distribution model"
confidence: experimental
source: "FutureDAO proposal on futard.io, 2024-06-05"
created: 2024-06-05
---

# Token migration fees distributed to staked NFT holders create revenue sharing without direct DAO treasury capture

FutureDAO's token migrator directs 100% of migration fees to Champions NFT holders who stake their NFTs in the Future Protocol NFT Portal, rather than capturing revenue in the DAO treasury. Fees are taken as inflation on the new token mint and delivered to staked NFT holders over 30 days. The fee structure is tiered by market cap: 2% for projects <$1M FDMC, 1.5% for <$5M, 1% for <$20M. The proposal explicitly states "FutureDAO does not benefit monetarily from these token migrations. All fees are directed to the Champions NFT holders."

This creates a revenue distribution model where the DAO provides infrastructure but captures no direct monetary benefit, instead channeling all value to NFT holders who must actively stake (using SPL-404 standard) to be eligible. The staking requirement creates a participation gate while the 30-day distribution period smooths token delivery. For example, if a project with 1 billion tokens and $2M FDMC migrates, the new supply would be 1.12 billion tokens with 15 million (1.5% of new supply) delivered to Champions NFT stakers over 30 days.

This differs from typical protocol fee models where revenue accrues to the protocol treasury or is distributed to all token holders. By routing fees exclusively to staked NFT holders, FutureDAO creates a distinct asset class (the Champions NFT) that captures protocol revenue independently of governance token holdings. The SPL-404 staking mechanism bridges NFT ownership with fungible token revenue streams.

## Evidence
- Proposal states: "FutureDAO does not benefit monetarily from these token migrations. All fees are directed to the Champions NFT holders"
- "To be eligible for rewards, the NFTs must be staked (SPL-404) within the Future Protocol NFT Portal"
- Fee structure: "For projects with FDMC <$1M = 2%, For projects with FDMC <$5M = 1.5%, For projects with FDMC <$20M = 1%"
- "Fees are taken as inflation on the $newTOKEN mint and are delivered to the Champions NFT DAO over a 30 day period"
- Example calculation: "if $MERTD had 1 billion tokens in circulation with an FDMC of $2M, the new $FUTURE supply would be 1.12 billion tokens... 15 million tokens delivered to the Champions NFT DAO"

---

Topics:
- domains/internet-finance/_map
