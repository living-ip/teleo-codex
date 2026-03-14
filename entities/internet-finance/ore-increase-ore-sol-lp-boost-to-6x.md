---
type: entity
entity_type: decision_market
name: "ORE: Increase ORE-SOL LP boost multiplier to 6x"
domain: internet-finance
status: passed
parent_entity: "[[ore]]"
platform: "futardio"
proposer: "proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2"
proposal_url: "https://www.futard.io/proposal/A19yLRVqxvUf4cTDm6mKNKadasd7YSYDrzk6AYEyubAC"
proposal_date: 2024-10-22
resolution_date: 2024-10-26
category: "mechanism"
summary: "Increase ORE-SOL LP boost multiplier from 4x to 6x to enhance liquidity and gather data on boost mechanism impacts"
tracked_by: rio
created: 2026-03-11
---

# ORE: Increase ORE-SOL LP boost multiplier to 6x

## Summary
This proposal increased the boost multiplier for ORE-SOL liquidity providers from 4x to 6x, aiming to enhance liquidity depth by offering greater incentives that counterbalance the risks LPs face in volatile trading pairs. The proposal explicitly framed itself as a data-gathering exercise to understand how boost multiplier changes affect liquidity markets, and as a low-risk introduction to futarchy for the ORE community.

## Market Data
- **Outcome:** Passed
- **Proposer:** proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2
- **Proposal Account:** A19yLRVqxvUf4cTDm6mKNKadasd7YSYDrzk6AYEyubAC
- **DAO Account:** 7XoddQu6HtEeHZowzCEwKiFJg4zR3BXUqMygvwPwSB1D
- **Autocrat Version:** 0.3
- **Completed:** 2024-10-26

## Context
Boosts are ORE's native incentive mechanism for converting staked capital into "virtual hashpower" that multiplies mining rewards. At the time of this proposal (one week after boost launch), ORE supported three boost multipliers:
- ORE-SOL LP: 4x
- ORE-ISC LP: 4x  
- ORE: 2x

The initial boost launch had already driven significant TVL increases in the targeted liquidity pools.

## Objectives
The proposal identified three explicit goals:

1. **Increase TVL in ORE-SOL pool** — Higher multipliers offer greater incentives to counterbalance LP risk in volatile pairs, potentially increasing market depth

2. **Gather mechanism data** — As the first-ever change to any boost multiplier, this would generate data on how multiplier adjustments affect liquidity behavior

3. **Introduce futarchy to ORE community** — Explicitly positioned as a "low-risk testrun" for the community to learn futarchy mechanics before considering integration into critical systems like the supply function

## Significance
This proposal demonstrates futarchy's application to operational parameter tuning rather than binary strategic decisions. The framing as a learning exercise ("gather data," "low-risk testrun") suggests the decision's value lay partly in mechanism familiarization rather than purely in the optimal multiplier level. This represents futarchy being used for incremental optimization and organizational learning, not just high-stakes governance.

## Relationship to KB
- [[ore]] — parent entity, governance decision on boost mechanism
- [[futardio]] — platform used for decision market
- MetaDAOs-futarchy-implementation-shows-limited-trading-volume-in-uncontested-decisions — extends pattern to operational parameters
- [[futarchy-markets-can-price-cultural-spending-proposals-by-treating-community-cohesion-and-brand-equity-as-token-price-inputs]] — demonstrates indirect token-price reasoning through liquidity depth