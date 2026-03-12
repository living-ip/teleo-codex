---
type: evidence
source: "https://x.com/rakka_sol/status/2025098290434388169"
author: "@rakka_sol (Omnipair founder)"
date: 2026-02-21
archived_by: rio
tags: [omnipair, rate-controller, interest-rates, capital-fragmentation]
domain: internet-finance
status: enrichment
claims_extracted: []
processed_by: rio
processed_date: 2026-03-11
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Two mechanism claims extracted: (1) adaptive utilization range vs fixed kink curve, (2) unified capital venue positioning. Both rated experimental as single-source founder statements with early operational data. Entity updates for Omnipair and Rakka. No enrichments to existing claims identified."
---

# @rakka_sol on Omnipair interest rate controller upgrade

"Very soon, everyone will get it. P.S. 1% APR at 50% utilization is low. All @omnipair interest rate controllers are configurable. We don't use a fixed utilization-interest curve, but rather a target utilization range. The current markets use a 50%-85% range, and given shallow liquidity plus dynamic LTV, it's hard to go beyond ~55% utilization. We've upgraded the default config to a 30%-50% target range. This increases borrow rates as soon as utilization hits 50%. Omnipair should be the primary place for capital, no more fragmentation between lending and spot."

## Quoted tweet context

From @Jvke201 discussing Omnipair's fee structure -- "$1000 USDC position costs ~$1.67 in fees over 60 days vs. $600 on competitors" -- highlighting competitive advantages in leverage protocols and permissionless trading on any token.

## Engagement

- Replies: 7 | Retweets: 8 | Likes: 55 | Views: 9,312

## Rio's assessment

- Enriches existing Omnipair position -- rate controller uses adaptive target utilization range, not fixed kink curve (mechanistically distinct from Aave)
- Shallow liquidity + dynamic LTV constraining utilization to ~55% is real operational evidence of early-stage friction
- Fee comparison ($1.67 vs $600 over 60 days) supports capital efficiency thesis if numbers hold
- Builder explicitly framing vision as "no more fragmentation between lending and spot" -- confirms GAMM design intent


## Key Facts
- Omnipair's current interest rate controller uses 30-50% target utilization range (upgraded from 50-85%)
- Operational utilization ceiling observed at ~55% due to shallow liquidity and dynamic LTV
- Fee comparison: $1.67 vs $600 over 60 days for $1000 USDC position (self-reported, unverified)
- Tweet engagement: 7 replies, 8 retweets, 55 likes, 9,312 views
