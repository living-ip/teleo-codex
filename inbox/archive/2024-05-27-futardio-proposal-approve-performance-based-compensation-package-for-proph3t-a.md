---
type: source
title: "Futardio: Approve Performance-Based Compensation Package for Proph3t and Nallok?"
author: "futard.io"
url: "https://www.futard.io/proposal/BgHv9GutbnsXZLZQHqPL8BbGWwtcaRDWx82aeRMNmJbG"
date: 2024-05-27
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Approve Performance-Based Compensation Package for Proph3t and Nallok?
- Status: Passed
- Created: 2024-05-27
- URL: https://www.futard.io/proposal/BgHv9GutbnsXZLZQHqPL8BbGWwtcaRDWx82aeRMNmJbG
- Description: Align the incentives of key insiders, Proph3t and Nallok, with the long-term success and growth of MetaDAO.
- Categories: {'category': 'Operations'}

## Summary

### 🎯 Key Points  
The proposal seeks to align the financial incentives of key insiders Proph3t and Nallok with MetaDAO's long-term success by providing a performance-based compensation package consisting of a percentage of token supply linked to market cap increases and a fixed annual salary.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
Key insiders are incentivized to commit to MetaDAO's growth, potentially enhancing the project's viability and success.

#### 📈 Upside Potential  
If successful, the proposed compensation structure could motivate Proph3t and Nallok to maximize their efforts, leading to substantial increases in MetaDAO's market cap.

#### 📉 Risk Factors  
The proposal may reinforce a reliance on specific individuals, potentially undermining the decentralized ethos of MetaDAO and exposing it to risks if these insiders leave or fail to deliver.

## Content

#### Type

Operations Direct Action

#### Author(s)

Proph3t, Nallok

#### Objective

Align the incentives of key insiders, Proph3t and Nallok, with the long-term success and growth of MetaDAO.

## Overview

We propose that MetaDAO adopt a [convex payout system](https://docs.google.com/document/d/16W7o-kEVbRPIm3i2zpEVQar6z_vlt0qgiHEdYV1TAPU/edit#heading=h.rlnpkfo7evkj).
Specifically, Proph3t and Nallok would receive 2% of the token supply for every \$1 billion increase in META's market capitalization, up to a maximum of 10% at a \$5 billion market cap. Additionally, we propose a salary of \$90,000 per year for each.

## Details

- **Fixed Token Allocation**: 10% of supply equals **1,975 META per person**. This number remains fixed regardless of further META dilution.
- **Linear Unlocks**: For example, a \$100M market cap would release 0.2% of the supply, or 39.5 META (~\$200k at a \$100M market cap), to each person.
- **Unlock Criteria**: Decided at a later date, potentially using a simple moving average (SMA) over a month or an option-based system.
- **Start Date**: April 2024 for the purposes of vesting & retroactive salary.
- **Vesting Period**: No tokens unlock before April 2028, no matter what milestones are hit. This signals long-term commitment to building the business.
- **Illiquid Vest**: The DAO can claw back all tokens until December 2024 (8 months from start). Thereafter, tokens vest into a smart contract / multisig that can't be accessed by Proph3t or Nallok.
- **Market Cap Definition**: \$1B market cap is defined as a price of \$42,198 per META. This allows for 20% dilution post-proposal. Payouts are based on the value per META, not total market capitalization.

## Q&A

### Why do we need founder incentives at all? I thought MetaDAO was supposed to be decentralized?![image](https://hackmd.io/_uploads/B1wgI0ZV0.png)
Whether we like it or not, MetaDAO is not fully decentralized today. If Nallok and I walk away, its probability of success drops by at least 50%. This proposal creates financial incentives to help us build MetaDAO into a truly decentralized entity.This proposal does not grant us decision-making authority. Ultimate power remains with the market. We can be replaced at any time and must follow the market's direction to keep our roles.

### What exactly would this proposal execute on the blockchain?
Nothing directly. It involves a call to the [Solana memo program](https://spl.solana.com/memo).
The purpose is to gauge market receptiveness to this structure. A future proposal would handle the transfer of the required META, possibly from a [BDF3M](https://hackmd.io/@metaproph3t/SJfHhnkJC) multisig.

### What would be our roles?

**Nallok**
- Firefighter
- Problem-Solver
- Operations Manager

**Proph3t**
- Architect
- Mechanism Designer
- Smart Contract Engineer

### What would be our focus areas?

Frankly, we don't know. When we started work on MetaDAO, [Vota](https://vota.fi/) looked like the most viable business for bootstrapping MetaDAO's legitimacy.
Now it looks like [offering futarchy to other DAOs](https://futarchy.metadao.fi/browse).
MetaDAO LLC, the Marshall Islands DAO LLC controlled by MetaDAO, states our business purpose as "Solana-based products and services."
We expect this to hold true for several years.

## Appendix
- How we picked 2% per \$1B To be successful, an incentive system needs to do two things: retain contributors and get them to exert maximum effort.So to be effective, the system must offer more utility than alternative opportunities and make exerting effort more beneficial than not.

### Methodology

We estimated our reservation wages (potential earnings elsewhere) and verified that the utility of those wages is less than our expected payout from MetaDAO. [This video](https://youtu.be/mM3SKjVpE7U?si=0fMazWyc0Tcab0TZ) explains the process.

### Utility Calculation

We used the square root of the payout in millions to define our utility function. For example:
- \$100,000 payout gives a utility of 0.3162 (sqrt of 0.1).
- \$1,000,000 payout gives a utility of 1 (sqrt of 1).
- \$10,000,000 payout gives a utility of 3.162 (sqrt of 10).

### Assumptions

- **Earnings Elsewhere**: Estimated at \$250,000 per year.
- **Timeline**: 6 years to achieve MetaDAO success.
- **Failure Payout Utility**: 0.5 (including \$90k/year salary and lessons learned).
- **Very low probability of success w/o maximum effort**: we both believe that MetaDAO will simply not come to be unless both of us pour our soul into it. This gives \$1.5M in foregone income, with a utility of 1.2 (sqrt of 1.5).

### Expected Payout Calculation
To estimate the utility of exerting maximum effort, we used the expected utility of success and failure, multiplied by their respective probabilities. Perceived probabilities are key, as they influence the incentivized person's decision-making.

#### Nallok's Estimate
- **His Estimated Probability of Success**: 20%.
- **Effort Cost Utility**: 3 (equivalent to \$10M).

Calculation:
- $ 1.2 < 0.2 * (\sqrt{y} - 3) + 0.8 * (0.5 - 3) $
- $ 1.2 < 0.2 * (\sqrt{y} - 3) - 2 $
- $ 3.2 < 0.2 * (\sqrt{y} - 3) $
- $ 16 < \sqrt{y} - 3 $
- $ 19 < \sqrt{y} $
- $ 361 < y $

So Nallok needs a success payout of at least \$361M for it to be rational for him to stay and exert maximum effort.

#### Proph3ts's Estimate
- **His Estimated Probability of Success**: 10%.
- **Effort Cost Utility**: 1.7 (equivalent to \$3M).

Calculation:
- $ 1.2 < 0.1 * (\sqrt{y} - 1.7) + 0.8 * (0.5 - 1.7) $
- $ 1.2 < 0.1 * (\sqrt{y} - 1.7) + 0.8 * -1.2 $
- $ 1.2 < 0.1 * (\sqrt{y} - 1.7) - 1 $
- $ 2.2 < 0.1 * (\sqrt{y} - 1.7) $
- $ 22 < \sqrt{y} - 1.7 $
- $ 23.7 < \sqrt{y} $
- $ 562 < y $ 

So Proph3t needs a success payout of at least \$562M for it to be rational for him to stay and exert maximum effort.

### 10%
We believe MetaDAO can reach at least a \$5B market cap if executed correctly. Therefore, we decided on a 10% token allocation each, which would provide a ~\$500M payout in case of success. Future issuances may dilute this, but we expect the diluted payout to be within the same order of magnitude.

## Raw Data

- Proposal account: `BgHv9GutbnsXZLZQHqPL8BbGWwtcaRDWx82aeRMNmJbG`
- Proposal number: 2
- DAO account: `CNMZgxYsQpygk8CLN9Su1igwXX2kHtcawaNAGuBPv3G9`
- Proposer: `HfFi634cyurmVVDr9frwu4MjGLJzz9XbAJz981HdVaNz`
- Autocrat version: 0.3
- Completed: 2024-05-31
- Ended: 2024-05-31
