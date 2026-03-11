---
type: source
title: "Futardio: Migrate Autocrat Program to v0.2?"
author: "futard.io"
url: "https://www.futard.io/proposal/HXohDRKtDcXNKnWysjyjK8S5SvBe76J5o4NdcF4jj963"
date: 2024-03-28
domain: internet-finance
format: data
status: processed
processed_by: rio
processed_date: 2026-03-11
claims_extracted: []
enrichments:
  - "metadao-migrate-autocrat-v02 — decision_market entity created"
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: MetaDAO
- Proposal: Migrate Autocrat Program to v0.2?
- Status: Passed
- Created: 2024-03-28
- URL: https://www.futard.io/proposal/HXohDRKtDcXNKnWysjyjK8S5SvBe76J5o4NdcF4jj963
- Description: Migrate Autocrat Program to v0.2?
- Categories: {'category': 'Operations'}

## Summary

### 🎯 Key Points
The proposal aims to upgrade the Autocrat Program to v0.2 by introducing reclaimable rent, conditional token merging, and improved token metadata, along with several configuration changes to enhance functionality and user experience.

### 📊 Impact Analysis
#### 👥 Stakeholder Impact
Stakeholders will benefit from reduced proposal creation costs and improved token usability, which may lead to increased participation in governance.

#### 📈 Upside Potential
The upgrade could enhance liquidity and user experience, potentially attracting more users and proposals to the MetaDAO ecosystem.

#### 📉 Risk Factors
There is a risk of technical issues during the migration process or unforeseen consequences from the configuration changes that could disrupt current operations.

## Content

#### Author(s)
HenryE, Proph3t

## Overview
It's time to upgrade futarchy!

This upgrade includes three new features and a number of smaller config changes.

### The features:

- Reclaimable rent: you will now be able to get back the ~4 SOL used to create OpenBook proposal markets. This should lower the friction involved in creating proposals.
- Conditional token merging: now, if you have 1 pTOKEN and 1 fTOKEN, you'll me able to merge them back into 1 TOKEN. This should help with liquidity when there are multiple proposals active at once.
- Conditional token metadata: before, you would see conditional tokens in your wallet as random mint addresses. After this is merged, you should be able to see token names and logos, helping you identify what proposal they're a part of.

### The config changes:

- Lower pass threshold from 5% to 3%
- Set default TWAP value to $100 instead of $1
- Update TWAP in $5 increments instead of 1% increments, which enhances manipulation resistance while allowing the TWAP to be more accure
- Change minimum META lot sizes from 1 META to 0.1 META

The instruction attached to this proposal will migrate MetaDAO's assets over to the new autocrat program.

There are three main futarchy programs and a migrator program for transfering tokens from one DAO treasury account to another:

1. [autocrat_v0](https://solscan.io/account/metaRK9dUBnrAdZN6uUDKvxBVKW5pyCbPVmLtUZwtBp)
2. [openbook_twap](https://solscan.io/account/twAP5sArq2vDS1mZCT7f4qRLwzTfHvf5Ay5R5Q5df1m)
3. [conditional_vault](https://solscan.io/account/vAuLTQjV5AZx5f3UgE75wcnkxnQowWxThn1hGjfCVwP)
4. [migrator](https://solscan.io/account/MigRDW6uxyNMDBD8fX2njCRyJC4YZk2Rx9pDUZiAESt)

Each program has been deployed to devnet and mainnet, their IDLs have been deployed, and they've been verified by the OtterSec API against the programs in the two repos; [futarchy](https://github.com/metaDAOproject/futarchy) contains autocrat_v0, conditional_vault and migrator, and a separate repo contains [openbook_twap](https://github.com/metaDAOproject/openbook-twap). The Treasury account is the DAO's signer and has been set as the program upgrade authority on all programs.

### Addtional details for verification
- Old DAO
  - Autocrat Program: [metaX99LHn3A7Gr7VAcCfXhpfocvpMpqQ3eyp3PGUUq](https://solscan.io/account/metaX99LHn3A7Gr7VAcCfXhpfocvpMpqQ3eyp3PGUUq)
  - DAO Account: [7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy](https://solscan.io/account/7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy)
  - Treasury: [ADCCEAbH8eixGj5t73vb4sKecSKo7ndgDSuWGvER4Loy](https://solscan.io/account/ADCCEAbH8eixGj5t73vb4sKecSKo7ndgDSuWGvER4Loy) - signer

- New DAO
  - Autocrat Program: [metaRK9dUBnrAdZN6uUDKvxBVKW5pyCbPVmLtUZwtBp](https://solscan.io/account/metaRK9dUBnrAdZN6uUDKvxBVKW5pyCbPVmLtUZwtBp)
  - DAO Account: [14YsfUtP6aZ5UHfwfbqe9MYEW4VaDwTHs9NZroAfV6Pi](https://solscan.io/account/14YsfUtP6aZ5UHfwfbqe9MYEW4VaDwTHs9NZroAfV6Pi)
  - Treasury: [BC1jThSN7Cgy5LfBZdCKCfMnhKcq155gMjhd9HPWzsCN](https://solscan.io/account/BC1jThSN7Cgy5LfBZdCKCfMnhKcq155gMjhd9HPWzsCN) - signer

### Detailed Changelog and PR links
#### Autocrat
- Mostly minor config changes ([Pull Request #69](https://github.com/metaDAOproject/futarchy/pull/69)):
  - Set default pass threshold to 3%
  - Set max observation change per update lots to $5 and make it a configurable option
  - Set default expected value to $100
  - Ensure that the open markets expire a minimum of 10 days from the creation of the proposal to allow for rent retrieval from openbook markets
  - Reduce the openbook base lot size so that people can trade in lots of 0.1 META
#### Conditional Vault
- Add metadata to the conditional vault tokens so they show up nicely in wallets during a proposal ([Pull Request #52](https://github.com/metaDAOproject/futarchy/pull/52))
- Add the ability to merge tokens ([Pull Request #66](https://github.com/metaDAOproject/futarchy/pull/66))

#### Openbook-TWAP
- Switch to using a dollar-based increment instead of a percentage one:
  - [commit d08fb13](https://github.com/metaDAOproject/openbook-twap/commit/d08fb13d16c49071e37bd4fd0eff22edfb144237)
  - [commit a1cb709](https://github.com/metaDAOproject/openbook-twap/commit/a1cb7092374f146b430ab67b38f961f331a77ae1)
  - [commit fe159d2](https://github.com/metaDAOproject/openbook-twap/commit/fe159d2707ca4648a874d1fe0c411298b55de072)
  - [Pull Request #16](https://github.com/metaDAOproject/openbook-twap/pull/16)
- Get rid of the market expiry check, leave it up to autocrat ([Pull Request #20](https://github.com/metaDAOproject/openbook-twap/pull/20))
- Add instructions to allow pruning and closing of the market ([Pull Request #18](https://github.com/metaDAOproject/openbook-twap/pull/18))
- Also add permissionless settling of funds ([Pull Request #21](https://github.com/metaDAOproject/openbook-twap/pull/21))

#### Migrator
- Migrate all four token accounts to the new DAO account ([Pull Request #68](https://github.com/metaDAOproject/futarchy/pull/68))

## Raw Data

- Proposal account: `HXohDRKtDcXNKnWysjyjK8S5SvBe76J5o4NdcF4jj963`
- Proposal number: 15
- DAO account: `7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy`
- Proposer: `FutaAyNb3x9HUn1EQNueZJhfy6KCNtAwztvBctoK6JnX`
- Autocrat version: 0.1
- Completed: 2024-04-03
- Ended: 2024-04-03
