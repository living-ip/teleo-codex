---
type: source
title: "Futardio: Develop a LST Vote Market?"
author: "futard.io"
url: "https://www.futard.io/proposal/9RisXkQCFLt7NA29vt5aWatcnU8SkyBgS95HxXhwXhW"
date: 2023-11-18
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Develop a LST Vote Market?
- Status: Passed
- Created: 2023-11-18
- URL: https://www.futard.io/proposal/9RisXkQCFLt7NA29vt5aWatcnU8SkyBgS95HxXhwXhW
- Description: This platform would allow MNDE and mSOL holders to earn extra yield by directing their stake to validators who pay them.

## Summary

### 🎯 Key Points  
The proposal aims to develop a centralized bribe platform for MNDE and mSOL holders to earn extra yield by directing their stake to validators, addressing the fragmented current market. It seeks 3,000 META to fund the project, with the expectation of generating approximately $1.5M annually for the Meta-DAO.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
The platform will enable small MNDE and mSOL holders to compete with whales for higher yields, enhancing their earning potential.

#### 📈 Upside Potential  
If successful, the platform could significantly increase the Meta-DAO's enterprise value by an estimated $10.5M, with potential annual revenues of $150k to $170k.

#### 📉 Risk Factors  
Execution risk is a concern, as the project's success is speculative and hinges on a 70% chance of successful implementation, which could result in a net value creation of only $730k after costs.

## Content

## Overview

The Meta-DAO is awakening. 

Given that the Meta-DAO is a fundamentally new kind of organization, it lacks legitimacy. To gain legitimacy, we need to first *prove that the model works*. I believe that the best way to do that is by building profit-turning products under the Meta-DAO umbrella.

Here, we propose the first one: an [LST bribe platform](https://twitter.com/durdenwannabe/status/1683150792843464711). This platform would allow MNDE and mSOL holders to earn extra yield by [directing their stake](https://docs.marinade.finance/marinade-products/directed-stake#snapshot-system) to validators who pay them. A bribe market already exists, but it's fragmented and favors whales. This platform would centralize the market, facilitating open exchange between validators and MNDE / mSOL holders and allowing small holders to earn the same yield as whales.

#### Executive summary
- The product would exist as a 2-sided marketplace between validators who want more stake and MNDE and mSOL holders who want more yield.
- The platform would likely be structured similar to Votium.
- The platform would monetize by taking 10% of bribes.
- We estimate that this product would generate \$1.5M per year for the Meta-DAO, increasing the Meta-DAO's enterprise value by \$10.5M, if executed successfully.
- We are requesting 3,000 META and the promise of retroactively-decided performance-based incentives. If executed, this proposal would transfer the first 1,000 META.
- Three contributors have expressed interest in working on this: Proph3t, for the smart contracts; marie, for the UI; and nicovrg, for the BD with Marinade. Proph3t would be the point person and would be responsible for delivering this project to the Meta-DAO.

## Problem statement

Validators want more stake. MNDE and mSOL holders want more yield. Since Marinade allows its MNDE and mSOL holders to direct 40% of its stake, this creates an opportunity for mSOL and MNDE to earn higher yield by selling their votes to validators.

Today, this market is fragmented. Trading occurs through one-off locations like Solana Compass' [Turbo Stake](https://solanacompass.com/staking/turbo-staking) and in back-room Telegram chats. This makes it hard for people who don't actively follow the Solana ecosystem and small holders to earn the highest yields.

We propose a platform that would centralize this trading. Essentially, this would provide an easy place where validators who want more stake can pay for the votes of MNDE and mSOL holders. In the future, we could expand to other LSTs like bSOL.

## Design

There are a number ways you could design a bribe platform. After considering a few options, a Votium-style system appears to be the best one.

### Votium

[Votium](https://votium.app/) is a bribe platform on Ethereum. Essentially, projects that want liquidity in their token pay veCRV holders to allocate CRV emissions to their token's liquidity pool (the veCRV system is fairly complex and out of scope for this proposal). For example, the Frax team might pay veCRV holders to allocate CRV emissions to the FRAX+crvUSD pool.

If you're a project that wants to pay for votes, you do so in the following way:
- create a Votium pool
- specify which Curve pool (a different kind of pool, I didn't name them :shrug:) you want CRV emissions to be directed to
- allocate some funds to that pool

If you're a veCRV-holder, you are eligible to claim from that pool. To do so, you must first vote for the Curve pool specified. Then, once the voting period is done, each person who voted for that Curve pool can claim a pro rata share of the tokens from the Votium pool.

Alternatively, you can delegate to Votium, who will spread your votes among the various pools.

### Our system

In our case, a Votium-style platform would look like the following:
- Once a month, each participating validator creates a pool, specifying a *price per vote* and depositing SOL to their pool. The amount of SOL deposited in a pool defines the maximum votes bought. For example, if Laine deposits 1,000 SOL to a pool and specifies a price per vote of 0.1 SOL, then this pool can buy up to 10,000 votes
- veMNDE and mSOL holders are given 1 week to join pools, which they do by directing their stake to the respective validator (the bribe platform UI would make this easy)
- after 1 month passes, veMNDE and mSOL holders can claim their SOL bribes from the pools

The main advantage of the Votium approach is that it's non-custodial. In other words, *there would be no risk of user fund loss*. In the event of a hack, the only thing that could be stolen are the bribes deposited to the pools.

## Business model

The Meta-DAO would take a small fee from the rewards that are paid to bribees. Currently, we envision this number being 10%, but that is subject to change.

## Financial projections

Although any new project has uncertain returns, we can give rough estimates of the returns that this project would generate for the Meta-DAO.

Marinade Finance currently has \$532M of SOL locked in it. Of that, 40% or \$213M is directed by votes. Validators are likely willing to pay up to the marginal revenue that they can gain by bribing. So, at 8% staking rates and 10% comissions, the **estimated market for this is \$213M * 0.08 * 0.1, or \$1.7M**.

At a 10% fee, the revenue available to the Meta-DAO would be \$170k. The revenue share with Marinade is yet to be negotiated. At a 10% revshare, the Meta-DAO would earn \$150k per year. At a 30% revshare, the Meta-DAO would earn \$120k per year.

We take the average of \$135k per year and multiply  by the [typical SaaS valuation multiple](https://aventis-advisors.com/saas-valuation-multiples/#multiples) of 7.8x to achieve the estimate that **this product would add \$1.05M to the Meta-DAO's enterprise value if executed successfully.**

Of course, there is a chance that is not executed successfully. To estimate how much value this would create for the Meta-DAO, you can calculate:

[(% chance of successful execution / 100) * (estimated addition to the Meta-DAO's enterprise value if successfully executed)] - up-front costs

For example, if you believe that the chance of us successfully executing is 70% and that this would add \$10.5M to the Meta-DAO's enterprise value, you can do (0.7 * 10.5M) - dillution cost of 3,000 META. Since each META has a book value of \$1 and is probably worth somewhere between \$1 and \$100, this leaves you with **\$730k - \$700k of value created by the proposal**.

As with any financial projections, these results are highly speculative and sensitive to assumptions. Market participants are encouraged to make their own assumptions and to price the proposal accordingly.

## Proposal request

We are requesting **3,000 META and retroactively-decided performance-based incentives** to fund this project. 

This 3,000 META would be split among:
- Proph3t, who would perform the smart contract work
- marie, who would perform the UI/UX work
- nicovrg, who would be the point person to Marinade Finance and submit the grant proposal to the Marinade forums

1,000 META would be paid up-front by the execution of this proposal. 2,000 META would be paid after the proposal is done.

The Meta-DAO is still figuring out how to properly incentivize performance, so we don't want to be too specific with how that would done. Still, it is game-theoretically optimal for the Meta-DAO to compensate us fairly because under-paying us would dissuade future builders from contributing to the Meta-DAO. So we'll put our trust in the game theory.

## References

- [Solana LST Dune Dashboard](https://dune.com/ilemi/solana-lsts)
- [Marinade Docs](https://docs.marinade.finance/), specifically the pages on - [MNDE Directed Stake](https://docs.marinade.finance/the-mnde-token/mnde-directed-stake) and [mSOL Directed Stake](https://docs.marinade.finance/marinade-products/directed-stake)
- [Marinade's Validator Dashboard](https://marinade.finance/app/validators/?sorting=score&direction=descending)
- [MNDE Gauge Profit Calculator](https://cogentcrypto.io/MNDECalculator)
- [Marinade SDK](https://github.com/marinade-finance/marinade-ts-sdk/blob/bc4d07750776262088239581cac60e651d1b5cf4/src/marinade.ts#L283)
- [Solana Compass Turbo Staking](https://solanacompass.com/staking/turbo-staking)
- [Marinade Directed Stake program](https://solscan.io/account/dstK1PDHNoKN9MdmftRzsEbXP5T1FTBiQBm1Ee3meVd#anchorProgramIDL)

## Raw Data

- Proposal account: `9RisXkQCFLt7NA29vt5aWatcnU8SkyBgS95HxXhwXhW`
- Proposal number: 0
- DAO account: `3wDJ5g73ABaDsL1qofF5jJqEJU4RnRQrvzRLkSnFc5di`
- Proposer: `HfFi634cyurmVVDr9frwu4MjGLJzz9XbAJz981HdVaNz`
- Autocrat version: 0
- Completed: 2023-11-29
- Ended: 2023-11-29
