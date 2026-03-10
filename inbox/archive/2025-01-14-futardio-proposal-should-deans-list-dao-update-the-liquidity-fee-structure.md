---
type: source
title: "Futardio: Should Dean’s List DAO Update The Liquidity Fee Structure"
author: "futard.io"
url: "https://www.futard.io/proposal/B8WLuXqoBb3hRD9XBCNuSqxDqCXCixqRdKR4pVFGzNP"
date: 2025-01-14
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: IslandDAO
- Proposal: Should Dean’s List DAO Update The Liquidity Fee Structure
- Status: Passed
- Created: 2025-01-14
- URL: https://www.futard.io/proposal/B8WLuXqoBb3hRD9XBCNuSqxDqCXCixqRdKR4pVFGzNP
- Description: Proposal to increase the DAO's swap liquidity fee from base 0.25% dynamic pool fee to a 5% DLMM base fee to up to 10%, aimed at generating sustainable revenue.
- Categories: {'category': 'Treasury'}
- Discussion: https://discord.gg/ejbaxx6p4m

## Summary

### 🎯 Key Points  
The proposal aims to increase the DAO's swap liquidity fee from 0.25% to a base fee of 5%, potentially rising to 10%, to enhance treasury revenue for operations and development. It also suggests switching the quote token from mSOL back to SOL.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
This adjustment could benefit larger traders who require deeper liquidity while providing opportunities for smaller contributors through lower-fee pools.

#### 📈 Upside Potential  
Revenue from fees could increase significantly, with potential annual treasury growth ranging from approximately $19,416 to $24,960, depending on trading volume scenarios.

#### 📉 Risk Factors  
There is a risk of a 20-30% decrease in trading volume due to the higher fees, which may offset some of the expected revenue gains.

## Content

## Summary

Proposal to increase the DAO's swap liquidity fee from base 0.25% dynamic pool fee to a 5% DLMM base fee to up to 10%, aimed at generating sustainable revenue for the DAO treasury to fund operations and development. 

(The suggestion above is change for a 5% DLMM base pool fee with a bin step of 80.)

The fee adjustment would be implemented through the DAO treasurer hot wallet and fee reclaiming will be done every first week of the month and transfered to the DAO main treasury.

Another addition is the change of the quote token, till know we have been using mSOL and we will change back to SOL till further change.

Dean’s List DAO Treasurer:

- Twitter: @1xraccoon
- Discord: legendraccoon
- Wallet (For this task): 3YW5dxM6u8TG8bZR6ShSiDS8aTfZPG72vUFuGuBVQA2z

![image.png](https://deanslistdao.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Fc7b79f46-7e94-4d8e-af20-da4d8b6f1979%2Fa8acd6e5-422c-41cf-87a0-01c6686c2cff%2Fimage.png?table=block&id=178e0e34-e8f4-803d-a876-f1a73bf0551e&spaceId=c7b79f46-7e94-4d8e-af20-da4d8b6f1979&width=1020&userId=&cache=v2)

## Rationale

The current 0.25% fee structure is insufficient to:

- Generate meaningful revenue for the DAO treasury.
- Support ongoing operational costs.
- Build reserves for future development.

With an average daily volume of ~1,541 USDC (based on 46,228 USDC/06 Dec - 06 Jan), the current fee structure generates minimal treasury inflow.

## Implementation Details

### Technical Specifications

- Create a DLMM pool with a base fee of 5%.
- Implementation through the DAO treasurer.
- No additional development work required.
- Immediate effect upon proposal execution. (1-2 days)

## Benefits

- Increased treasury revenue: At current volume levels, fee revenue would increase from ~3.85 USDC to ~77 USDC daily.
- Enhanced operational sustainability.
- Greater capacity for DAO initiatives and development.
- Strengthened treasury growth potential.

![image.png](https://deanslistdao.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Fc7b79f46-7e94-4d8e-af20-da4d8b6f1979%2Fd5857fe6-67e3-4444-903a-a3f325253047%2Fimage.png?table=block&id=179e0e34-e8f4-80c8-9289-ef36c2192aa0&spaceId=c7b79f46-7e94-4d8e-af20-da4d8b6f1979&width=1420&userId=&cache=v2)

## Assumptions

- Trading volume remains stable at current levels initially.
- Potential 20-30% decrease in volume due to higher fees.
- Net positive impact on treasury despite potential volume decrease.
- Market participants continue to provide liquidity.

### Large trades would likely prefer:

- High liquidity/depth (DAO pool).
- Accept higher fees (5%).
- Less price impact/slippage.
- More predictable execution.

### Small trades would gravitate toward:

- Individual LP pools.
- Lower fees (likely keeping closer to 0.25%).
- Acceptable liquidity for smaller sizes.
- Creates earning opportunities for DAO contributors.

### This effectively creates a tiered market structure where:

1. The DAO captures revenue from larger trades that need the deep liquidity.
2. Contributors are incentivized to provide smaller pools, increasing overall market making participation.
3. Traders can optimize their execution based on trade size.

## Valuation Growth Impact

### Current Metrics

- Treasury: ~ $80,000 (including native tokens, ±5k approximate)
- MCAP: $298,889 (-5% of the MCAP at the time of the proposal to account for volatility between the time of the written proposal and the time of on-chain creation. 11/01/2025 8:53 UTC+0)
- Monthly Trading Volume (06 Dec - 06 Jan): 46,228 USDC
- Current Monthly Fee Revenue (0.25%): ~3.85 USDC

### Growth Scenarios Post-Fee Increase

1. **Conservative Scenario (30% Volume Decrease)**
    - New Monthly Volume: 32,360 USDC
    - New Monthly Fee Revenue (5%): 1,618 USDC
    - Annual Treasury Growth: ~19,416 USDC
2. **Moderate Scenario (20% Volume Decrease)**
    - New Monthly Volume: 36,982 USDC
    - New Monthly Fee Revenue (5%): 1,849 USDC
    - Annual Treasury Growth: ~22,188 USDC
3. **Optimistic Scenario (10% Volume Decrease)**
    - New Monthly Volume: 41,605 USDC
    - New Monthly Fee Revenue (5%): 2,080 USDC
    - Annual Treasury Growth: ~24,960 USDC

![image.png](https://deanslistdao.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Fc7b79f46-7e94-4d8e-af20-da4d8b6f1979%2F9bfacfff-6603-4f21-ae7b-1dc7589189c7%2Fimage.png?table=block&id=179e0e34-e8f4-807f-959f-f87ef8f117ba&spaceId=c7b79f46-7e94-4d8e-af20-da4d8b6f1979&width=1420&userId=&cache=v2)

### Projected Valuation Impact

Assuming a 2.5x treasury-to-MCAP ratio:

- Conservative Scenario: New MCAP = $328,778 (+10%)
- Moderate Scenario: New MCAP = $334,445 (+11.9%)
- Optimistic Scenario: New MCAP = $340,112 (+13.8%)

![image.png](https://deanslistdao.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Fc7b79f46-7e94-4d8e-af20-da4d8b6f1979%2F7aa09a3d-8a07-4114-91c4-68756821b3dc%2Fimage.png?table=block&id=179e0e34-e8f4-807a-a898-fda216a938a5&spaceId=c7b79f46-7e94-4d8e-af20-da4d8b6f1979&width=1420&userId=&cache=v2)

## TWAP Calculation

Current MCAP will be -5% of the MCAP at the time of the proposal to account for volatility: $314,620 - $15,731 = $298,889

- For the proposal to pass: Current MCAP + 3% = $307,855
- For the proposal to fail: MCAP must be less than $298,889 USDC

![image.png](https://deanslistdao.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2Fc7b79f46-7e94-4d8e-af20-da4d8b6f1979%2F6aa154df-3f25-41d2-b638-6cf87d6f448c%2Fimage.png?table=block&id=179e0e34-e8f4-809a-bf1b-f9e6d06bcf8a&spaceId=c7b79f46-7e94-4d8e-af20-da4d8b6f1979&width=1420&userId=&cache=v2)

## Raw Data

- Proposal account: `B8WLuXqoBb3hRD9XBCNuSqxDqCXCixqRdKR4pVFGzNP`
- Proposal number: 8
- DAO account: `9TKh2yav4WpSNkFV2cLybrWZETBWZBkQ6WB6qV9Nt9dJ`
- Proposer: `proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2`
- Autocrat version: 0.3
- Completed: 2025-01-17
- Ended: 2025-01-17
