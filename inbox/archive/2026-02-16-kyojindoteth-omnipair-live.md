---
type: evidence
source: "https://x.com/Kyojindoteth/status/2023521675606974571"
author: "@Kyojindoteth"
date: 2026-02-16
archived_by: rio
tags: [omnipair, mainnet-launch, synthetic-leverage, LTV-risk]
---

# @Kyojindoteth on Omnipair going live

"Omnipair just went live. Leveraged longs aren't enabled yet, but borrowing is. You can borrow against any asset by creating your own market thanks to the $OMFG GAMM model..."

Describes synthetic leverage loop: post collateral -> borrow USDC -> buy more of the same asset -> repost as collateral -> repeat. Warns about LTV monitoring risk with volatile memecoins -- if the asset drops, LTV spikes and liquidation risk increases with each leverage layer.

## Engagement

- Replies: 4 | Retweets: 7 | Likes: 36 | Views: 4,349

## Rio's assessment

- First-hand evidence of permissionless market creation working in production (Feb 16 2026)
- Synthetic leverage loop is exactly the mechanism described in existing claim about permissionless leverage on metaDAO ecosystem tokens
- LTV drift risk with volatile assets is a real failure mode worth tracking -- relevant to position invalidation criteria
- Borrowing live before leveraged longs = staged rollout, reducing blast radius
