---
type: source
title: "Futardio: Develop a Saber Vote Market?"
author: "futard.io"
url: "https://www.futard.io/proposal/GPT8dFcpHfssMuULYKT9qERPY3heMoxwZHxgKgPw3TYM"
date: 2023-12-16
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Develop a Saber Vote Market?
- Status: Passed
- Created: 2023-12-16
- URL: https://www.futard.io/proposal/GPT8dFcpHfssMuULYKT9qERPY3heMoxwZHxgKgPw3TYM
- Description: I propose that we build a vote market as we proposed in proposal 0, only for Saber instead of Marinade.

## Summary

### 🎯 Key Points
The proposal aims to develop a Saber Vote Market funded by $150,000 from various ecosystem teams, enabling veSBR holders to earn extra yield and allowing projects to easily access liquidity.

### 📊 Impact Analysis
#### 👥 Stakeholder Impact
The platform will benefit users by providing them with opportunities to earn additional yield and assist teams in acquiring liquidity more efficiently.

#### 📈 Upside Potential
The Meta-DAO could generate significant revenue through a take rate on vote trades, enhancing its legitimacy and value.

#### 📉 Risk Factors
There is a potential risk of lower than expected trading volume, which could impact the financial sustainability and operational success of the platform.

## Content

## Overview

It looks like things are coming full circle. Here, I propose that we build a vote market as we proposed in [proposal 0](https://hackmd.io/ammvq88QRtayu7c9VLnHOA?view), only for Saber instead of Marinade. I'd recommend you read that proposal for the context, but I'll summarize briefly here:
- I proposed to build a Marinade vote market
- That proposal passed
- We learned that Marinade was developing an internal solution, we pivoted to supporting them

All of that is still in motion. But recently, I connected with [c2yptic](https://twitter.com/c2yptic) from Saber, who happens to be really excited about the Meta-DAO's vision. Saber was planning on creating a vote market, but he proposed that the Meta-DAO build it instead. I think that this would be a tremendous opportunity for both parties, which is why I'm proposing this.

Here's the high-level:
- The platform would be funded with $150,000 by various ecosystem teams that would benefit from the platform's existence including UXD, BlazeStake, LP Finance, and Saber.
- veSBR holders would use the market to earn extra yield
- Projects that want liquidity could easily pay for it, saving time and money relative to a bespoke campaign
- The Meta-DAO would own the majority of the platform, with the remaining distributed to the ecosystem teams mentioned above and to users via liquidity mining.

## Why a Saber Vote Market would be good for users and teams

### Users

Users would be able to earn extra yield on their SBR (or their veSBR, to be precise).

### Teams

Teams want liquidity in their tokens. Liquidity is both useful day-to-day - by giving users lower spreads - as well as a backstop against depeg events.

This market would allow teams to more easily and cheaply pay for liquidity. Rather than a bespoke campaign, they would in effect just be placing limit orders in a central market.

## Why a Saber Vote Market would be good for the Meta-DAO

### Financial projections

The Meta-DAO is governed by futarchy - an algorithm that optimizes for token-holder value. So it's worth looking at how much value this proposal could drive.

Today, Saber has a TVL of $20M. Since votes are only useful insofar as they direct that TVL, trading volume through a vote market should be proportional to it.

We estimate that there will be approximately **\$1 in yearly vote trade volume for every \$50 of Saber TVL.** We estimate this using Curve and Aura:
- Today, Curve has a TVL of \$2B. This round of gauge votes - which happen every two weeks - [had \$1.25M in tokens exchanged for votes](https://llama.airforce/#/incentives/rounds/votium/cvx-crv/59). This equates to a run rate of \$30M, or \$1 of vote trade volume for every \$67 in TVL.
- Before the Luna depeg, Curve had \$20B in TVL and vote trade volume was averaging between [\$15M](https://llama.airforce/#/incentives/rounds/votium/cvx-crv/10) and [\$20M](https://llama.airforce/#/incentives/rounds/votium/cvx-crv/8), equivalent to \$1 in yearly vote trade volume for every \$48 in TVL.
- In May, Aura has \$600M in TVL and [\$900k](https://llama.airforce/#/incentives/rounds/hh/aura-bal/25) in vote trade volume, equivalent to \$1 in yearly vote trade volume for every \$56 of TVL

The other factor in the model will be our take rate. Based on Convex's [7-10% take rate](https://docs.convexfinance.com/convexfinance/faq/fees#convex-for-curve), [Votium's ~3% take rate](https://docs.votium.app/faq/fees#vlcvx-incentives), and [Hidden Hand's ~10% take rate](https://docs.redacted.finance/products/pirex/btrfly#is-there-a-fee-for-using-pirex-btrfly), I believe something between 5 and 15% is reasonable. Since we don't expect as much volume as those platforms but we still need to pay people, maybe we start at 15% but could shift down as scale economies kick in.

Here's a model I put together to help analyze some potential scenarios:

![Screenshot from 2023-12-14 15-18-26](https://hackmd.io/_uploads/B1vCn9d8p.png)

The 65% owned by the Meta-DAO would be the case if we distributed an additional 10% of the supply in liquidity incentives / airdrop.

### Legitimacy

As [I've talked about](https://medium.com/@metaproph3t/an-update-on-the-first-proposal-0e9cdf6e7bfa), assuming futarchy works, the most important thing to the Meta-DAO's success will be acquiring legitimacy. Legitimacy is what leads people to invest their time + money into the Meta-DAO, which we can invest to generate financially-valuable outputs, which then generates more legitimacy.

![image](https://hackmd.io/_uploads/BkPF69dL6.png)

By partnering with well-known and reputable projects, we increase the Meta-DAO's legitimacy.

## How we're going to execute

### Who

So far, the following people have committed to working on this project:
- [Marie](https://twitter.com/swagy_marie) to build the UI/UX
- [Matt / fzzyyti](https://x.com/fzzyyti?s=20) to build the smart contracts
- [Durden](https://twitter.com/durdenwannabe) to design the platform & tokenomics
- [Joe](https://twitter.com/joebuild) and [r0bre](https://twitter.com/r0bre) to audit the smart contracts
- [me](https://twitter.com/metaproph3t) to be the [accountable party](https://discord.com/channels/1155877543174475859/1172275074565427220/1179750749228519534) / program manager

UXD has also committed to review the contracts.

### Timeline

#### December 11th - December 15th

Kickoff, initial discussions around platform design & tokenomics

#### December 18th - December 22nd

Lower-level platform design, Matt starts on programs, Marie starts on UI design

#### December 25th - January 5th (2 weeks)

Holiday break

#### January 8th - January 12th

Continued work on programs, start on UI code

#### January 15th - January 19th

Continued work on programs & UI

Deliverables on Friday, January 19th:
- Basic version of program deployed to devnet. You should be able to create pools and claim vote rewards. Fine if you can't claim $BRB tokens yet. Fine if tests aren't done, or some features aren't added yet.
- Basic version of UI. It's okay if it's a Potemkin village and doesn't actually interact with the chain, but you should be able to create pools (as a vote buyer) and pick a pool to sell my vote to.

#### January 22nd - 26th

Continue work on programs & UI, Matt helps marie integrate devnet program into UI

Deliverables on Friday, January 26th:
- MVP of program
- UI works with the program delivered on January 19th

#### January 29th - Feburary 2nd

Audit time! Joe and r0bre audit the program this week

UI is updated to work for the MVP, where applicable changes are

#### February 5th - Febuary 9th

Any updates to the program in accordance with the audit findings

UI done

#### February 12th - February 16th

GTM readiness week!

Proph3t or Durden adds docs, teams make any final decisions, we collectively write copy to announce the platform

#### February 19th

Launch day!!! 🎉

### Budget

Based on their rates, I'm budgeting the following for each person:
- $24,000 to Matt for the smart contracts
- $12,000 to Marie for the UI
- $7,000 to Durden for the platform design
- $7,000 to Proph3t for program management
- $5,000 to r0bre to audit the program
- $5,000 to joe to audit the program
- $1,000 deployment costs
- $1,000 miscellaneous

That's a total of \$62k. As mentioned, the consortium has pledged \$150k to make this happen. The remaining \$90k would be custodied by the Meta-DAO's treasury, partially to fund the management / operation / maintenance of the platform.

### Terminology

For those who are more familiar with bribe terminology, which I prefer not to use:
- briber = vote buyer
- bribee = vote seller
- bribe platform = vote market / vote market platform
- bribes = vote payments / vote trade volume



## References

- [Solana DeFi Dashboard](https://dune.com/summit/solana-defi)
- [Hidden Hand Volume](https://dune.com/embeds/675784/1253758)
- [Curve TVL](https://defillama.com/protocol/curve-finance)
- [Llama Airforce](https://llama.airforce/#/incentives/rounds/votium/cvx-crv/59)

## Raw Data

- Proposal account: `GPT8dFcpHfssMuULYKT9qERPY3heMoxwZHxgKgPw3TYM`
- Proposal number: 2
- DAO account: `7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy`
- Proposer: `HfFi634cyurmVVDr9frwu4MjGLJzz9XbAJz981HdVaNz`
- Autocrat version: 0.1
- Completed: 2023-12-22
- Ended: 2023-12-22
