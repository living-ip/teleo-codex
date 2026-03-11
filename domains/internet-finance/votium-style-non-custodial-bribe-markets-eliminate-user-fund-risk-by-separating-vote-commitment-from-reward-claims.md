---
type: claim
domain: internet-finance
description: "Votium's architecture proves bribe platforms can be non-custodial by letting users claim rewards after voting without depositing funds"
confidence: likely
source: "futard.io MetaDAO LST Vote Market proposal referencing Votium.app, 2023-11-18"
created: 2025-01-14
---

# Votium-style non-custodial bribe markets eliminate user fund risk by separating vote commitment from reward claims

Votium's bribe platform architecture on Ethereum demonstrates that vote markets can be structured non-custodially, eliminating the risk of user fund loss. The key design separates vote commitment from reward distribution: users vote with their existing governance tokens (veCRV), then claim pro-rata rewards from validator-deposited pools after the voting period ends.

In a hack scenario, only the validator-deposited bribes are at risk—never user funds. This is because users never deposit their governance tokens into the platform; they simply direct their existing votes and later claim rewards.

## Votium Mechanism

The Votium flow works as follows:
1. Projects wanting votes create pools specifying target Curve pools and deposit bribe tokens
2. veCRV holders vote for those Curve pools using their existing tokens (no deposit required)
3. After voting period ends, voters claim pro-rata share of bribe pool based on their vote weight
4. Alternative: users can delegate to Votium to auto-spread votes across pools

## Application to Solana LST Market

The MetaDAO proposal adapts this to Marinade:
1. Validators create monthly pools with price-per-vote and SOL deposits
2. MNDE/mSOL holders direct stake to validators (via existing Marinade mechanism)
3. After one month, stakers claim SOL bribes from pools

The non-custodial property holds because directing stake uses Marinade's native mechanism—no new custody relationship is created.

## Evidence

- Votium operates on Ethereum as non-custodial veCRV bribe market (observed, live protocol)
- Users vote with existing governance tokens, never deposit principal
- Only validator-deposited bribes are at platform risk
- MetaDAO proposal explicitly cites "non-custodial" as main advantage: "there would be no risk of user fund loss. In the event of a hack, the only thing that could be stolen are the bribes deposited to the pools."
- Votium has operated since 2021 without reported custodial fund loss incidents

---

Relevant Notes:
- [[marinade-directed-stake-creates-1-7m-annual-validator-bribe-market-through-213m-votable-stake]]
- [[decision markets make majority theft unprofitable through conditional token arbitrage]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
