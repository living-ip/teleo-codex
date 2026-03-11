---
type: claim
domain: internet-finance
description: "YaaS packages yield strategies as pluggable services that protocols integrate, validated by Orogold deployment achieving 22% LP APY with 3.5x pool growth"
confidence: experimental
source: "@oxranga Solomon Lab Notes 05, 2026-02-25"
created: 2026-03-11
depends_on: []
challenged_by: []
---

# YaaS (Yield-as-a-Service) enables composable yield strategies through protocol integration

YaaS represents a composability pattern in DeFi where yield optimization strategies are packaged as services that other protocols can integrate rather than building in-house. Solomon Labs' first production deployment with @orogoldapp demonstrates the model working: the integration drove +22.05% LP APY and generated 3.5x growth in the liquidity pool.

This is production evidence that yield-as-a-service can deliver measurable improvements in capital efficiency for integrating protocols. The 3.5x pool growth suggests that higher yields attract capital at scale, validating the demand side of the model.

The technical infrastructure required significant hardening (300+ commits across 8 repos) and passed a Cantina security audit, indicating that productionizing yield strategies as composable services requires substantial engineering investment beyond the strategy logic itself.

## Evidence
- Solomon Labs YaaS first deployment with Orogold: +22.05% LP APY, 3.5x pool growth (self-reported, 2026-02-25)
- 300+ commits across 8 repositories for backend hardening
- Cantina audit completed (security validation for production deployment)

## Challenges
- Single deployment case — generalizability to other protocols and yield strategies unproven
- Self-reported metrics without independent verification
- No data on sustainability of yields or pool growth over time
- Timeframe of measurement not specified (annualized? period-specific?)

---

Relevant Notes:
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]]
- [[stablecoin flow velocity is a better predictor of DeFi protocol health than static TVL because flows measure capital utilization while TVL only measures capital parked]]

Topics:
- [[domains/internet-finance/_map]]
