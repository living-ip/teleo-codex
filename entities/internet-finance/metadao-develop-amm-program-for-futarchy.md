---
type: entity
entity_type: decision_market
name: "MetaDAO: Develop AMM Program for Futarchy?"
domain: internet-finance
status: passed
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "joebuild"
proposal_url: "https://www.futard.io/proposal/CF9QUBS251FnNGZHLJ4WbB2CVRi5BtqJbCqMi47NX1PG"
proposal_date: 2024-01-24
resolution_date: 2024-01-29
category: "mechanism"
summary: "Proposal to replace CLOB-based futarchy markets with AMM implementation to improve liquidity and reduce state rent costs"
tracked_by: rio
created: 2026-03-11
---

# MetaDAO: Develop AMM Program for Futarchy?

## Summary
Proposal to develop an Automated Market Maker (AMM) program to replace the existing Central Limit Order Book (CLOB) implementation in MetaDAO's futarchy system. The AMM would use liquidity-weighted price over time as the settlement metric, charge 3-5% swap fees to discourage manipulation and incentivize LPs, and reduce state rent costs from 135-225 SOL annually to near-zero.

## Market Data
- **Outcome:** Passed
- **Proposer:** joebuild
- **Created:** 2024-01-24
- **Completed:** 2024-01-29
- **Budget:** 400 META on passing, 800 META on completed migration
- **Timeline:** 3 weeks development + 1 week review

## Technical Scope
**Program changes:**
- Write basic AMM tracking liquidity-weighted average price over lifetime
- Incorporate AMM into autocrat + conditional vault
- Feature to permissionlessly pause AMM swaps and return positions after verdict
- Feature to permissionlessly close AMMs and return state rent SOL
- Loosen time restrictions on proposal creation (currently 50 slots)
- Auto-revert to fail if proposal instructions don't execute after X days

**Frontend integration:**
- Majority of work by 0xNalloK
- Mainnet testing on temporary subdomain before migration

## Significance
This represents a fundamental mechanism upgrade for MetaDAO's futarchy implementation, addressing three core problems with the CLOB approach:

1. **Liquidity:** Wide bid/ask spreads and price uncertainty discouraged limit orders near midpoint
2. **Manipulation resistance:** CLOBs allowed 1 META to move midpoint; VWAP vulnerable to wash trading
3. **Economic sustainability:** 3.75 SOL state rent per market pair (135-225 SOL annually) vs near-zero for AMMs

The proposal explicitly prioritizes simplicity and cost reduction over theoretical purity, noting that "switching to AMMs is not a perfect solution, but I do believe it is a major improvement over the current low-liquidity and somewhat noisy system."

The liquidity-weighted pricing mechanism is novel in futarchy implementations—it weights price observations by available liquidity rather than using simple time-weighted averages, making manipulation expensive when liquidity is high.

## Relationship to KB
- metadao.md — core mechanism upgrade
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — mechanism evolution from TWAP to liquidity-weighted pricing
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — addresses liquidity barrier
- [[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]] — implements explicit fee-based defender incentives