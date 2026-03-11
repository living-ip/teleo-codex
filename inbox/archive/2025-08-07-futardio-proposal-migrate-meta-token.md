---
type: source
title: "Futardio: Migrate META Token"
author: "futard.io"
url: "https://www.futard.io/proposal/4grb3pea8ZSqE3ghx76Fn43Q97mAh64XjgwL9AXaB3Pe"
date: 2025-08-07
domain: internet-finance
format: data
status: processed
processed_by: rio
processed_date: 2026-03-11
claims_extracted:
  - "futarchy-daos-require-mintable-governance-tokens-because-fixed-supply-treasuries-exhaust-without-issuance-authority-forcing-disruptive-token-architecture-migrations"
enrichments:
  - "futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements — META 1:1000 split confirms token split as solution for unit bias"
  - "MetaDAOs Autocrat program — v0.5 program address auToUr3CQza3D4qreT6Std2MTomfzvrEeCC5qh7ivW5 adds to on-chain program details"
  - "metadao-migrate-meta-token — decision_market entity created"
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Migrate META Token
- Status: Passed
- Created: 2025-08-07
- URL: https://www.futard.io/proposal/4grb3pea8ZSqE3ghx76Fn43Q97mAh64XjgwL9AXaB3Pe
- Description: This proposal recommends migrating META to a mintable, redenominated token.
- Discussion: https://discord.gg/yueMhZWwuX

## Summary

### 🎯 Key Points
The proposal aims to migrate the META token by implementing a 1:1000 token split, re-establishing mint and update authority, and transitioning to a new DAO version (0.5) to facilitate market-driven token issuance and governance.

### 📊 Impact Analysis
#### 👥 Stakeholder Impact
Current METAC holders will be able to convert their tokens to the new META token through a migration process.

#### 📈 Upside Potential
The proposed changes aim to improve liquidity and efficiency by reducing protocol-owned liquidity fees from 4% to 0.5% and expanding the token supply to better align with peer organizations.

#### 📉 Risk Factors
There is a risk of confusion or loss of trust among existing token holders during the migration process, particularly if communication and execution are not effectively managed.

## Content

**Type:** Operations Direct Action

**Authors:** Proph3t, Kollan


## **Overview**

Futarchy is market-driven decision making. To stay true to that principle, it also requires market-driven issuance. A mintable token is essential to fund the organization, incentivize participation, and adapt to changing governance outcomes.

MetaDAO's token, META (METAC), is no longer fit for purpose: it's unmintable, the DAO’s treasury is exhausted, and unit bias remains an issue. This proposal introduces a 1:1000 token split, re-establishes mint and update authority, and migrates the DAO to version 0.5 (Squads).

We’re migrating METAC to a new token, META, expanding supply from \~20K to \~20M to align with peer futarchies. Protocol-owned liquidity will also shift from a restrictive 4% fee pool to a 0.50% pool, improving efficiency until FutarchyAMM is live.

The new META token will be governed by the new DAO, which holds mint and update authority. A migration contract and frontend will let METAC holders convert at any time.

Work on the migration is already underway and should take up to 1 week. Migration will only proceed if this proposal passes.


## **Specifications**

|  | New (META) | Existing (METAC) |
| ----- | ----- | ----- |
| Ticker | META | META |
| Supply | 20,863,129.001238  | 20,863.129001238  |
| Price | \~$0.79875 | \~$798.75 |
| Protocol Owned Liquidity Fee | 0.5% | 4% |
| Mintable | Yes | No |
| Updateable | Yes | Yes |
| Decimals | 6 | 9 |
| Split Ratio | 1000 | – |


## **Process**

* This proposal includes a transfer instruction for the new DAO to take custody of onchain assets, including:  
  * 1.2M USDC from account `C6DaJNGP1Xsd1seePqn8BPfQWMxsbBoUSf6Kbagmta2T` to account `BxgkvRwqzYFWuDbRjfTYfgTtb41NaFw1aQ3129F79eBT`  
* Transfer the remaining USDC (minus funds used for proposal creation) from `6awyHMshBGVjJ3ozdSJdyyDE1CTAXUwrpNMaRGMsb4sf` to the new Squads treasury  
* Notify LPs to withdraw liquidity from the existing pools  
* Withdraw protocol-owned liquidity from Meteora  
* Migrate liquidity to a new AMM LP with:  
  * 0.5% fee tier  
  * Initial price set at time of liquidity removal  
* Launch the migration frontend upon passing  
  * Supports frontend and script-based interactions  
* Update token information across:  
  * CoinMarketCap  
  * CoinGecko  
  * Blockworks  
* Update internal systems (UI, SDKs, tools)  
* Notify tokenholders and custodians with clear instructions  
* Announce each milestone publicly as it's completed


## **References**

* New META token with 20,865,160.717538 supply `METAwkXcqyXKy1AtsSgJ8JiUHwGCafnZL38n3vYmeta`  
* Launch a new v0.5 DAO using META as its `base_token`  
  * `Bc3pKPnSbSX8W2hTXbsFsybh1GeRtu3Qqpfu9ZLxg6Km`  
  * Reduced passing threshold to 1.5%  
  * Established a 120k USDC spending limit monthly  
    * Expected burn is \~$80k, with max previously $120k  
* Transferred mint and update authority for META to the new DAO controlled Squads vault  
  * `BxgkvRwqzYFWuDbRjfTYfgTtb41NaFw1aQ3129F79eBT`  
* Deploy a permanent migration contract that accepts METAC and releases META 1:1000  
  * Program `gr8tqq2ripsM6N46gLWpSDXtdrH6J9jaXoyya1ELC9t`  
  * Deployment `4viadAyxnRpHyW2g2NEzjLwGGgLTQK2QBmniJJqXWpXN`

* [Meteora Protocol Owned Liquidity](https://www.meteora.ag/pools/6t2CdBC26q9tj6jBwPzzFZogtjX8mtmVHUmAFmjAhMSn)  
* [Current MetaDAO Treasury (Solana Explorer)](https://explorer.solana.com/address/C6DaJNGP1Xsd1seePqn8BPfQWMxsbBoUSf6Kbagmta2T/tokens)  
* [METAC Token on Solscan](https://solscan.io/token/METADDFL6wWMWEoKTFJwcThTbUmtarRJZjRpzUvkxhr)  
* [META Token on Solscan](https://solscan.io/token/METAwkXcqyXKy1AtsSgJ8JiUHwGCafnZL38n3vYmeta)  
* [MetaDAO on CoinMarketCap](https://coinmarketcap.com/currencies/meta-dao/)  
* [MetaDAO on CoinGecko](https://www.coingecko.com/en/coins/meta-2)

## Raw Data

- Proposal account: `4grb3pea8ZSqE3ghx76Fn43Q97mAh64XjgwL9AXaB3Pe`
- Proposal number: 15
- DAO account: `CNMZgxYsQpygk8CLN9Su1igwXX2kHtcawaNAGuBPv3G9`
- Proposer: `proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2`
- Autocrat version: 0.3
- Completed: 2025-08-10
- Ended: 2025-08-10
