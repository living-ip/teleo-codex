---
type: source
title: "Futardio: Should Sanctum implement CLOUD staking and active staking rewards?"
author: "futard.io"
url: "https://www.futard.io/proposal/4BTTxsV98Rhm1qjDe2yPdXtj7j7KBSuGtVQ6rUNWjjXf"
date: 2025-02-06
domain: internet-finance
format: data
status: entity-data
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2025-02-06
enrichments_applied: ["MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window.md", "futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements.md", "MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted two experimental claims about futarchy mechanism design (staking lockups for beauty contest mitigation, active staking rewards for participation incentives). Both are design rationales from a single proposal, not empirical results. Enriched three existing claims with implementation details and adoption friction evidence. Source is a passed governance proposal, not a retrospective analysis, so confidence is experimental at best."
---

## Proposal Details
- Project: Sanctum
- Proposal: Should Sanctum implement CLOUD staking and active staking rewards?
- Status: Passed
- Created: 2025-02-06
- URL: https://www.futard.io/proposal/4BTTxsV98Rhm1qjDe2yPdXtj7j7KBSuGtVQ6rUNWjjXf
- Description: This proposal would approve the implementation of CLOUD staking and 30M CLOUD to fund rewards for staked CLOUD, conditional upon active governance participation (“active staking rewards”).
- Categories: {'category': 'Governance'}
- Discussion: https://research.sanctum.so/t/cloud-1-should-sanctum-implement-cloud-staking-and-active-staking-rewards/1228

## Summary

### 🎯 Key Points  
This proposal seeks to implement CLOUD staking with a 30-day vesting lockup to mitigate speculative trading behaviors, and establish active staking rewards funded by 30M CLOUD to incentivize governance participation.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
Active governance participants will be rewarded for their engagement, promoting a more informed decision-making process.

#### 📈 Upside Potential  
The introduction of staking could enhance long-term investment and reduce volatility by aligning participant interests with the project's success.

#### 📉 Risk Factors  
There is a risk that the reliance on staking could inadvertently lead to a concentration of power among a small group of long-term holders, potentially sidelining less active participants.

## Content

![image](https://canada1.discourse-cdn.com/flex003/uploads/sanctum/optimized/1X/328b19069105a6604660c405fc7387344869049e_2_1380x776.png)

## Should Sanctum implement CLOUD staking and active staking rewards?

This proposal would approve the implementation of CLOUD staking and 30M CLOUD (3% of total supply) to fund rewards for staked CLOUD, conditional upon active governance participation (“active staking rewards”).

### Why staking?
The primary potential failure mode of futarchy is the “Keynesian beauty contest”. There is a danger that traders predict not whether the proposal is net positive, but whether or not other people think the proposal is net positive. This can create a self-reinforcing cycle disconnected from reality — leading to a dangerous outcome where policies are passed based on momentum and narrative, not actual value.

One very promising solution is to use staking; that is, to use staked CLOUD (sCLOUD) as the base asset to participate in the futarchic markets. This staked CLOUD will have a 30 day linearly vesting lockup (linearly vesting means that if you unstake 100 sCLOUD, you will be able to claim ~3.3 CLOUD every day), which will incentivise long-term holders to participate. We believe this will significantly mitigate the Keynesian beauty contest problem.


![image](https://canada1.discourse-cdn.com/flex003/uploads/sanctum/optimized/1X/927437ebe1c3b60ca005329c0098ba16d08d81ce_2_1248x574.jpeg)

CLOUD staking could also be used as a separating mechanism to preferentially reward long-term holders in the future. But that’s outside the scope of this proposal.

### Why active staking rewards?
Governance requires time and effort, especially something new like futarchy. By rewarding those who spend their time and effort to participate, we will encourage more participation, which means better decisions overall due to the wisdom of the crowds.

### How would active staking rewards be implemented?
We propose to use 30M CLOUD to fund rewards for active governance participants over the next six months.

Voters would get a pro rata share of CLOUD equal to your overall staking score (staked CLOUD amount * time) multiplied by the number of votes you participated in after this proposal. To be counted as participating in a proposal, one must have a minimum trading volume of at least 10 USDC in each proposal, regardless of if it passes or fails.

We propose to split this 30M CLOUD into two tranches of 15M each and distribute CLOUD quarterly. We plan to distribute the first tranche ~3 months after the passing of this proposal.

### What will happen if this proposal passes?

If this proposal passes, we will implement staking and start tracking staked CLOUD balances. Starting from CLOUD-2 (the next proposal after this), voting participation will also be tracked for the purposes of ASR.

We will eventually transition voting from CLOUD/USDC to sCLOUD/USDC, but whilst governance is still new and confusing for most, we will hold off on this transition for now. We will take a temperature check after a couple of votes and transition once people are comfortable.

We aim to run new proposals every two weeks, with a one week deliberation period + 3 day voting period.

## Raw Data

- Proposal account: `4BTTxsV98Rhm1qjDe2yPdXtj7j7KBSuGtVQ6rUNWjjXf`
- Proposal number: 2
- DAO account: `5n61x4BeVvvRMcYBMaorhu1MaZDViYw6HghE8gwLCvPR`
- Proposer: `proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2`
- Autocrat version: 0.3
- Completed: 2025-02-09
- Ended: 2025-02-09


## Key Facts
- Sanctum CLOUD-1 proposal passed 2025-02-09
- Sanctum DAO account: 5n61x4BeVvvRMcYBMaorhu1MaZDViYw6HghE8gwLCvPR
- Proposal allocates 30M CLOUD (3% of total supply) to active staking rewards
- Staking lockup: 30-day linearly vesting (~3.3 CLOUD/day per 100 sCLOUD unstaked)
- Minimum participation threshold: 10 USDC trading volume per proposal
- Distribution: Two 15M CLOUD tranches, quarterly, first ~3 months after passage
- Proposal cadence: Every two weeks (1 week deliberation + 3 day voting)
- Uses Autocrat version 0.3
