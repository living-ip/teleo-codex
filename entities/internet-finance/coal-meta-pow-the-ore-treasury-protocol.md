---
type: entity
entity_type: decision_market
name: "COAL: Meta-PoW: The ORE Treasury Protocol"
domain: internet-finance
status: passed
parent_entity: "coal"
platform: "futardio"
proposer: "futard.io"
proposal_url: "https://www.futard.io/proposal/G33HJH2J2zRqqcHZKMggkQurvqe1cmaDtfBz3hgmuuAg"
proposal_date: 2025-11-07
resolution_date: 2025-11-10
category: "mechanism"
summary: "Introduces Meta-PoW economic model moving mining power into pickaxes and establishing deterministic ORE treasury accumulation through INGOT smelting"
tracked_by: rio
created: 2026-03-11
---

# COAL: Meta-PoW: The ORE Treasury Protocol

## Summary
The Meta-PoW proposal establishes a new economic model for COAL that creates a mechanical loop accumulating ORE in the treasury. The system moves mining power into pickaxes (tools), makes INGOT the universal crafting input, and forces all INGOT creation through smelting that burns COAL and pays ORE to the treasury. A dynamic license fee c(y) based on the COAL/ORE price ratio acts as an automatic supply throttle.

## Market Data
- **Outcome:** Passed
- **Proposer:** futard.io
- **Created:** 2025-11-07
- **Completed:** 2025-11-10
- **Proposal Account:** G33HJH2J2zRqqcHZKMggkQurvqe1cmaDtfBz3hgmuuAg

## Mechanism Design
The protocol introduces four tokens (COAL, ORE, INGOT, WOOD) with specific roles:
- **COAL:** Mineable with 25M max supply, halving-band emissions, burned for smelting and licenses
- **ORE:** External hard asset, paid only at smelting, 100% goes to COAL treasury
- **INGOT:** Crafting unit, minted only by burning 100 COAL + paying μ ORE (~12.10 ORE)
- **WOOD:** Tool maintenance input, produced by axes

Pickaxes gate access to COAL emissions and require 1 INGOT + 8 WOOD + c(y) COAL license to craft. Tools are evergreen with 4% daily decay if not repaired. Daily repair costs 0.082643 INGOT + 0.3 WOOD, calibrated so maintaining a pick is cheaper than recrafting and drives ~1 ORE/day to treasury.

The dynamic license c(y) = c0 * (y / y_ref)^p (with c0=200, y_ref=50, p=3, clamped 1-300) creates countercyclical supply response: when COAL strengthens, license cost falls and more picks come online; when COAL weakens, license cost rises and crafting slows.

## Significance
This proposal demonstrates sophisticated economic mechanism design governed through futarchy. Rather than simple parameter adjustments, Meta-PoW introduces a multi-token system with algorithmic supply controls, deterministic treasury accumulation, and automatic market-responsive throttling. The design creates structural coupling between mining activity and treasury inflow without relying on transaction fees or arbitrary tax rates.

The proposal also shows MetaDAO's evolution from fundraising platform to complex protocol economics coordinator. The level of economic calibration (specific INGOT costs, repair rates, license formulas) would be difficult to achieve through traditional governance.

## Relationship to KB
- coal - parent entity, economic model redesign
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] - governance platform
- [[dynamic performance-based token minting replaces fixed emission schedules by tying new token creation to measurable outcomes creating algorithmic meritocracy in token distribution]] - related mechanism design pattern