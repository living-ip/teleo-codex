---
type: source
title: "Futardio: Adopt a sublinear supply function?"
author: "futard.io"
url: "https://www.futard.io/proposal/5YA1NbUJWmGLorWtpTzBMfsMFLKa37oxb7pHwH7wSz9L"
date: 2024-11-18
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2024-11-18
claims_extracted: ["ore-token-reduced-supply-cap-from-21m-to-5m-and-adopted-10-percent-annual-emission-decay-making-it-4.2x-more-scarce-than-bitcoin-at-full-dilution.md", "gradual-annual-emission-decay-provides-smoother-token-distribution-than-periodic-halvings-because-10-percent-yearly-reduction-avoids-supply-shock-volatility.md"]
enrichments_applied: ["futarchy-can-override-its-own-prior-decisions-when-new-evidence-emerges-because-conditional-markets-re-evaluate-proposals-against-current-information-not-historical-commitments.md", "MetaDAOs-Autocrat-program-implements-futarchy-through-conditional-token-markets-where-proposals-create-parallel-pass-and-fail-universes-settled-by-time-weighted-average-price-over-a-three-day-window.md", "MetaDAO-is-the-futarchy-launchpad-on-Solana-where-projects-raise-capital-through-unruggable-ICOs-governed-by-conditional-markets-creating-the-first-platform-for-ownership-coins-at-scale.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted two claims about ORE's tokenomics evolution and emission model. First claim (proven confidence) documents the specific supply reduction and its scarcity implications vs Bitcoin. Second claim (experimental confidence) argues for gradual decay advantages over periodic halvings — this is more speculative as it lacks empirical validation. Three enrichments confirm existing claims about futarchy's ability to override decisions, Autocrat's implementation, and MetaDAO's platform role. Source demonstrates futarchy governing high-stakes tokenomics changes post-launch, not just initial parameters."
---

## Proposal Details
- Project: ORE
- Proposal: Adopt a sublinear supply function?
- Status: Passed
- Created: 2024-11-18
- URL: https://www.futard.io/proposal/5YA1NbUJWmGLorWtpTzBMfsMFLKa37oxb7pHwH7wSz9L
- Description: Should ORE migrate to a deflationary emissions curve and reduce the supply cap to 5m tokens?
- Categories: {'category': 'Governance'}, {'category': 'Program'}
- Discussion: https://discord.gg/hRBrVmf48q

## Summary

### 🎯 Key Points  
The proposal suggests reducing ORE's supply cap from 21 million to 5 million tokens and implementing a 10% annual reduction in emissions rate.

### 📊 Impact Analysis  
#### 👥 Stakeholder Impact  
This change aims to enhance token scarcity, potentially benefiting current holders and attracting new investors.

#### 📈 Upside Potential  
A deflationary emissions curve could lead to increased demand and higher token value over time.

#### 📉 Risk Factors  
The significant reduction in supply may create uncertainty in the market and could negatively affect liquidity.

## Content

## Summary

Should ORE migrate to a deflationary emissions curve and reduce the supply cap to 5m tokens?

## Overview

When ORE launched in April 2024, it was built with a linear emissions rate of 1 ORE/min and uncapped total supply. In response to overwhelming feedback from the community, we introduced an artificial supply cap of 21m tokens in the redesign of v2.

Over the last few months, the ORE community has continued to voice interest in accelerating ORE’s distribution. After considering a series of alternative models, we would like to propose the following changes be made:

1. Reduce the supply cap from 21m to 5m tokens
2. Reduce the emissions rate by 10% every 12 months

ORE's current limit of 21m tokens was originally chosen to mimic Bitcoin's famously popular total supply count. With a supply cap 4.2x lower, ORE's supply will be an order of magnitude more scarce than Bitcoin when fully-diluted.

Rather than infrequent "halvings" every 4 years, we believe ORE's mission would be better served by reducing
emissions at a more gradual 10% per year. This would provide a faster, smoother, and scarcer distribution curve than Bitcoin. .ORE's supply schedule would roughly follow the timeline outlined in the table below and reach full dilution by approximately 2052.

| Year | Circulating | Dilution |
| ---- | ----------- | -------- |
| ~5   | 2.5m        | 50%      |
| ~18  | 4.5m        | 90%      |
| ~28  | 5m          | 100%     |

We believe these changes strike an ideal balance between all the competing value sets in the ORE community:

- It reduces FDV to address sticker shock of buyers.
- It introduces a deflationary curve that decays faster than Bitcoin.
- It caps the supply an order of magnitude more scarce than Bitcoin.
- It provides ~30 years of mining runway for onboarding initiatives and liquidity incentives.

If passed, we will implement these changes and migrate the mainnet mining program. This would represent a major step forward in ORE's hardening process and bring us one step closer towards freezing the contract for good.

To discuss this proposal, join the Discord and let your voice be heard.
[https://discord.com/channels/1226038272673841236/1306330694917554257](https://discord.com/channels/1226038272673841236/1306330694917554257)

![](https://imagedelivery.net/HYEnlujCFMCgj6yA728xIw/e76eff8c-8a73-4395-5db0-4939b02e0e00/public)

![](https://imagedelivery.net/HYEnlujCFMCgj6yA728xIw/0127d0d5-ec72-47cf-f882-fa3a63267100/public)

## Raw Data

- Proposal account: `5YA1NbUJWmGLorWtpTzBMfsMFLKa37oxb7pHwH7wSz9L`
- Proposal number: 2
- DAO account: `7XoddQu6HtEeHZowzCEwKiFJg4zR3BXUqMygvwPwSB1D`
- Proposer: `proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2`
- Autocrat version: 0.3
- Completed: 2024-11-22
- Ended: 2024-11-22


## Key Facts
- ORE proposal 5YA1NbUJWmGLorWtpTzBMfsMFLKa37oxb7pHwH7wSz9L passed 2024-11-22
- ORE launched April 2024 with uncapped supply and 1 ORE/min linear emissions
- ORE v2 introduced 21m token cap
- Proposal used Autocrat version 0.3
- DAO account: 7XoddQu6HtEeHZowzCEwKiFJg4zR3BXUqMygvwPwSB1D
- Proposer: proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2
