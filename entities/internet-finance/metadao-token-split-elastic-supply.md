---
type: entity
entity_type: decision_market
name: "MetaDAO: Perform Token Split and Adopt Elastic Supply for META"
domain: internet-finance
status: failed
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "@aradtski"
proposal_url: "https://www.futard.io/proposal/CBhieBvzo5miQBrdaM7vALpgNLt4Q5XYCDfNLaE2wXJA"
proposal_date: 2025-01-28
resolution_date: 2025-01-31
category: mechanism
summary: "1:1000 token split with mint authority to DAO governance — failed, but nearly identical proposal passed 6 months later"
tags: ["futarchy", "token-split", "elastic-supply", "meta-token", "governance"]
---

# MetaDAO: Perform Token Split and Adopt Elastic Supply for META

## Summary
Proposed by community member @aradtski: deploy a new META token with 1:1000 split (20,886,000 baseline supply), transfer mint and update authority to the DAO governance module, and enable opt-in migration with unlimited time window. The proposal explicitly addressed unit bias ("If it is not below the likes of Amazon and Nvidia to do stock splits... it is not below MetaDAO"), argued that mintable supply is safe because futarchy prevents inflationary minting that damages token price, and positioned MetaDAO as the first to "entrust token minting to Futarchic governance."

Failed on 2025-01-31 after 3 days.

## Market Data
- **Outcome:** Failed (2025-01-31)
- **Autocrat version:** 0.3
- **Key participants:** @aradtski (author), community

## Significance
This is a fascinating case study in futarchy dynamics. The proposal was well-specified, well-argued, and addressed a real problem (unit bias, treasury exhaustion, lack of mint authority). Yet it failed — and a nearly identical proposal by the founding team (Proph3t and Kollan) passed 6 months later as [[metadao-migrate-meta-token]].

Possible explanations: (1) market participants trusted founder execution more than community member execution for a critical migration; (2) timing — the treasury wasn't yet fully exhausted in January 2025; (3) the later proposal included additional operational details (Squads integration, specific LP fee changes, migration frontend already underway).

This pair of outcomes (community proposal fails, founder proposal passes on same concept) raises questions about whether futarchy markets evaluate proposals purely on merit or whether proposer identity acts as a quality signal. Both interpretations are defensible — founders may have better execution capability, making the "same" proposal genuinely higher-EV when they propose it.

## Relationship to KB
- [[metadao]] — governance decision, token architecture
- [[metadao-migrate-meta-token]] — the later proposal that passed with nearly identical specification
- [[futarchy-daos-require-mintable-governance-tokens-because-fixed-supply-treasuries-exhaust-without-issuance-authority-forcing-disruptive-token-architecture-migrations]] — this proposal was the first attempt to solve the problem this claim describes
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — unit bias argument explicitly cited
- [[domain-expertise-loses-to-trading-skill-in-futarchy-markets-because-prediction-accuracy-requires-calibration-not-just-knowledge]] — possible proposer-identity effect on market evaluation

---

Relevant Entities:
- [[metadao]] — parent organization
- [[metadao-migrate-meta-token]] — the later successful version

Topics:
- [[internet finance and decision markets]]
