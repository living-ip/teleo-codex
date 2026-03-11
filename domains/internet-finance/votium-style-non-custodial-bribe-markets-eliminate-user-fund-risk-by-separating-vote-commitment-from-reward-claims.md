---
type: claim
claim_type: mechanism
domains: [internet-finance]
confidence: certain
created: 2026-03-11
processed_date: 2026-03-11
---

# Votium-style non-custodial bribe markets eliminate user fund risk by separating vote commitment from reward claims

Votium's bribe market architecture, operating on Ethereum since 2021, eliminates custodial fund risk by allowing users to commit votes on-chain while claiming rewards from a separate non-custodial contract, ensuring users never transfer token custody to the bribe platform.

**Mechanism verified from Votium's live implementation**: Vote commitments are recorded on-chain, bribers deposit rewards into smart contracts, and users claim proportional rewards after voting rounds complete—all without transferring voting token custody.

**Application to Solana**: The proposal suggests adapting this architecture to Solana liquid staking tokens, which is likely feasible given similar on-chain voting primitives, though implementation details would differ.

## Source
- [[2023-11-18-futardio-proposal-develop-a-lst-vote-market]]