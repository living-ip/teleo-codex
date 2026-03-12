---
type: entity
entity_type: decision_market
name: "coal: Let's get Futarded"
domain: internet-finance
status: passed
parent_entity: "[[coal]]"
platform: "futardio"
proposer: "HAymbnVo1w5sC7hz8E6sdmzSuDpqUwKXWzBeshEAb7WC"
proposal_url: "https://www.futard.io/proposal/6c1dnggYNpEZvz4fedJ19LAo8Pz2mTTvT6LxySYhpLbA"
proposal_date: 2025-10-15
resolution_date: 2025-10-18
category: "treasury"
summary: "Expand coal supply to 25M, airdrop 420 COAL to 2,314 META holders, establish 3M COAL dev fund, migrate to v0.6 governance"
tracked_by: rio
created: 2026-03-11
key_metrics:
  proposal_number: 3
  autocrat_version: "0.3"
  proposal_length: "3 days"
  new_governance_params:
    twap_delay: "1 day"
    min_liquidity: "1500 USDC, 2000 COAL"
    pass_threshold: "100 bps"
    coal_staked: "10,000"
    proposal_length: "3 days"
---

# coal: Let's get Futarded

## Summary
This proposal executed a comprehensive governance and tokenomics upgrade for coal, the only proof-of-work memecoin on Solana. It expanded total supply from 21M to 25M COAL through a one-time mint, distributed 420 COAL to each of 2,314 eligible META holders (snapshot October 12, 2025), established a 3.03M COAL development fund with monthly disbursement guardrails, and migrated the DAO to v0.6 governance infrastructure with futarchy AMM capabilities.

## Market Data
- **Outcome:** Passed
- **Proposer:** HAymbnVo1w5sC7hz8E6sdmzSuDpqUwKXWzBeshEAb7WC
- **Proposal Account:** 6c1dnggYNpEZvz4fedJ19LAo8Pz2mTTvT6LxySYhpLbA
- **DAO Account:** 3LGGRzLrgwhEbEsNYBSTZc5MLve1bw3nDaHzzfJMQ1PG
- **Duration:** October 15-18, 2025 (3 days)

## Proposal Structure

### Airdrop Component
- **Eligibility:** All META holders at October 12, 2025 snapshot holding ≥$100 notional value
- **Amount:** 420 COAL per eligible wallet
- **Total Recipients:** 2,314 wallets
- **Total Airdrop:** 971,880 COAL

### Supply Expansion
- **Previous Supply:** 21,000,000 COAL
- **New Supply:** 25,000,000 COAL
- **One-time Increase:** 4,000,000 COAL
- **Allocation:** 971,880 to airdrop, 3,028,120 to dev fund
- **Mining Emissions:** Unchanged

### Development Fund
- **Size:** 3,028,120 COAL
- **Manager:** DAO treasury
- **Monthly Disbursement Cap:** 30,000 COAL to Grant (lead dev)
- **Large Grant Threshold:** Any single use >69,000 COAL requires separate decision market
- **Transparency:** Public ledger, monthly forum reports, verified addresses
- **Purpose:** Protocol development, futarchy experiments, community contributions, tooling, integrations, marketing, liquidity seeding

### Governance Migration
- **Target:** v0.6 DAO infrastructure
- **New Features:** DAO treasury, futarchy AMM, full governance tooling
- **TWAP Delay:** 1 day
- **Minimum Liquidity:** 1,500 USDC + 2,000 COAL
- **Pass Threshold:** 100 basis points
- **Staking Requirement:** 10,000 COAL
- **Proposal Duration:** 3 days

### Liquidity Strategy
- **OTC Buyer:** Lined up to purchase portion of dev fund
- **Proceeds Use:** Seed futarchy AMM and bootstrap COAL liquidity

## Significance
This proposal represents a comprehensive transition from experimental memecoin to structured futarchy-governed protocol. The META holder airdrop creates cross-pollination between MetaDAO's futarchy ecosystem and coal's proof-of-work model. The development fund with explicit guardrails (monthly caps, large-grant thresholds requiring separate markets) demonstrates maturing governance design that balances operational flexibility with market oversight. The migration to v0.6 infrastructure with futarchy AMM capabilities positions coal as a testing ground for futarchy mechanisms in the memecoin context.

## Relationship to KB
- [[coal]] — parent entity
- [[futardio]] — governance platform
- [[MetaDAO]] — source of airdrop recipients
- [[futarchy-governed-meme-coins-attract-speculative-capital-at-scale]] — exemplifies governance model
- [[futarchy-daos-require-mintable-governance-tokens-because-fixed-supply-treasuries-exhaust-without-issuance-authority-forcing-disruptive-token-architecture-migrations]] — demonstrates supply expansion mechanism