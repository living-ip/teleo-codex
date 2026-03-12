---
type: entity
entity_type: decision_market
name: "Drift: Prioritize Listing META?"
domain: internet-finance
status: passed
parent_entity: "[[drift]]"
platform: "futardio"
proposer: "Nallok, Divide"
proposal_url: "https://www.futard.io/proposal/FXkyJpCVADXS6YZcz1Kppax8Kgih23t6yvze7ehELJpp"
proposal_date: 2024-11-25
resolution_date: 2024-11-28
category: "strategy"
summary: "Drift evaluated futarchy for token listing decisions, proposing to prioritize META token for Spot and Perp trading"
tracked_by: rio
created: 2026-03-11
---

# Drift: Prioritize Listing META?

## Summary
Drift proposed using futarchy to determine whether to prioritize listing the META token (MetaDAO's governance token) for Spot and Perpetual trading. The proposal framed this as an experiment in decentralized listing processes, arguing that futarchy could empower community participation, improve governance utilization, and create a more optimal allocation of development resources compared to traditional listing decisions.

## Market Data
- **Outcome:** Passed
- **Proposer:** Nallok, Divide
- **Proposal Account:** FXkyJpCVADXS6YZcz1Kppax8Kgih23t6yvze7ehELJpp
- **DAO Account:** 8ABcEC2SEaqi1WkyWGtd2QbuWmkFryYnV1ispBUSgY2V
- **Autocrat Version:** 0.3
- **Created:** 2024-11-25
- **Completed:** 2024-11-28

## Context
META had limited liquidity at proposal time:
- 7-day average daily volume: $199.7k
- 30-day volume: $7.4M
- FDV: $79.9M
- Only CEX listing: CoinEX
- Token address: METADDFL6wWMWEoKTFJwcThTbUmtarRJZjRpzUvkxhr

The proposal acknowledged significant risks from low liquidity and limited trading volume, noting susceptibility to volatility and price manipulation. Drift committed to a 1x FUEL multiplier for spot deposits if the listing proceeded.

## Significance
This represents Drift's first documented use of futarchy for token listing decisions, testing whether prediction markets can replace traditional listing committees. The proposal explicitly positioned futarchy as superior to standard voting for surfacing community preferences and allocating development resources. The META-Drift connection creates a potential feedback loop where trading META perpetuals on Drift could increase liquidity for MetaDAO's own futarchy decision markets.

## Relationship to KB
- [[drift]] - governance decision on listing strategy
- [[metadao]] - token being evaluated for listing
- [[futardio]] - platform hosting the decision market
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] - this proposal passed with minimal market activity
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] - liquidity concerns explicitly noted as risk factor
