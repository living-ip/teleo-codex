---
type: claim
domain: internet-finance
description: "FutureDAO's token migrator combines on-chain token swaps with presale fundraising and a 60% success threshold to create structured community takeover mechanism for abandoned projects"
confidence: experimental
source: "FutureDAO proposal on futard.io, 2024-06-05"
created: 2024-06-05
---

# FutureDAO token migrator enables community takeovers through structured on-chain migration with presale fundraising and conditional success thresholds

FutureDAO's token migration tool creates a structured protocol for communities to take over abandoned or poorly managed projects by combining three mechanisms: (1) token swap from old to new token with lockup until completion, (2) simultaneous presale fundraising to capitalize the new project, and (3) a 60% presale threshold that determines success or full refund. The tool addresses multiple takeover scenarios including rug pulls, dead projects, metadata changes, fundraising needs, token standard upgrades, and hostile takeovers.

The migration process works as follows: communities set launch parameters including migration date/duration, presale raise amount and price in SOL, and treasury allocation. Maximum dilution rates are tiered by market cap: <$1M FDMC allows 15% dilution (7.5% presale, 5.5% treasury, 2% DAO fee), <$5M allows 12%, <$20M allows 10%. During migration, old tokens are locked and swapped for new tokens while the presale runs concurrently. If the presale reaches 60% of target, the migration succeeds: old token LP is reclaimed, new token LP is created with raised SOL, tokens become claimable, and non-migrators receive 50% airdrop. If presale fails to reach 60%, all SOL is refunded, new tokens must be swapped back to old tokens, and new tokens are burned.

This mechanism differs from informal community takeovers by providing on-chain enforcement of the success condition and automatic refund protection. The 60% threshold creates a coordination point where communities can credibly commit to migration only if sufficient capital and participation materialize. The tool was born from FutureDAO's own experience taking over $MERTD after the project team rugged.

## Evidence
- FutureDAO proposal describes migration tool addressing "communities that have been abandoned by their developers, facing challenges such as poor project management, or with the desire to launch a new token"
- Migration process locks old tokens until completion, with automatic refund if <60% presale target reached
- Tiered dilution caps based on market cap: 2% fee for <$1M FDMC, 1.5% for <$5M, 1% for <$20M
- Tool designed for multiple scenarios: "Rugged Projects", "Dead Projects", "Metadata Changes", "Fundraising", "Token Extensions", "Hostile Takeovers"
- Non-migrators receive 50% airdrop if migration succeeds, creating incentive to participate
- "Future Champions" identify and assist potential clients, incentivized through commissions in newly minted tokens

---

Topics:
- [[domains/internet-finance/_map]]
