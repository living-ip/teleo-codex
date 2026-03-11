---
type: entity
entity_type: decision_market
name: "MetaDAO: Migrate META Token"
domain: internet-finance
status: passed
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "Proph3t & Kollan"
proposal_url: "https://www.futard.io/proposal/4grb3pea8ZSqE3ghx76Fn43Q97mAh64XjgwL9AXaB3Pe"
proposal_date: 2025-08-07
resolution_date: 2025-08-10
category: mechanism
summary: "1:1000 token split, mintable supply, new DAO v0.5 (Squads), LP fee reduction from 4% to 0.5%"
tags: ["futarchy", "token-migration", "elastic-supply", "squads", "meta-token"]
---

# MetaDAO: Migrate META Token

## Summary
Migration from METAC (unmintable, ~20K supply) to new META token (mintable, ~20.86M supply via 1:1000 split). Mint and update authority transferred to new DAO governed via Squads vault (v0.5). Protocol-owned liquidity fee reduced from 4% to 0.5%. New DAO passing threshold reduced to 1.5%, monthly spending limit set at $120K. Migration contract deployed as permanent one-way conversion. New META token: METAwkXcqyXKy1AtsSgJ8JiUHwGCafnZL38n3vYmeta. New DAO: Bc3pKPnSbSX8W2hTXbsFsybh1GeRtu3Qqpfu9ZLxg6Km.

## Market Data
- **Outcome:** Passed (2025-08-10)
- **Autocrat version:** 0.3
- **Key participants:** Proph3t (co-author), Kollan (co-author)

## Significance
This is the resolution of the mintable-token saga that began with the 99.3% burn ([[metadao-burn-993-percent-meta]]), continued through the failed community proposal ([[metadao-token-split-elastic-supply]]), and culminated here. The DAO's treasury was exhausted (as the burn had predicted), forcing the migration to mintable tokens.

Key architectural decisions: (1) mint authority to DAO governance, not any multisig — "market-driven issuance" as extension of market-driven decision-making; (2) Squads integration for operational security; (3) LP fee reduction from 4% to 0.5% anticipating the custom Futarchic AMM; (4) permanent migration contract with unlimited conversion window, avoiding forced timelines.

The proposal explicitly frames mintable supply as philosophically consistent with futarchy: "Futarchy is market-driven decision making. To stay true to that principle, it also requires market-driven issuance." This is the strongest empirical evidence for the claim that futarchy DAOs require mintable governance tokens — the fixed-supply model broke in practice.

## Relationship to KB
- [[metadao]] — token architecture migration
- [[metadao-burn-993-percent-meta]] — the burn that created the need for this migration
- [[metadao-token-split-elastic-supply]] — the earlier failed community version
- [[futarchy-daos-require-mintable-governance-tokens-because-fixed-supply-treasuries-exhaust-without-issuance-authority-forcing-disruptive-token-architecture-migrations]] — primary evidence for this claim
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — 1:1000 split addresses unit bias

---

Relevant Entities:
- [[metadao]] — parent organization
- [[proph3t]] — co-author

Topics:
- [[internet finance and decision markets]]
