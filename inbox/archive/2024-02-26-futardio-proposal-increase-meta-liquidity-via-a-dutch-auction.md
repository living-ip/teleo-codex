---
type: source
title: "Futardio: Increase META Liquidity via a Dutch Auction?"
author: "futard.io"
url: "https://www.futard.io/proposal/Dn638yPirR3e2UNNECpLNJApDhxsjhJTAv9uEd9LBVVT"
date: 2024-02-26
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Increase META Liquidity via a Dutch Auction?
- Status: Passed
- Created: 2024-02-26
- URL: https://www.futard.io/proposal/Dn638yPirR3e2UNNECpLNJApDhxsjhJTAv9uEd9LBVVT
- Description: Increase META Liquidity via a Dutch Auction

## Summary

### 🎯 Key Points  
The proposal aims to increase META liquidity through a manual Dutch auction on OpenBook, selling 1,000 META and pairing the USDC obtained with META for enhanced liquidity on Meteora.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
Stakeholders, including Meta DAO members and liquidity providers, may benefit from improved liquidity and trading conditions for META.

#### 📈 Upside Potential  
The initiative could result in a significant increase in protocol-owned liquidity and potentially higher trading fees due to more efficient liquidity management.

#### 📉 Risk Factors  
There is a risk of insufficient demand for META during the auction, which may lead to lower-than-expected liquidity or losses if prices drop significantly.

## Content

#### Responsible Parties
Durden, Ben H, Nico, joebuild, and Dodecahedr0x.

### Overview
Sell META via a Dutch auction executed manually through OpenBook, and pair the acquired USDC with META to provide liquidity on Meteora.

### Background
Given the currently low volume and high volatility of META, there is little incentive to provide liquidity (low fees, high risk of impermanent loss). Yet there seems to be near-universal agreement in the Meta DAO Discord that greater liquidity would be highly beneficial to the project.

While the DAO has plenty of META, to provide liquidity it needs USDC to pair with it's META. This USDC can be acquired by selling META.

There is currently strong demand for META, with an oversubscribed raise (proposal 3), proposals from notable parties attemtpting to purchase META at below market price, and a well-known figure DCAing into META. There is thus no need to sell META for USDC at below market prices; we only need to sell META at a price that would be better than if they were to buy through the market.

This proposal seeks to manually perform a Dutch auction using OpenBook. This serves a few purposes: price discovery through a market that is open to all, low smart contract risk (relative to using a custom Dutch auction program), simplicity (which will result in wider participation), and ease of execution (just place asks on OpenBook).

### Implementation
Meta DAO will sell a total of 1,000 META.

The META will be sold in tranches of 100 META by placing asks above the spot price. The first tranche will be placed 50% above the spot price. Every 24 hours, if the ask is more than 6% above the spot price, it will be lowered by 5%.

Whenever an ask is filled, a new ask worth 100 META will be placed 10% above the spot price. In addition, USDC from the filled asks will be paired with META and added to the 4% fee pool.

The multisig currently holding the liquidity in the [4% fee pool](https://app.meteora.ag/pools/6t2CdBC26q9tj6jBwPzzFZogtjX8mtmVHUmAFmjAhMSn) will send their LP tokens to this proposal's multisig. After the 1,000 META has all been sold, all of Meta DAO's liquidity will be moved to the [1% fee pool](https://app.meteora.ag/pools/53miVooS2uLfVpiKShXpMqh6PkZhmfDXiRAzs3tNhjwC). The LP tokens will be sent to the treasury to be held as permanent liquidity until Meta DAO decides otherwise.

All operations will be executed through a 3/5 Squads multisig.

Multisig address: `LMRVapqnn1LEwKaD8PzYEs4i37whTgeVS41qKqyn1wi`

The multisig is composed of the following five members:

Durden: `91NjPFfJxQw2FRJvyuQUQsdh9mBGPeGPuNavt7nMLTQj`

Ben H: `Hu8qped4Cj7gQ3ChfZvZYrtgy2Ntr6YzfN7vwMZ2SWii`

Nico: `6kDGqrP4Wwqe5KBa9zTrgUFykVsv4YhZPDEX22kUsDMP`

joebuild: `XXXvLz1B89UtcTsg2hT3cL9qUJi5PqEEBTHg57MfNkZ`

Dodecahedr0x: `UuGEwN9aeh676ufphbavfssWVxH7BJCqacq1RYhco8e`

I will be using the SquadsX wallet to propose transactions to interact with OpenBook through [Prism's UI](https://v4xyz.prism.ag/trade/v2/2Fgj6eyx9mpfc27nN16E5sWqmBovwiT52LTyPSX5qdba). Once proposed, I will vote on the proposed transaction and wait for two other multisig members to sign and execute.

If the proposal passes, those with the permissions to make announcements in the Discord and access to the Meta DAO Twitter account will be notified so they can announce this initiative.

### Compensation
I am requesting a payment of 5 META to cover the cost of creating the market for this proposal and for the effort of crafting this proposal and carrying it out to completion.

For the compensation of the multisig members other than myself, I performed a sealed-bid auction via Discord DMs for the amount of META that each of the 10 candidates would require to become a member. Those who were willing to join for the least amount of META were selected. Only individuals who were already respectable Meta DAO members were selected as candidates so that regardless of who was chosen we didn't end up in a precarious situation. This was done in order to create a competitive dynamic that minimizes the cost incurred by Meta DAO.

The candidates with the lowest asks and their requested amounts were as follows:

- Ben H – 0 META
- Nico – 0 META
- joebuild – 0.2 META
- Dodecahedr0x – 0.25 META
All compensatory payments will be made by the multisig to each individual upon the completion of the proposal.

### Total Required META
Since the amount of META needed to be paired for liquidity is unknown until the META is actually sold, we will request double the amount of META to be sold, which leaves a fairly large margin for price to increase and still have enough META. In the event that there is insufficient META to pair with the USDC, the excess USDC will be returned to the treasury. Similarly, any META slated for liquidity that is leftover will be returned to the treasury.

META to be sold: 1,000

META for liquidity: 2,000

META for compensation: 5.45

**Total: 3,005.45**

### Result
This proposal will significantly increase Meta DAO's protocol-owned liquidity as well as move its existing liquidity to a more efficient fee tier, addressing recent complaints and concerns regarding META's liquidity.

## Raw Data

- Proposal account: `Dn638yPirR3e2UNNECpLNJApDhxsjhJTAv9uEd9LBVVT`
- Proposal number: 10
- DAO account: `7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy`
- Proposer: `prdUTSLQs6EcwreBtZnG92RWaLxdCTivZvRXSVRdpmJ`
- Autocrat version: 0.1
- Completed: 2024-03-02
- Ended: 2024-03-02
