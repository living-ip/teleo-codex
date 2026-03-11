---
type: source
title: "Futardio: Perform Token Split and Adopt Elastic Supply for META? "
author: "futard.io"
url: "https://www.futard.io/proposal/CBhieBvzo5miQBrdaM7vALpgNLt4Q5XYCDfNLaE2wXJA"
date: 2025-01-28
domain: internet-finance
format: data
status: processed
processed_by: rio
processed_date: 2026-03-11
claims_extracted: []
enrichments:
  - "metadao-token-split-elastic-supply — decision_market entity created"
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Perform Token Split and Adopt Elastic Supply for META? 
- Status: Failed
- Created: 2025-01-28
- URL: https://www.futard.io/proposal/CBhieBvzo5miQBrdaM7vALpgNLt4Q5XYCDfNLaE2wXJA
- Description: Create new token to split META 1:1000, move upgrade, update and mint authority to the DAO.
- Discussion: https://discord.gg/s5Jdx6xrMx

## Summary

### 🎯 Key Points  
The proposal aims to perform a 1:1,000 token split for META, migrate to a new token with elastic supply, and grant governance sovereignty over the token program.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
Stakeholders will need to actively opt-in to convert their old META tokens to the new version, influencing their participation in the governance process.

#### 📈 Upside Potential  
The token split and elastic supply could enhance trading activity and market participation, benefiting the overall functionality of MetaDAO's governance.

#### 📉 Risk Factors  
There is a risk of low participation in the token migration process, potentially leading to fragmentation between old and new token holders.

## Content

## **Token Migration**

#### Type

Operations \- Direct Action

#### Author(s)

[@aradtski](https://x.com/aradtski)

### Overview

With the passing of this proposal, Proph3t and Nallok are directed to deploy a new META token program, and a migration program in line with the specifications below. In addition, by passing this proposal, MetaDAO effectively declares the new token to be the canonical and preferred version. Once deployed, all future Futarchic markets for MetaDAO decisions will be conducted using the new token as the trading asset.

### Motivation

\- Alleviate unfavorable psychological bias towards large unit pricing.  
\- Introduce full sovereignty to MetaDAO governance module, particularly on token supply and metadata.  
\- Prepare grounds for a possible future ticker change.

### Specs

\- Deploy a new token, and a program to allow a one-way conversion from META (METADDFL6wWMWEoKTFJwcThTbUmtarRJZjRpzUvkxhr). The new token will be deployed initially with an identical name and ticker to the current one.

\- Effectively split META at a 1:1,000 ratio, resulting in a \~20,886,000 baseline supply for the new token. Each old META token unit will be granted the option to convert to 1,000 new META tokens.

\- The token conversion will be opt-in, require an action from the user, be unidirectional and importantly will have an unlimited time window to complete. A widget, prompt or tab will be added to MetaDAO’s website UI to push users towards completing the one-way migration.

\- Introduce supply sovereignty by giving MetaDAO governance ownership over the token program, which it currently does not have. the MetaDAO Futarchic governance itself would become the singular entity with power to control the META token supply and metadata.

In effect, this will allow MetaDAO to expand the META supply through its futarchy-driven governance, as well as lay down the necessary groundwork for a future proposal to change its name and/or ticker.

### Q\&A

**Maybe it’s not great to have mutable metadata because websites flag it as a potentially malicious token?**  
The new token program will start with mutable metadata, but access can be revoked through a governance proposal at any time. Ideally, the DAO figures out the ticker and/or name change, and then continues to revoke its own access (which then cannot be restored again).

**Is it not morally indignant to do a token split?**  
If it is not below the likes of Amazon and Nvidia to do stock splits despite most stock brokerages allowing fractional ownership, then it is not below MetaDAO. Human biases are ever present, and should be taken into consideration in token supply just like they are in decisions of branding, design, marketing and so forth.

A token split is of particular importance to MetaDAO, as Futarchy arguably functions better the more trading activity occurs on its base asset. There seems to be anecdotal evidence suggesting that a lower unit price leads to higher trading activity amongst speculators, hence we may conclude that a token split would be fundamentally beneficial to the function of our very first Futarchic organization.

**Why introduce mutable supply? Isn’t fixed supply preferable?**  
Not always, and particularly not in the case of MetaDAO governance. While the option of an unlimited token supply may appear scary at first glance, it should be considered for three main reasons:

1\) MetaDAO is on a mission that could extend 10, 20, 30 years into the future. Becoming future-proof means embracing the unknown unknowns, which may create a need to mint tokens into the future for reasons that have yet to reveal themselves. There’s merit to enabling it sooner rather than later, since token migrations become increasingly complex the more META gets integrated into external exchanges and grows its holder base.

2\) There is no risk of un-checked or damaging inflation.  
No new tokens can be minted if it would damage token price, which is of course the beauty in Futarchy. The only way MetaDAO governance will mint new tokens and expand the token supply, is if the market clearly deems it \+EV to the token value. The market speaks and Futarchy listens.

3\) MetaDAO was the first to use Futarchy for decision making, and it should likewise be the first to entrust token minting to Futarchic governance. If MetaDAO won’t lead the way, who will?  
It’s in MetaDAO’s DNA to show by example, such that others may follow.

Emphasis: ownership will be given to the governance module only, and will NOT be under any multi-sig control.

**Why specifically a 1:1000 ratio?**  
A 1:1000 split makes it extremely simple to mentally convert back and forth between the old and new unit prices**.** Tangentially, it also retains some of MetaDAO’s original form – in setting itself apart by not participating in the current memecoin-esque meta of a billion+ token supply.

 **Is it possible to enforce the conversion?**  
Not in practice. Instead:

\- MetaDAO will offer an opt-in conversion with an unlimited time window.  
\- Future META decision markets will employ the new token instance.  
\- All tokens under the control of MetaDAO’s treasury will be promptly migrated to the new token, once deployed, to dogfood the process.  
\- All future user activity will be encouraged to occur on the new token through the website and decision markets.  
\- CoinGecko, CoinMarketCap, and onchain protocols like Drift and Jupiter should be informed of the introduction of a new canonical token instance.

The process may ultimately take time, especially when it comes to passive holders converting, But the goal is for the majority of trading activity to begin occurring on the new token as quickly as possible.

**Notes**  
\- With the passing of this proposal, wherever the unit price of META was referred to in past proposals, those decisions will stand with the appropriately adjusted unit price considering the token supply. For example, a [past proposal](https://metadao.fi/metadao/trade/BgHv9GutbnsXZLZQHqPL8BbGWwtcaRDWx82aeRMNmJbG?tab=proposal) referenced the price of $42,198 per META as a benchmark. With the passing of this proposal, the price benchmark will adjust retroactively to $42.198 per META in this particular example, to match the exact conversion ratio offered to users upon migration.

## Raw Data

- Proposal account: `CBhieBvzo5miQBrdaM7vALpgNLt4Q5XYCDfNLaE2wXJA`
- Proposal number: 11
- DAO account: `CNMZgxYsQpygk8CLN9Su1igwXX2kHtcawaNAGuBPv3G9`
- Proposer: `proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2`
- Autocrat version: 0.3
- Completed: 2025-01-31
- Ended: 2025-01-31
