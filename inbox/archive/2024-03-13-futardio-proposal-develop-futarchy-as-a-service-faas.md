---
type: source
title: "Futardio: Develop Futarchy as a Service (FaaS)?"
author: "futard.io"
url: "https://www.futard.io/proposal/D9pGGmG2rCJ5BXzbDoct7EcQL6F6A57azqYHdpWJL9Cc"
date: 2024-03-13
domain: internet-finance
format: data
status: entity-data
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Develop Futarchy as a Service (FaaS)?
- Status: Passed
- Created: 2024-03-13
- URL: https://www.futard.io/proposal/D9pGGmG2rCJ5BXzbDoct7EcQL6F6A57azqYHdpWJL9Cc
- Description: Develop Futarchy as a Service (FaaS)

## Summary

### 🎯 Key Points
The proposal aims to develop Futarchy as a Service (FaaS) by creating a minimum viable product that enables DAOs to utilize market-driven governance and improve the user interface for better functionality.

### 📊 Impact Analysis
#### 👥 Stakeholder Impact
This initiative provides DAO creators and participants with a more effective governance tool that leverages market predictions, potentially enhancing decision-making processes.

#### 📈 Upside Potential
If successful, FaaS could attract numerous DAOs, significantly increasing MetaDAO's revenue through licensing and transaction fees.

#### 📉 Risk Factors
There is a risk of cost overruns and project delays, which could impact the financial viability and timeline of the proposal.

## Content


![ecosystem](https://hackmd.io/_uploads/r1PShQkCa.png)

Type: Business project

Entrepreneur(s): 0xNallok

*A note from 0xNallok: Special thanks are owed to the many parties who've supported the project thus far, to those who've taken massive risk on utilizing the systems and believing in a better crypto. It has been one of the most exciting things, not in attention, but seeing the “aha!” moments and expanding the understanding of what is possible with crypto.*

See also: [A Vision for Futarchy as a Service](https://hackmd.io/@0xNallok/rJ5O9LwaT)

## Overview

The appetite for market-driven governance is palpable. We have a tremendous opportunity to take this labor of love and shape it into a prime-time product. Such a product would be a great boon to the Solana ecosystem and to the MetaDAO's bottom line.

If passed, this proposal would fund two workstreams:

- **Minimum viable product**: I would coordinate the creation of a minimum viable product: a Realms-like UI that allows people to create and participate in futarchic DAOs. This requires some modifications to the smart contract and UI to allow for more than one DAO.
- **UI improvements**: I've already been working with engineers to add helpful functionality to the UI. This proposal would fund these features, including:
  - historical charts
  - improving UX around surfacing information (e.g., showing how much money you have deposited in each proposal)
  - showing historical trades
  - showing market volume

The goal would be to onboard some early adopter DAOs to test alongside MetaDAO. A few teams have already expressed interest.

## Problem

Most people in crypto agree that the state of governance is abysmal. Teams can loot the treasury without repercussions[^1]. Decentralization theatre abounds[^2]. Even some projects that build DAO tooling don't feel comfortable keeping their money in a DAO[^3].

The root cause of this issue is token-voting. One-token-one-vote systems have clear incentive traps[^4] that lead to uninformed and unengaged voters. Delegated voting systems ('liquid democracy') don't fare much better: most holders don't even do enough research to delegate.

## Design
![Screenshot 2024-03-07 at 1.40.37 PM](https://hackmd.io/_uploads/Hyg89FDTa.jpg)

A possible solution that MetaDAO has been testing out is futarchy. In a futarchy, it's markets that make the decisions. Given that markets are empirically better than experts at predicting things, we expect futarchies to perform better than traditional DAOs.

Our objective is to build a product that allows DAOs in the Solana ecosystem to harness the power of the market for their decision-making. This product would look and feel like [Realms](https://realms.today/), only with futarchy instead of voting.

Our short-term goal is to create a minimum viable iteration of this. This iteration would support the following flows:
- I, as a DAO creator, can come to a website and create a futarchic DAO
- I, as a futarchic trader, can trade in multiple DAOs proposals' futarchic markets

To monetize this in the long-term, we could:
- Collect licensing fees
- Collect taker/maker fees in the conditional markets
- Provide ancillary consulting services to help DAOs manage their futarchies

The minimum viable product wouldn't support these. We would instead work with a few select DAOs and sign agreements with them to migrate to a program with fee collection within 6 months of it being released if they wish to continue to use MetaDAO's offering.

### Objectives and Key Results

**Release a minimum viable product by May 21st, 2024**
- Extend the smart contract to support multiple DAOs
- Generalize the UI to support multiple DAOs
- Create docs for interacting with the product
- Partner with 3 DAOs to have them use the product at launch-time

**Improve the overall UI/UX**
- Create an indexer and APIs for order and trade history
- Improve the user experience for creating proposals
- Improve the user experience for trading proposals

### Timeline

**Phase 1**
Initial discussions around implementation, services and visual components
UI design for components
Development of components in React
Program development
Data services / APIs construction

**Phase 2**
Program deployed on devnet
Data services / APIs linked with devnet
UI deployed on dev branch for use with devnet

**Phase 3**
Audit and revisions of program
Testing UI, feedback and revisions mainnet with limited beta testers and on devent

**Phase 4**
Proposal for migration of program
UI live on mainnet
Create documentation and videos

**Final**
Migrate program

## Budget

This project is expected to have deliverables within 30 days with full deployment within two months.

Below is the inclusion of estimated **MAXIMUM** _costs and hours_ for the following roles[^5]. **If costs do incur beyond this estimate the cost is to be borne by the Entrepreneur.**

A fair estimate of `$96,000`[^6] for the two months including the following:
- 1 smart contract engineer (\$15,000) (160 hours)
- 1 auditor (\$10,000) (40 hours)
- 2 UI / UX (\$32,000) (400 hours)
- 1 data/services developer (\$13,000) (140 hours)
- 1 project manager / research / outreach (\$26,000) (320 hours)

The Entrepreneur (0xNallok) would fill in various roles, but primarily the project manager.

This will be funded through:
- Transfer of \$40,000 USDC from the existing funds in the multi-sig treasury.
- Transfer of 342 META[^7] which will be used when payment is due to convert to USDC.
- The funds will be transferred to a 2/3 mult-sig including 0xNallok, Proph3t and Nico.
- Payments to the parties will be done weekly.

> The reason for overallocation of META is due to the price fluctuation of the asset and necessity for payment in USDC. This takes the cost minus the \$40k USDC (\$56k) divided by the current price of 1 META (\$818.284) multiplied by a factor of 5.

> Any remaining META once the project is completed will be transferred back to the MetaDAO treasury.

MetaDAO Executor (`FpMnruqVCxh3o2oBFZ9uSQmshiyfMqzeJ3YfNQfP9tHy`)

MetaDAO Treasury (`ADCCEAbH8eixGj5t73vb4sKecSKo7ndgDSuWGvER4Loy`)

FaaS Multi-sig (`AHwsoL97vXFdvckVZdXw9rrvnUDcPANCLVQzJan9srWy`)
>  0xNallok (`4LpE9Lxqb4jYYh8jA8oDhsGDKPNBNkcoXobbAJTa3pWw`)

>  Proph3t (`65U66fcYuNfqN12vzateJhZ4bgDuxFWN9gMwraeQKByg`)

>  Nico (`6kDGqrP4Wwqe5KBa9zTrgUFykVsv4YhZPDEX22kUsDMP`)

This proposal includes the transfer instruction from the MetaDAO treasury, the additional funds will be transferred from the MetaDAO Executor.

## Business

Ultimately, the goal of the MetaDAO is to make money. There are a few ways to monetize FaaS all dependent on what appeals most to DAOs:
- **Taker fees on markets**: we could take 5 - 25 basis points via a taker fee on markets.
- **Monthly licensing fees**: because the code is BSL, we could charge a monthly fee for the code and the site
- **Support and services**: we could also provide consultation services around futarchic governance, like a Gauntlet model.

In general, we should aim for **vertical integration**. The goal is not to build this product as a primitive and then allow anyone to build front-ends for it: it's to own the whole stack.

### Financial Projections

Today, 293 DAOs use Realms. Realms is a free platform, so plenty of these DAOs are inactive and wouldn't be paying customers. So we estimate that we could acquire 5 - 100 DAOs as customers.

As for estimating ARPU (average revenue per user), we can start by looking at the volume in the MetaDAO's markets:

![Screenshot from 2024-02-26 19-52-03](https://hackmd.io/_uploads/H1HbnwcnT.png)

Note that this only includes the volume in the finalized market, as all trades in the other market are reverted and thus wouldn't collect fees.

So assuming that proposal 6 - 8 are an appropriate sample, we could earn ~\$50 - \$500 per proposal. If DAOs see between 1 - 2 proposals per month, that's \$100 - \$1,000 in taker fee ARPU.

As for monthly licensing fees, Squads charges \$99 / month for SquadsX and \$399 / month for Squads Pro. I suspect that DAOs would be willing to pay a premium for governance. So we can estimate between \$50 - \$1,000 in monthly licensing fees.

Putting these together:

![Screenshot from 2024-02-26 19-54-59](https://hackmd.io/_uploads/BJvsnvc3p.png)

The support & services business is different enough that it deserves its own model. This is because consulting / advisory businesses have non-zero marginal costs (you can't earn $25,000,000 in revenue from one consultant) and have lower defensibility. Both cause them to receive lower valuation multiples. 

Here's what we project:

![Screenshot from 2024-02-26 19-29-19](https://hackmd.io/_uploads/B10c8vq3p.png)

Of course, you can use your own numbers if you'd like to come up with your own estimates.

## Footnotes
[^1]: DeFi Project Parrot Holds Contentious Vote on Future of $70M Treasury. Danny Nelson. Jul 21, 2023. https://www.coindesk.com/markets/2023/07/21/defi-project-parrot-puts-fate-of-over-70m-treasury-prt-token-to-vote/.

[^2]: Crypto’s Theater Is Becoming More Surreal. Camila Russo. Aug 14, 2023. https://www.coindesk.com/consensus-magazine/2023/08/14/cryptos-theater-is-becoming-more-surreal/.

[^3]: Aragon Fires Back at Activist Investors in Early Stages of DAO Governance Fight. Danny Nelson. May 5, 2023. https://www.coindesk.com/business/2023/05/05/aragon-fires-back-at-activist-investors-in-early-stages-of-governance-fight/.

[^4]: The Logic of Collective Action. Wikipedia. Mar 7, 2024. https://en.wikipedia.org/wiki/The_Logic_of_Collective_Action.

[^5]: As this is an approximation and development and integration depends on a number of factors, inclusion of roles and estimates seems appropriate but may be in flux given changes which arise, however costs would not extend beyond the estimate.

[^6]: This breaks down to an average estimate of ~$90/hour and 1060 (wo)man hours total.

[^7]: $$(56,000/818.284) * 5 \approx 342$$

## Raw Data

- Proposal account: `D9pGGmG2rCJ5BXzbDoct7EcQL6F6A57azqYHdpWJL9Cc`
- Proposal number: 12
- DAO account: `7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy`
- Proposer: `prdUTSLQs6EcwreBtZnG92RWaLxdCTivZvRXSVRdpmJ`
- Autocrat version: 0.1
- Completed: 2024-03-19
- Ended: 2024-03-19
