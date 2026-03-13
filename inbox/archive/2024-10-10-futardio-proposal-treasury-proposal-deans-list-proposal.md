---
type: source
title: "Futardio: Treasury Proposal (Dean's List Proposal)"
author: "futard.io"
url: "https://www.futard.io/proposal/8SwPfzKhaZ2SQfgfJYfeVRTXALZs2qyFj7kX1dEkd29h"
date: 2024-10-10
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2026-03-11
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Governance proposal with detailed treasury management framework. Created decision_market entity for the proposal and updated parent entity timeline. No novel claims - this is operational governance implementing existing futarchy mechanisms. Risk scoring framework is specific to this DAO's treasury management, not a general claim about futarchy design."
---

## Proposal Details
- Project: IslandDAO
- Proposal: Treasury Proposal (Dean's List Proposal)
- Status: Passed
- Created: 2024-10-10
- URL: https://www.futard.io/proposal/8SwPfzKhaZ2SQfgfJYfeVRTXALZs2qyFj7kX1dEkd29h
- Description: This proposal seeks to establish a reserve within the Dean's List treasury on Realms, aimed at ensuring financial stability and enabling long-term growth. 
- Categories: {'category': 'Treasury'}

## Summary

### 🎯 Key Points  
The proposal aims to establish a treasury reserve funded by 2.5% of USDC payments to ensure financial stability and support long-term growth for the DAO. It emphasizes community engagement and transparency through regular performance reporting and asset risk scoring.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
Stakeholders will benefit from improved financial security and the opportunity to influence treasury management decisions through community feedback.

#### 📈 Upside Potential  
The reserve could enhance the DAO's resilience during economic downturns while enabling growth through a diversified, low-risk asset portfolio.

#### 📉 Risk Factors  
The proposal carries risks related to asset volatility and reliance on community input, which may affect decision-making and financial outcomes.

## Content

This proposal seeks to establish a reserve within the Dean's List treasury on Realms, aimed at ensuring financial stability and enabling long-term growth. The reserve will be funded by allocating 2.5% of all USDC payments received by the DAO, with the treasury being managed by Kai (@DeFi\_Kai), and ongoing input and feedback from the community.

The reserved funds will be securely held in our **Mango Delegate Account via Realms**. Potential diversification options include low-risk assets like USDY (Yield-bearing USD) and riskier assets like JLP (Jupiter Liquidity Pools).

*Comprehensive reports will be provided for each asset in the portfolio.*

### Treasury Management & Oversight

To ensure transparency and accountability, it’s suggested that Kai’s role as Treasury Manager be subject to a quarterly review. At the end of each quarter, Kai will submit a comprehensive performance report and proposal. These reports will include a detailed analysis of the following:

- **PNL (Profit and Loss):** A breakdown of gains or losses incurred during the quarter.  
- **Strategy Success Rates:** Evaluation of implemented strategies and their effectiveness.  
- **Future Proposals:** Recommendations for any new strategies or changes based on market conditions and community feedback.

#### Whitelisted Assets

Each asset proposed for the treasury should be evaluated according to a risk score. The risk score is a value that rates assets from 0 (risky) to 1 (safe).

_The risk score (Rs) in this proposal is based on early calculations and methods that are still being worked on. While we plan to finish the full risk scoring system by next quarter, please note that the current numbers might not show all important risk factors yet_

$ Rs=(w1⋅Volatility)+(w2⋅Liquidity Risk)+(w3⋅Market Cap Risk)+(w4⋅Historical Drawdown Risk) $

- Volatility Weight (w1): 0.4  
- Liquidity Risk Weight (w2): 0.2  
- Market Cap Risk Weight (w3): 0.3  
- Drawdown Risk Weight (w4): 0.1

**Volatility:** Historical standard deviation of daily returns (normalized as decimal i.e. 70% \= 0.7).   
**Volume:** Measure trading volume relative to liquidity over the past 90 days. OR define a benchmark for volume and compare the asset's volume to the benchmark.   
**Market Cap Risk:** Comparing asset market caps to a benchmark marketcap.   
**Drawdown risk:** The largest percentage drop in the value of an asset from its peak to its trough. (normalized as decimal i.e. 70% \= 0.7)

**Assets with an RS \<= .5 are risky, and assets with an RS \>= .5 are considered safer.**  

The portfolio will consist of an 80/20 split, with 80% of the portfolio being safe assets and the remaining 20% consisting of risky assets. 

Any asset proposed by Dean’s List Citizens must be scored and compared to the current assets in the treasury. Before implementation, the asset will be judged on its ability to:

1. Increase overall returns.  
2. Offer diversification (when required).  
3. Replace a similar asset with a lower risk score.

The weight of the newly proposed asset (compared to the treasury) will be assessed to achieve the highest and safest returns. 

## Budget

- Performance fee: 5% of the treasury's quarterly profit.   
- At the end of each quarter, a 3-month vesting contract will be created, totaling 5% of the treasury's profits for the previous quarter.

### Goals of the Proposal:

1. Establish a Treasury Reserve:  
   1. Create a dedicated reserve fund to serve as a financial buffer for the DAO, particularly in "rainy day" scenarios (e.g., significant economic downturns, emergency DAO funding needs).  
   2. This reserve will focus on risk mitigation and capital preservation, ensuring that the DAO remains resilient in times of uncertainty.  
2. Support DAO Longevity and Growth:  
   1. Enable potential growth of the reserve through a diversified, risk-averse portfolio, focusing on stable and USD-backed assets. This will allow the DAO to balance liquidity needs while pursuing low-risk yield opportunities.  
3. Community Engagement and Feedback:  
   1. Community members will have the opportunity to contribute their perspectives and insights into asset diversification, helping guide treasury decisions to align with the collective best interests of the DAO.

#### TWAP
TWAP 3% Increase Requirement:

Current MCAP: 523k USDC
Target MCAP: 539k USDC

\$DEAN Price Prediction (3% TWAP):  

Current \$DEAN Price: 0.005227 USDC
Target \$DEAN Price: 0.005383 USDC

### Deliverables for First Quarter (after proposal):

1. Define Rainy Day Scenarios:  
   1. Collaborate with the community to establish clear guidelines on what qualifies as a "rainy day" event, specifying the conditions in which the reserve can be accessed.  
2. Produce Initial Treasury Reports:  
   1. Deliver comprehensive reports covering the following metrics:  
      1. Treasury growth since the reserve was established.  
      2. Current asset allocation and diversification.  
         1. Expected return calculation   
         2. Sharpe Ratio for Risk-adjusted Performance   
         3. Maximum Drawdown   
      3. Projections of future treasury growth based on ongoing strategies.  
      4. Actual returns vs. expected returns.  
      5. A summary of risk management efforts.

## Raw Data

- Proposal account: `8SwPfzKhaZ2SQfgfJYfeVRTXALZs2qyFj7kX1dEkd29h`
- Proposal number: 4
- DAO account: `9TKh2yav4WpSNkFV2cLybrWZETBWZBkQ6WB6qV9Nt9dJ`
- Proposer: `proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2`
- Autocrat version: 0.3
- Completed: 2024-10-14
- Ended: 2024-10-14


## Key Facts
- IslandDAO treasury proposal passed 2024-10-14 with 3% TWAP requirement (523k to 539k USDC MCAP)
- Risk scoring formula weights: Volatility 0.4, Liquidity 0.2, Market Cap 0.3, Drawdown 0.1
- Treasury manager performance fee: 5% of quarterly profit with 3-month vesting
- Target $DEAN price: 0.005383 USDC (from 0.005227 USDC)
- Portfolio allocation: 80% safe assets (RS >= 0.5), 20% risky assets (RS <= 0.5)
