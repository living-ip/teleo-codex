---
type: entity
entity_type: product
name: "Futardio"
domain: internet-finance
handles: ["@futarddotio"]
website: https://futardio.com
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
launched: 2025-10-01
parent: "[[metadao]]"
category: "Futarchy-governed token launchpad (Solana)"
stage: growth
key_metrics:
  total_launches: "45 (verified from platform data)"
  total_commits: "$17.8M"
  total_funders: "1,010"
  notable_launches: ["Umbra", "Solomon", "Superclaw ($6M committed)", "Rock Game", "Turtle Cove", "VervePay", "Open Music", "SeekerVault", "SuperClaw", "LaunchPet", "Seyf", "Areal", "Etnlio"]
  mechanism: "Unruggable ICO — futarchy-governed launches with treasury return guarantees"
competitors: ["pump.fun (memecoins)", "Doppler (liquidity bootstrapping)"]
built_on: ["Solana", "MetaDAO Autocrat"]
tags: ["launchpad", "ownership-coins", "futarchy", "unruggable-ico", "permissionless-launches"]
---

# Futardio

## Overview
MetaDAO's token launch platform. Implements "unruggable ICOs" — permissionless launches where investors can force full treasury return through futarchy-governed liquidation if teams materially misrepresent. Replaced the original uncapped pro-rata mechanism that caused massive overbidding (Umbra: $155M committed for $3M raise = 50x; Solomon: $103M committed for $8M = 13x).

## Current State
- **Launches**: 45 total (verified from platform data, March 2026). Many projects show "REFUNDING" status (failed to meet raise targets). Total commits: $17.8M across 1,010 funders.
- **Mechanism**: Unruggable ICO. Projects raise capital, treasury is held onchain, futarchy proposals govern project direction. If community votes for liquidation, treasury returns to token holders.
- **Quality signal**: The platform is permissionless — anyone can launch. Brand separation between Futardio platform and individual project quality is an active design challenge.
- **Key test case**: Ranger Finance liquidation proposal (March 2026) — first major futarchy-governed enforcement action. Liquidation IS the enforcement mechanism — system working as designed.
- **Low relaunch cost**: ~$90 to launch, enabling rapid iteration (MycoRealms launched, failed, relaunched)

## Timeline
- **2025-10** — Futardio launches. Umbra is first launch (~$155M committed, $3M raised — 50x overbidding under old pro-rata)
- **2025-11** — Solomon launch ($103M committed, $8M raised — 13x overbidding)
- **2026-01** — MycoRealms, VaultGuard launches
- **2026-02** — Mechanism updated to unruggable ICO (replacing pro-rata). HuruPay, Epic Finance, ForeverNow launches
- **2026-02/03** — Launch explosion: Rock Game, Turtle Cove, VervePay, Open Music, SeekerVault, SuperClaw, LaunchPet, Seyf, Areal, Etnlio, and dozens more
- **2026-03** — Ranger Finance liquidation proposal — first futarchy-governed enforcement action

## Competitive Position
- **Unique mechanism**: Only launch platform with futarchy-governed accountability and treasury return guarantees
- **vs pump.fun**: pump.fun is memecoin launch (zero accountability, pure speculation). Futardio is ownership coin launch (futarchy governance, treasury enforcement). Different categories despite both being "launch platforms."
- **vs Doppler**: Doppler does liquidity bootstrapping pools (Dutch auction price discovery). Different mechanism, no governance layer.
- **Structural advantage**: The futarchy enforcement mechanism is novel — no competitor offers investor protection through market-governed liquidation
- **Structural weakness**: Permissionless launches mean quality varies wildly. Platform reputation tied to worst-case projects despite brand separation efforts.

## Investment Thesis
Futardio is the test of whether futarchy can govern capital formation at scale. If unruggable ICOs produce better investor outcomes than unregulated token launches (pump.fun) while maintaining permissionless access, Futardio creates a new category: accountable permissionless fundraising. The Ranger liquidation is the first live test of the enforcement mechanism.

**Thesis status:** ACTIVE

## Relationship to KB
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — parent claim
- [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — enforcement mechanism
- [[futarchy-governed permissionless launches require brand separation to manage reputational liability because failed projects on a curated platform damage the platforms credibility]] — active design challenge

---

Relevant Entities:
- [[metadao]] — parent protocol
- [[solomon]] — notable launch
- [[omnipair]] — ecosystem infrastructure

Topics:
- [[internet finance and decision markets]]
