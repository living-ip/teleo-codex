---
type: entity
entity_type: decision_market
name: "MetaDAO: Release a Launchpad"
domain: internet-finance
status: passed
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "Proph3t & Kollan"
proposal_url: "https://www.futard.io/proposal/HREoLZVrY5FHhPgBFXGGc6XAA3hPjZw1UZcahhumFkef"
proposal_date: 2025-02-26
resolution_date: 2025-03-01
category: strategy
summary: "Launch permissioned launchpad for futarchy DAOs — 'unruggable ICOs' where all USDC goes to DAO treasury or liquidity pool"
tags: ["futarchy", "launchpad", "unruggable-ico", "capital-formation", "futardio"]
---

# MetaDAO: Release a Launchpad

## Summary
Proposal to release a launchpad enabling new projects to raise capital through futarchy-governed DAOs. Mechanics: (1) project creators specify minimum USDC needed; (2) funders commit USDC over 5 days, receiving 1,000 tokens per USDC; (3) if minimum met, 10% of USDC paired with tokens in a constant-product AMM, remaining USDC + mint authority transferred to a futarchy DAO; (4) if minimum not met, funders burn tokens to reclaim USDC. Initially permissioned (Proph3t and Kollan select projects), with discretion to transition to permissionless.

This is the genesis proposal for what became Futardio — MetaDAO's ownership coin launchpad.

## Market Data
- **Outcome:** Passed (2025-03-01)
- **Autocrat version:** 0.3
- **Key participants:** Proph3t (co-author), Kollan (co-author)

## Significance
This is arguably MetaDAO's most consequential proposal — it created the Futardio launchpad that would generate most of MetaDAO's revenue and ecosystem value. The "unruggable ICO" framing solves the central trust problem of crypto fundraising: if the team walks away, anyone can propose treasury liquidation and return funds to investors. This is the concrete mechanism behind the claim that "futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible."

The progression from [[metadao-create-futardio]] (failed, one sentence, November 2024) to this proposal (passed, detailed mechanics, February 2025) demonstrates futarchy's quality filtering: same concept, dramatically different specification, opposite outcomes.

Key design choices: fixed price (1,000 tokens/USDC) rather than auction, 10% to AMM LP, initially permissioned with path to permissionless. The founders explicitly reserved discretion to change mechanics (e.g., adopt IDO pool approach), showing pragmatic flexibility within the futarchy governance framework.

## Relationship to KB
- [[metadao]] — launchpad creation, major strategic pivot
- [[futardio]] — the entity created by this proposal
- [[metadao-create-futardio]] — the earlier failed version of this concept
- [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — the core value proposition
- [[ownership coins primary value proposition is investor protection not governance quality because anti-rug enforcement through market-governed liquidation creates credible exit guarantees that no amount of decision optimization can match]] — launchpad designed around investor protection
- [[internet-capital-markets-compress-fundraising-timelines]] — 5-day raise window
- [[futarchy-governed permissionless launches require brand separation to manage reputational liability because failed projects on a curated platform damage the platforms credibility]] — initially permissioned to manage this risk

---

Relevant Entities:
- [[metadao]] — parent organization
- [[futardio]] — the launchpad created by this proposal
- [[proph3t]] — co-author

Topics:
- [[internet finance and decision markets]]
