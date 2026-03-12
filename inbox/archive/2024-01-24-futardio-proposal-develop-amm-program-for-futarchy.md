---
type: source
title: "Futardio: Develop AMM Program for Futarchy?"
author: "futard.io"
url: "https://www.futard.io/proposal/CF9QUBS251FnNGZHLJ4WbB2CVRi5BtqJbCqMi47NX1PG"
date: 2024-01-24
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2026-03-11
claims_extracted: ["amm-futarchy-reduces-state-rent-costs-from-135-225-sol-annually-to-near-zero-by-replacing-clob-market-pairs.md", "liquidity-weighted-price-over-time-solves-futarchy-manipulation-through-wash-trading-costs-because-high-fees-make-price-movement-expensive.md", "amm-futarchy-bootstraps-liquidity-through-high-fee-incentives-and-required-proposer-initial-liquidity-creating-self-reinforcing-depth.md"]
enrichments_applied: ["MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window.md", "MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions.md", "futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements.md", "futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "High-quality technical proposal with clear problem statement, quantified costs, and novel mechanism design (liquidity-weighted pricing). Three claims extracted focus on: (1) state rent cost reduction, (2) manipulation resistance through fee structure, (3) liquidity bootstrapping mechanism. Four enrichments extend existing futarchy mechanism claims with implementation details. Created decision_market entity for the proposal itself plus new entity for joebuild as technical lead. Updated metadao.md and nallok.md timelines."
---

## Proposal Details
- Project: MetaDAO
- Proposal: Develop AMM Program for Futarchy?
- Status: Passed
- Created: 2024-01-24
- URL: https://www.futard.io/proposal/CF9QUBS251FnNGZHLJ4WbB2CVRi5BtqJbCqMi47NX1PG
- Description: Develop AMM Program for Futarchy?

## Summary

### 🎯 Key Points  
The proposal aims to develop an Automated Market Maker (AMM) program for Futarchy to enhance liquidity, reduce susceptibility to manipulation, and minimize state rent costs associated with current Central Limit Order Books (CLOBs).

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
Stakeholders, including liquidity providers and MetaDAO users, will benefit from improved trading conditions and reduced costs associated with market creation.

#### 📈 Upside Potential  
The implementation of an AMM could significantly increase liquidity and trading activity by providing a more efficient and user-friendly market mechanism.

#### 📉 Risk Factors  
There are inherent risks associated with smart contract deployment and uncertain adoption rates from liquidity providers, which could affect the overall success of the AMM.

## Content

## Overview
In the context of Futarchy, CLOBs have a couple of drawbacks:
1. Lack of liquidity
2. Somewhat susceptible to manipulation
3. Pass/fail market pairs cost 3.75 SOL in state rent, which cannot currently be recouped

### Lack of liquidity
Estimating a fair price for the future value of MetaDao under pass/fail conditions is difficult, and most reasonable estimates will have a wide range. This uncertainty discourages people from risking their funds with limit orders near the midpoint price, and has the effect of reducing liquidity (and trading). This is the main reason for switching to AMMs.

### Somewhat susceptible to manipulation
With CLOBs there is always a bid/ask spread, and someone with 1 $META can push the midpoint towards the current best bid/ask. Though this could be countered with a defensive for-profit bot, and as Proph3t puts it: this is a 1/n problem.

Still, users can selectively crank the market of their choosing. Defending against this (cranking markets all the time) would be a bit costly.

Similarly, VWAP can be manipulated by wash trading. An exponential moving average has the same drawbacks in this context as the existing linear-time system.

### State rent costs
If we average 3-5 proposals per month, then annual costs for market creation is 135-225 SOL, or $11475-$19125 at current prices. AMMs cost almost nothing in state rent.

### Solution
An AMM would solve all of the above problems and is a move towards simplicity. We can use the metric: liquidity-weighted price over time. The more liquidity that is on the books, the more weight the current price of the pass or fail market is given. Every time there is a swap, these metrics are updated/aggregated. By setting a high fee (3-5%) we can both: encourage LPs, and aggressively discourage wash-trading and manipulation.

These types of proposals would also require that the proposer lock-up some initial liquidity, and set the starting price for the pass/fail markets.

With this setup, liquidity would start low when the proposal is launched, someone would swap and move the AMM price to their preferred price, and then provide liquidity at that price since the fee incentives are high. Liquidity would increase over the duration of the proposal.

The current CLOB setup requires a minimum order size of 1 META, which is effectively a spam filter against manipulating the midpoint within a wide bid/ask spread. AMMs would not have this restriction, and META could be traded at any desired granularity.

### Additional considerations
> What if a user wants to provide one-sided liquidity?

The most recent passing proposal will create spot markets outside of the pass/fail markets. There will be an AMM, and there is no reason not to create a CLOB as well. Most motivations for providing one-sided liquidity can be satisfied by regular spot-markets, or by arbitraging between spot markets and pass/fail markets. In the future, it may be possible to setup limit orders similarly to how Jupiter limit orders work with triggers and keepers.

Switching to AMMs is not a perfect solution, but I do believe it is a major improvement over the current low-liquidity and somewhat noisy system that we have now.

### Implementation
1. Program + Review
2. Frontend

#### Program + Review
Program changes:

- Write a basic AMM, which tracks liquidity-weighted average price over its lifetime
- Incorporate the AMM into autocrat + conditional vault
- Get feedback to decide if the autocrat and conditional vault should be merged
- Feature to permissionlessly pause AMM swaps and send back positions once there is a verdict (and the instructions have been run, in the case of the pass market)
- Feature to permissionlessly close the AMMs and return the state rent SOL, once there are no positions
Additional quality-of-life changes:

- Loosen time restrictions on when a proposal can be created after the markets are created (currently set to 50 slots, which is very restrictive and has led to extra SOL costs to create redundant markets). Alternatively, bundle these commands in the same function call.
- If a proposal instruction does not work, then revert to fail after X number of days (so that funds dont get stuck forever).

#### Ownership:

- joebuild will write the program changes
- A review will be done by an expert in MetaDAO with availability

#### Frontend
The majority of the frontend integration changes will be completed by 0xNalloK.

### Timeline
Estimate is 3 weeks from passing proposal, with an additional week of review and minor changes.

### Budget and Roles
400 META on passing proposal, with an additional 800 META on completed migration.

program changes (joebuild)
program review (tbd)
frontend work (0xNalloK)

### Rollout & Risks
The main program will be deployed before migration of assets. This should allow for some testing of the frontend and the contract on mainnet. We can use a temporary test subdomain.

The risks here include:

- Standard smart contract risk
- Adoption/available liquidity: similar to an orderbook, available liquidity will be decided by LPs. AMMs will incentivize LP'ing, though adoption within the DAO is not a certainty.

### Section for feedback changes
Any important changes or feedback brought up during the proposal vote will be reflected here, while the text above will remain unchanged.

- It was pointed out that there are ways to recoup openbook state rent costs, though it would require a migration of the current autocrat program.

## Raw Data

- Proposal account: `CF9QUBS251FnNGZHLJ4WbB2CVRi5BtqJbCqMi47NX1PG`
- Proposal number: 4
- DAO account: `7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy`
- Proposer: `XXXvLz1B89UtcTsg2hT3cL9qUJi5PqEEBTHg57MfNkZ`
- Autocrat version: 0.1
- Completed: 2024-01-29
- Ended: 2024-01-29


## Key Facts
- CLOB state rent: 3.75 SOL per pass/fail market pair (2024-01-24)
- MetaDAO proposal frequency: 3-5 per month (2024-01-24)
- Annual CLOB state rent cost: 135-225 SOL or $11,475-$19,125 at Jan 2024 prices
- Proposed AMM swap fees: 3-5% to incentivize LPs and discourage manipulation
- AMM development budget: 400 META on passing + 800 META on completion
- Development timeline: 3 weeks + 1 week review
- Minimum CLOB order size: 1 META (spam filter for midpoint manipulation)
- Proposal account: CF9QUBS251FnNGZHLJ4WbB2CVRi5BtqJbCqMi47NX1PG
- Autocrat version: 0.1
