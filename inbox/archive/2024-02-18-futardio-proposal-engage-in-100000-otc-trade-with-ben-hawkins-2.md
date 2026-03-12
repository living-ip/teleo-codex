---
type: source
title: "Futardio: Engage in $100,000 OTC Trade with Ben Hawkins? [2]"
author: "futard.io"
url: "https://www.futard.io/proposal/E1FJAp8saDU6Da2ccayjLBfA53qbjKRNYvu7QiMAnjQx"
date: 2024-02-18
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2024-02-18
enrichments_applied: ["futarchy-governed-DAOs-converge-on-traditional-corporate-governance-scaffolding-for-treasury-operations-because-market-mechanisms-alone-cannot-provide-operational-security-and-legal-compliance.md", "MetaDAOs-Autocrat-program-implements-futarchy-through-conditional-token-markets-where-proposals-create-parallel-pass-and-fail-universes-settled-by-time-weighted-average-price-over-a-three-day-window.md", "futarchy-adoption-faces-friction-from-token-price-psychology-proposal-complexity-and-liquidity-requirements.md", "time-based-token-vesting-is-hedgeable-making-standard-lockups-meaningless-as-alignment-mechanisms-because-investors-can-short-sell-to-neutralize-lockup-exposure-while-appearing-locked.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Failed MetaDAO proposal for $100k OTC trade. Extracted two claims: (1) the vesting mechanism design for managing large token sales, (2) the market rejection despite acknowledged liquidity need. Four enrichments confirm existing claims about futarchy scaffolding, TWAP usage, adoption friction, and vesting limitations. The proposal's failure is particularly interesting as evidence of futarchy rejecting a solution to a stated problem, suggesting the mechanism can distinguish between 'we have a problem' and 'this solution is net positive.'"
processed_by: rio
processed_date: 2026-03-11
claims_extracted: ["metadao-proposal-8-vesting-structure-combines-immediate-liquidity-with-long-term-lockup-through-20-percent-instant-release-and-80-percent-linear-12-month-vest.md", "metadao-proposal-8-market-rejection-despite-acknowledged-liquidity-problem-demonstrates-futarchy-can-distinguish-between-problem-recognition-and-solution-approval.md"]
enrichments_applied: ["futarchy-governed-DAOs-converge-on-traditional-corporate-governance-scaffolding-for-treasury-operations-because-market-mechanisms-alone-cannot-provide-operational-security-and-legal-compliance.md", "MetaDAOs-Autocrat-program-implements-futarchy-through-conditional-token-markets-where-proposals-create-parallel-pass-and-fail-universes-settled-by-time-weighted-average-price-over-a-three-day-window.md", "futarchy-adoption-faces-friction-from-token-price-psychology-proposal-complexity-and-liquidity-requirements.md", "time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Failed MetaDAO proposal for $100k OTC trade. Extracted two claims: (1) the vesting mechanism design for managing large token sales, (2) the market rejection despite acknowledged liquidity need. Four enrichments confirm existing claims about futarchy scaffolding, TWAP usage, adoption friction, and vesting limitations. Created decision_market entity for the proposal. The proposal's failure is particularly interesting as evidence of futarchy rejecting a solution to a stated problem, suggesting the mechanism can distinguish between 'we have a problem' and 'this solution is net positive.'"
---

## Proposal Details
- Project: MetaDAO
- Proposal: Engage in $100,000 OTC Trade with Ben Hawkins? [2]
- Status: Failed
- Created: 2024-02-18
- URL: https://www.futard.io/proposal/E1FJAp8saDU6Da2ccayjLBfA53qbjKRNYvu7QiMAnjQx
- Description: Ben Hawkins Acquisition of $100,000 USDC worth of META

## Summary

### 🎯 Key Points  
The proposal seeks approval for Ben Hawkins to engage in a $100,000 OTC trade to acquire up to 500 META tokens from The Meta-DAO Treasury, with a price per META determined by the maximum of the TWAP price or $200. It aims to enhance liquidity in the META markets by creating a 50/50 AMM pool with the committed funds.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
This proposal is expected to provide immediate liquidity and improve market conditions for all stakeholders involved in the META ecosystem.

#### 📈 Upside Potential  
An increase in liquidity is projected to potentially raise the value of META by approximately 15% and expand the circulating supply by 2-7%.

#### 📉 Risk Factors  
The proposal carries high risks due to potential price volatility and uncertainty surrounding the actual acquisition amounts and their impact on the market.

## Content

Drafted with support from: Ben Hawkins and 0xNallok

## Responsible Parties

- Ben Hawkins (`7GmjpH2hpj3A5d6f1LTjXUAy8MR8FDTvZcPY79RDRDhq`)
- Squads Multi-sig (4/6) `Meta-DAO Executor` (`FpMnruqVCxh3o2oBFZ9uSQmshiyfMqzeJ3YfNQfP9tHy`)
- The Meta-DAO (`metaX99LHn3A7Gr7VAcCfXhpfocvpMpqQ3eyp3PGUUq`)
- The Markets

## Overview

- Ben Hawkins (`7GmjpH2hpj3A5d6f1LTjXUAy8MR8FDTvZcPY79RDRDhq`) wishes to acquire up to 500 META (`METADDFL6wWMWEoKTFJwcThTbUmtarRJZjRpzUvkxhr`) from The Meta-DAO Treausry (`ADCCEAbH8eixGj5t73vb4sKecSKo7ndgDSuWGvER4Loy`).
- The price per META shall be determined upon passing of the proposal and the greater of the TWAP price of the pass market and $200.
  $$ppM = max(twapPass, 200)$$
- A total of $100,000 USDC (`EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v`) will be committed by Ben Hawkins
- The amount of META shall be determined as the $100,000 USDC funds sent divided by the price determined above.
  $$amountMETA = 100,000/ppM$$ 
- The Meta-DAO will transfer 20% of the final allocation of META to Ben Hawkin's wallet immediately and place 80% of the final allocation of META into a 12 month, linear vest Streamflow program.
- The amount of $100,000 USDC shall be used to create a 50/50 AMM pool with 1% fee matched in META by The Meta-DAO.
- Ben will also send $2,000 USDC in addition to compensate members of The Meta-DAO Executor.
- Any META not sent or utilized for liquidity provisioning shall be returned to The Meta-DAO.

## Background

The current liquidity within the META markets is proving insufficient to support the demand. This proposal addresses this issue by providing immediate liquidity in a sizable amount which should at least provide a temporary backstop to allow proposals to be constructed addressing the entire demand.

## Implementation

The proposal contains the instruction for a transfer 1,000 META into a multisignature wallet `FpMnruqVCxh3o2oBFZ9uSQmshiyfMqzeJ3YfNQfP9tHy` with a 4/6 threshold of which the following parties are be members:

- Proph3t (`65U66fcYuNfqN12vzateJhZ4bgDuxFWN9gMwraeQKByg`)
- Dean (`3PKhzE9wuEkGPHHu2sNCvG86xNtDJduAcyBPXpE6cSNt`)
- 0xNallok (`4LpE9Lxqb4jYYh8jA8oDhsGDKPNBNkcoXobbAJTa3pWw`)
- Durden (`91NjPFfJxQw2FRJvyuQUQsdh9mBGPeGPuNavt7nMLTQj`)
- Blockchainfixesthis (`HKcXZAkT4ec2VBzGNxazWhpV7BTk3frQpSufpaNoho3D`)
- Rar3 (`BYeFEm6n4rUDpyHzDjt5JF8okGpoZUdS2Y4jJM2dJCm4`)

The multisig members instructions are as follows:

- Accept the full USDC amount of $100,000 from Ben Hawkins into the Multi-sig upon launch of proposal

If the proposal passes:

- Accept receipt of META into the Multi-sig as defined by on chain instruction
- Determine and publish the price per META according to the definition above
- Confirmation from two parties within The Meta-DAO that the balances exist and are in full
- Take `$100,000 / ppM` and determine final allocation quantity of META
- Transfer 20% of the final allocation of META to Ben's address `7GmjpH2hpj3A5d6f1LTjXUAy8MR8FDTvZcPY79RDRDhq`
- Configure a 12 month Streamflow vesting program with a linear vest
- Transfer 80% of the final allocation of  META into the Streamflow program
- Create a 50/50 Meteora LP 1% Volatile Pool META-USDC allocating at ratios determined and able to be executed via Multi-sig
- Return any remaining META to the DAO treasury
- Make USDC payment to each Multi-sig members

If the proposal fails:
- Make USDC payment to each Multi-sig member.
- Return 100,000 USDC to `7GmjpH2hpj3A5d6f1LTjXUAy8MR8FDTvZcPY79RDRDhq`

## Risks

The price is extremely volatile and given the variance there is an unknown amount at the time of proposal launching which would be introduced into circulation. This will be impactful to the price.

Given there are other proposals with active markets, the capacity for accurate pricing and participation of this proposal is unknown.

This is an experiment and largely contains unknown unknowns, IT CONTAINS EXTREME RISK.

## Result

The proposal evaluates a net increase in value to META by bringing additional liquidity into the ecosystem. This should also improve the capacity for proposal functionality. The expected increase in value to META is ~15% given the fact that the amounts are yet to be determined, but an increase in circulating supply by ~2-7%.

| Details | |
|---|---|
| META Spot Price 2024-02-18 20:20 UTC | $695.92 |
| META Circulating Supply 2024-02-18 20:20 UTC | 14,530 |
| Offer Price | ≥ $200 |
| Offer META | ≤ 500 |
| Offer USDC | $100,000 |
| META Transfer to Circulation | {TBD} % |
| New META Circulating Supply | {TBD}  |

Here are some post-money valuations at different prices as well total increase in circulation:

| Price/META | Mcap | Liquidity % of Circulation | Acquisition/LP Circulation | Total |
|--|--|--|--|--|
| $200 | $3.6M | 6.3% | 500 META/500 META ~3.4% | 1000 META ~6.8% |
| $350 | $5.1M | 4.8% | 285 META/285 META ~1.9% | 570 META ~3.8% |
| $700 | $10.2M | 3.8% | 142 META/142 META ~0.9% | 284 META ~1.8% |


## References

- [Proposal 7](https://hackmd.io/@0xNallok/Hy2WJ46op)
- [Proposal 6](https://gist.github.com/Benhawkins18/927177850e27a6254678059c99d98209)
- [Discord](https://discord.gg/metadao)

## Raw Data

- Proposal account: `E1FJAp8saDU6Da2ccayjLBfA53qbjKRNYvu7QiMAnjQx`
- Proposal number: 8
- DAO account: `7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy`
- Proposer: `3Rx29Y8npZexsab4tzSrLfX3UmgQTC7TWtx6XjUbRBVy`
- Autocrat version: 0.1
- Completed: 2024-02-24
- Ended: 2024-02-24


## Key Facts
- MetaDAO Proposal 8 created 2024-02-18, failed 2024-02-24
- Proposal sought $100k USDC for up to 500 META tokens
- Price formula: max(twapPass, 200)
- Vesting structure: 20% immediate, 80% linear over 12 months
- META spot price at proposal: $695.92 (2024-02-18 20:20 UTC)
- META circulating supply: 14,530 tokens
- Multisig: 6 members, 4/6 threshold (Proph3t, Dean, 0xNallok, Durden, Blockchainfixesthis, Rar3)
- Projected circulating supply increase: 2-7%
- Projected META value increase: ~15%


## Key Facts
- MetaDAO Proposal 8 account: E1FJAp8saDU6Da2ccayjLBfA53qbjKRNYvu7QiMAnjQx
- Proposal number: 8, Autocrat version: 0.1
- META spot price 2024-02-18: $695.92
- META circulating supply: 14,530 tokens
- Multisig members: Proph3t, Dean, 0xNallok, Durden, Blockchainfixesthis, Rar3 (4/6 threshold)
- Multisig address: FpMnruqVCxh3o2oBFZ9uSQmshiyfMqzeJ3YfNQfP9tHy
- Ben Hawkins address: 7GmjpH2hpj3A5d6f1LTjXUAy8MR8FDTvZcPY79RDRDhq
- Projected circulating supply increase: 2-7%
- Projected META value increase: ~15% (per proposal analysis)
