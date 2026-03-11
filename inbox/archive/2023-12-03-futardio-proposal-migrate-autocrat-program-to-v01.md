---
type: source
title: "Futardio: Migrate Autocrat Program to v0.1?"
author: "futard.io"
url: "https://www.futard.io/proposal/AkLsnieYpCU2UsSqUNrbMrQNi9bvdnjxx75mZbJns9zi"
date: 2023-12-03
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2024-01-15
claims_extracted: ["metadao-autocrat-v01-reduced-proposal-duration-to-three-days-enabling-faster-governance-iteration.md"]
enrichments_applied: ["MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window.md", "futarchy implementations must simplify theoretical mechanisms for production adoption because original designs include impractical elements that academics tolerate but users reject.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Single proposal data point. Main extractable claim is the 3-day duration change as a design choice for faster iteration. Enrichments focus on confirming the 3-day TWAP window, extending the simplification-for-production claim with verifiable build constraints, and challenging the corporate scaffolding claim with evidence of programmatic treasury migration (though with security caveats)."
---

## Proposal Details
- Project: MetaDAO
- Proposal: Migrate Autocrat Program to v0.1?
- Status: Passed
- Created: 2023-12-03
- URL: https://www.futard.io/proposal/AkLsnieYpCU2UsSqUNrbMrQNi9bvdnjxx75mZbJns9zi
- Description: Most importantly, I’ve made the slots per proposal configurable, and changed its default to 3 days to allow for quicker feedback loops.

## Summary

### 🎯 Key Points  
The proposal aims to migrate assets (990,000 META, 10,025 USDC, and 5.5 SOL) from the treasury of the first autocrat program to the second program, while introducing configurable proposal slots and a default duration of 3 days for quicker feedback.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
Stakeholders may benefit from enhanced feedback efficiency and asset management through the upgraded autocrat program.

#### 📈 Upside Potential  
The changes could lead to faster decision-making processes and improved overall program functionality.

#### 📉 Risk Factors  
There is a risk of potential bugs in the new program and trust issues regarding the absence of verifiable builds, which could jeopardize the security of the funds.

## Content

## Overview

I've made some improvements to the autocrat program. You can see these [here](https://github.com/metaDAOproject/meta-dao/pull/36/files). Most importantly, I've made the slots per proposal configurable, and changed its default to 3 days to allow for quicker feedback loops.

This proposal migrates the 990,000 META, 10,025 USDC, and 5.5 SOL from the treasury owned by the first program to the treasury owned by the second program.

## Key risks

### Smart contract risk

There is a risk that the new program contains an important bug that the first one didn't. I consider this risk small given that I didn't change that much of autocrat.

### Counter-party risk

Unfortunately, for reasons I can't get into, I was unable to build this new program with [solana-verifiable-build](https://github.com/Ellipsis-Labs/solana-verifiable-build). You'd be placing trust in me that I didn't introduce a backdoor, not on the GitHub repo, that allows me to steal the funds.

For future versions, I should always be able to use verifiable builds.

## Raw Data

- Proposal account: `AkLsnieYpCU2UsSqUNrbMrQNi9bvdnjxx75mZbJns9zi`
- Proposal number: 1
- DAO account: `3wDJ5g73ABaDsL1qofF5jJqEJU4RnRQrvzRLkSnFc5di`
- Proposer: `HfFi634cyurmVVDr9frwu4MjGLJzz9XbAJz981HdVaNz`
- Autocrat version: 0
- Completed: 2023-12-13
- Ended: 2023-12-13


## Key Facts
- MetaDAO Autocrat v0.1 proposal created 2023-12-03, passed and completed 2023-12-13
- Treasury migration: 990,000 META, 10,025 USDC, 5.5 SOL from v0 to v0.1 program
- Proposal account: AkLsnieYpCU2UsSqUNrbMrQNi9bvdnjxx75mZbJns9zi
- Code changes: github.com/metaDAOproject/meta-dao/pull/36/files
- Deployment used non-verifiable build due to unspecified constraints
