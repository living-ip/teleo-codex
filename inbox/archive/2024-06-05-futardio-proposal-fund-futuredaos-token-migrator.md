---
type: source
title: "Futardio: Fund FutureDAO's Token Migrator"
author: "futard.io"
url: "https://www.futard.io/proposal/BMZbX7z2zgLuq266yskeHF5BFZoaX9j3tvsZfVQ7RUY6"
date: 2024-06-05
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2026-03-11
claims_extracted: ["futuredao-token-migrator-enables-community-takeovers-through-structured-on-chain-migration-with-presale-fundraising-and-conditional-success-thresholds.md", "token-migration-fees-distributed-to-staked-nft-holders-create-revenue-sharing-without-direct-dao-treasury-capture.md", "token-migration-projected-revenue-assumes-linear-adoption-without-accounting-for-market-saturation-or-competitive-dynamics.md"]
enrichments_applied: ["MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted 3 claims about token migration mechanism design, NFT-based fee distribution model, and revenue projection methodology. Created FutureDAO entity and decision_market entity for the proposal. Enriched existing claims about MetaDAO's unruggable ICO concept and SPL-404 revenue distribution. The proposal contains detailed mechanism design (60% threshold, tiered fees, conditional success) that warrants claim extraction beyond just entity data. Revenue projections are speculative given lack of adoption modeling."
---

## Proposal Details
- Project: FutureDAO
- Proposal: Fund FutureDAO's Token Migrator
- Status: Passed
- Created: 2024-06-05
- URL: https://www.futard.io/proposal/BMZbX7z2zgLuq266yskeHF5BFZoaX9j3tvsZfVQ7RUY6
- Description: Approve the development and launch of FutureDAO's Token Migrator, facilitating the seamless transition of one token into another. We empower communities to innovate, fundraise and reclaim control.

## Summary

### 🎯 Key Points  
Approve the development of FutureDAO's Token Migrator, enabling seamless token transitions for communities abandoned by developers while generating revenue through fees based on market cap.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
This project provides a structured solution for communities to regain control and value in their token projects, enhancing community engagement.

#### 📈 Upside Potential  
If successful, the Token Migrator could generate significant revenue for FutureDAO and its NFT holders, with projected earnings of $270,000 from eight migrations in the first year.

#### 📉 Risk Factors  
The project may face challenges related to user adoption and market volatility, which could impact the success rate of token migrations and revenue generation.

## Content

# TL;DR

Approve the development and launch of FutureDAO's Token Migrator, facilitating the seamless transition of one token into another. We empower communities to innovate, fundraise and reclaim control.

## Overview

FutureDAO is pioneering the first decentralized on-chain token migration tool. This tool is designed to facilitate seamless transitions from one token to another, catering to communities that have been abandoned by their developers, facing challenges such as poor project management, or with the desire to launch a new token. Born from our own experience with a takeover of $MERTD after the project team “rugged”, this tool will empower communities to band together and take control over their future.

- **Target Customer:** Communities of web3 projects abandoned by developers, poorly managed, or seeking to launch new tokens.
- **Problem Solved:** Provides a structured, on-chain protocol to facilitate community token migrations.
- **Monetization:** Fees are charged based on the market cap of the projects migrating.
- **Key Metrics:** Number of successful migrations, volume of tokens transitioned, community engagement levels, and $FUTURE token metrics (e.g., staking rates, price).

This project directly relates to FutureDAO’s business by:

- **Value Creation:** Enhancing the value of the FutureDAO ecosystem and the NFT DAO by increasing its utility and market demand.
- **Total Budget:** $12,000 USDC

## Problem

The need for a structured, secure, and transparent approach to token migrations is evident in the challenges faced by many web3 projects today, including:

- **Rugged Projects:** Preserve community and restore value in projects affected by rug pulls.
- **Dead Projects:** Revitalizing projects that have ceased operations, giving them a second life.
- **Metadata Changes:** Enhancing transparency, trust, and providence by optimizing metadata for better engagement and discoverability. 
- **Fundraising:** Securing financial support to sustain and expand promising projects
- **Token Extentions:** Allowing projects to re-launch in Solana's newest standard.
- **Hostile Takeovers:** Enabling projects to acquire other projects and empowering communities to assert control over failed project teams.

Our service addresses these issues, providing a lifeline to communities seeking to reclaim, transform, or enhance their projects.

## Design

Future’s Token Migrator will be developed as a dApp on Solana for optimal performance, security, and scalability. It will form a core part of Future’s Protocol.

- **Product Description:** The tool facilitates seamless transitions from one token to another, allowing communities to regain control and ensure proper governance. "Future Champions" will identify, engage, and assist potential clients, supporting them throughout the process. These champions are incentivized through commissions in newly minted tokens.

## Business

### Migration Process

1. **Intake:**
   - Community onboarded.
2. **Launch Parameters Set:**

   a. Migration date & duration chosen.
   
   b. Pre-sale raise amount & price ($SOL) selected.
   
   c. Treasury allocation selected.

   > **Max dilution rates:**
   > - <$1m FDMC: 15% (7.5% presale, 5.5% Treasury 2% DAO Fee)
   > - <$5m FDMC: 12% (6% presale, 4.5% Treasury 1.5% DAO Fee)
   > - <$20m FDMC: 10% (5% presale, 4% Treasury 1% DAO Fee)
   > **Maximum inflation is based on current token market caps to keep fees and token dilution as fair as possible.*
3. **Token Migration Begins:**

   a. Token added to Future Protocol Migrator Front-end

   b. Pre-sale goes live.

   c. \$oldTOKEN can now be swapped for \$newTOKEN

      i. Tokens are locked until migration is completed successfully.

4. **Token Migration Ends:**

   a. **Successful ( >60% Presale Raised ):**
     - \$oldTOKEN sold reclaim locked L.P.
     - \$newTOKEN plus \$SOL raised or reclaimed placed in L.P.
     - \$newTOKENs claimable by swap & pre-sale participants.
     - Unclaimed \$newTOKENs sent to community multi-sig.
       - *Not FutureDao's multi-sig*
     - \$oldTOKEN holders who do not migrate are airdropped 50%.
     
   b. **Unsuccessful ( <60% Presale Raised ):**
   
      1. Presale \$SOL is returned to all participants.

      2. \$newTOKEN must be swapped back into the \$oldTOKEN frozen in the contract.

      3. All \$newTOKEN is burnt.

## Monetization

- **Fee Structure:** FutureDAO does not benefit monetarily from these token migrations. All fees are directed to the Champions NFT holders. To be eligible for rewards, the NFTs must be staked (SPL-404) within the Future Protocol NFT Portal.
- As mentioned in Launch Parameters, fees are charged based on the market cap of the projects migrating:
  - For projects with FDMC <\$1M = 2%
  - For projects with FDMC <\$5M = 1.5%
  - For projects with FDMC <\$20M = 1%
> *EXAMPLE: The fees are taken as inflation on the \$newTOKEN mint and are delivered to the Champions NFT DAO over a 30 day period. For example, if \$MERTD had 1 billion tokens in circulation with an FDMC of \$2M, the new \$FUTURE supply would be 1.12 billion tokens, with allocations as follows:*
> - *1 billion tokens reserved for \$MERTD holders at 1:1*
> - *60 million tokens for the presale*
> - *45 million tokens for the treasury*
> - *15 million tokens delivered to the Champions NFT DAO*

## Financial Projections

Based on the projected revenue for FutureDAO’s Token Migrator, we can provide a hypothetical example of its financial potential in the first year. According to market analysis, there have been at least 27 notable meme coin presales on Solana in the past 12 months, raising significant funds despite high abandonment (rugging) rates ([Coin Edition](https://coinedition.com/12-solana-presale-meme-coins-abandoned-in-a-month-crypto-sleuth/)) ([Coinpedia Fintech News](https://coinpedia.org/press-release/solana-meme-coin-presale-trend-continues-as-slothana-reaches-1m/)). This suggests a strong demand for structured and secure migration solutions.

For example, if Future’s Takeover Tool is utilized for 8 project de-ruggings in its first year, it could generate $270,000 for Future community members that hold Future Champion’s NFTs.

This revenue would be derived from the 8 projects as follows:
- 3 projects under \$1M FDMC: Each charged a 2% fee, generating a total of $60,000 for Future community member NFT holders.
- 4 projects under \$5M FDMC: Each charged a 1.5% fee, generating a total of $120,000 for Future community member NFT holders.
- 1 project under \$20M FDMC: Charged a 1% fee, generating $50,000 for Future community member NFT holders.

**Budget:** \$12,000 USDC

- \$6,000 USDC tool development
- \$6,000 USDC smart contract and other security audits

## About Future DAO

FutureDAO is a market-governed decentralized organization powered by MetaDAO's futarchy infrastructure.  

FutureDAO is building the Future Protocol to help communities safeguard and amplify value by providing them with on-chain token migration tools to take control of their futures. 

For more detailed information, you can visit the [Future DAO Gitbook](https://futurespl.gitbook.io/future).

## Raw Data

- Proposal account: `BMZbX7z2zgLuq266yskeHF5BFZoaX9j3tvsZfVQ7RUY6`
- Proposal number: 1
- DAO account: `ofvb3CPvEyRfD5az8PAqW6ATpPqVBeiB5zBnpPR5cgm`
- Proposer: `HfFi634cyurmVVDr9frwu4MjGLJzz9XbAJz981HdVaNz`
- Autocrat version: 0.3
- Completed: 2024-06-08
- Ended: 2024-06-08


## Key Facts
- FutureDAO proposal BMZbX7z2zgLuq266yskeHF5BFZoaX9j3tvsZfVQ7RUY6 passed 2024-06-08
- Token Migrator budget: $12,000 USDC ($6K development, $6K audits)
- Fee structure: 2% for <$1M FDMC, 1.5% for <$5M, 1% for <$20M
- 60% presale threshold determines migration success
- Non-migrators receive 50% airdrop if migration succeeds
- Fees distributed to Champions NFT stakers over 30 days via SPL-404
- At least 27 notable meme coin presales on Solana in past 12 months (per Coin Edition, Coinpedia)
- FutureDAO born from $MERTD takeover after project team rugged
