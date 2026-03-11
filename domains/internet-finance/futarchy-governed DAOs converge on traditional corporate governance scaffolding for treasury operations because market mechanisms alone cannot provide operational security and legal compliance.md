---
type: claim
domain: internet-finance
description: "Solomon DP-00001 requires subcommittees, SOPs, confidentiality undertakings, segregated wallets, and three law firms just to begin treasury deployment — evidence that futarchy handles decision quality while traditional structures handle operational execution"
confidence: experimental
source: "rio, based on Solomon DAO DP-00001 Treasury Subcommittee proposal (Mar 2026)"
created: 2026-03-05
depends_on:
  - "Solomon DP-00001 full proposal text"
  - "Three-step staged rollout for treasury deployment"
  - "Pass threshold asymmetry: -300 bps team-sponsored, +300 bps non-team"
---

# Futarchy-governed DAOs converge on traditional corporate governance scaffolding for treasury operations because market mechanisms alone cannot provide operational security and legal compliance

Solomon DAO's DP-00001 proposal is a detailed governance document that would not look out of place at a traditional fund. Subcommittee designates with named bios. Confidentiality undertakings. A segregated legal budget wallet. Three law firms (Morrison Cohen, NXT Law, GVRN). SOP registries with versioning and ratification processes. Operational packs batched for governance approval. A three-step staged rollout where each step has its own proposal and vote.

This is not a failure of futarchy. It is evidence that futarchy and corporate governance are complements, not substitutes. Futarchy excels at decision quality — should we deploy the treasury? should we liquidate this project? should we approve this spending? But operational execution — who holds the keys, what's the multisig threshold, how do we handle a compromised signer, what's the incident response playbook — requires procedural controls that markets cannot provide.

The mechanism insight: since [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]], the same principle applies to operations. Market mechanisms handle strategic decisions where information aggregation matters. Procedural mechanisms handle operational decisions where execution reliability matters. Solomon is discovering this empirically.

The pass threshold asymmetry is a subtle mechanism design detail worth noting. Team-sponsored proposals need only clear -300 bps (the market must believe they won't hurt). Non-team proposals must clear +300 bps (the market must believe they will help). This encodes an implicit trust calibration: teams get benefit of the doubt on operational proposals, while external proposals face a higher bar. This is a pragmatic acknowledgment that not all proposals carry equal information asymmetry.

The contrast with Ranger is instructive. Ranger's liquidation shows futarchy handling a strategic decision decisively ($581K volume, 97% pass). Solomon's treasury proposal shows futarchy handling a procedural decision with low engagement ($5.79K volume, 50% pass). Since [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]], the Solomon proposal validates the existing claim — procedural governance is a weak spot for futarchy markets.

## Evidence

- Solomon DP-00001 full proposal text (Mar 2026) — subcommittees, SOPs, legal budgets, staged rollout
- Pass threshold asymmetry: -300 bps (team) vs +300 bps (non-team)
- $5.79K volume at 50% pass — low engagement on procedural proposal
- Three-step rollout: designates -> buyback framework -> treasury activation

## Challenges

- This convergence may be temporary — early-stage organizational overhead that streamlines as tooling matures. Future DAO tooling might automate the procedural layer
- The "traditional corporate governance" framing may overstate the similarity — Solomon's SOPs are ratified through futarchy votes, not board decisions, preserving decentralized authority
- The subcommittee model introduces trusted roles that could recentralize power over time, undermining the trustless property that makes futarchy valuable
- Since [[Ooki DAO proved that DAOs without legal wrappers face general partnership liability making entity structure a prerequisite for any futarchy-governed vehicle]], some of this scaffolding is legally required rather than a failure of market mechanisms


### Additional Evidence (extend)
*Source: [[2025-02-04-futardio-proposal-should-a-percentage-of-sam-bids-route-to-mnde-stakers]] | Added: 2026-03-11 | Extractor: anthropic/claude-sonnet-4.5*

Marinade's MIP.5 demonstrates futarchy governance extending beyond treasury operations into protocol mechanism design. The proposal didn't just allocate existing treasury funds but established an ongoing revenue-routing mechanism from SAM bids to stakers. However, implementation still required 'development and implementation' post-approval, indicating futarchy handles the decision while traditional execution follows. This suggests futarchy's scope may be broader than treasury-only operations, covering protocol economics and incentive design, but still relies on off-chain execution infrastructure.

---

Relevant Notes:
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]] — extends to operations: markets for strategy, procedures for execution
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] — Solomon DP-00001 confirms: procedural proposals get thin markets
- [[Ooki DAO proved that DAOs without legal wrappers face general partnership liability making entity structure a prerequisite for any futarchy-governed vehicle]] — some scaffolding is legally mandated
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — Solomon governance maturation enriches platform analysis

Topics:
- [[internet finance and decision markets]]
