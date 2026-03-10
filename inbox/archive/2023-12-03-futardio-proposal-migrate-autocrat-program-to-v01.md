---
type: source
title: "Futardio: Migrate Autocrat Program to v0.1?"
author: "futard.io"
url: "https://www.futard.io/proposal/AkLsnieYpCU2UsSqUNrbMrQNi9bvdnjxx75mZbJns9zi"
date: 2023-12-03
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
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
