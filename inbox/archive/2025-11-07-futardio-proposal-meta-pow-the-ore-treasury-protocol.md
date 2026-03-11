---
type: source
title: "Futardio: Meta-PoW: The ORE Treasury Protocol"
author: "futard.io"
url: "https://www.futard.io/proposal/G33HJH2J2zRqqcHZKMggkQurvqe1cmaDtfBz3hgmuuAg"
date: 2025-11-07
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
---

## Proposal Details
- Project: coal
- Proposal: Meta-PoW: The ORE Treasury Protocol
- Status: Passed
- Created: 2025-11-07
- URL: https://www.futard.io/proposal/G33HJH2J2zRqqcHZKMggkQurvqe1cmaDtfBz3hgmuuAg
- Description: We are introducing “Meta-PoW”, which moves mining power into pickaxes and turns crafting into a deterministic engine that accrues ORE into the COAL treasury.
- Discussion: https://discord.com/channels/1003424756080590878/1436448452631593091

## Summary

### 🎯 Key Points
The Meta-PoW proposal aims to establish a sustainable economic model for COAL by creating a loop that accumulates ORE in the treasury, ties player behavior to COAL/ORE price dynamics, and is easily implementable on the Solana blockchain.

### 📊 Impact Analysis
#### 👥 Stakeholder Impact
Players will benefit from a stable mining and crafting system that incentivizes maintaining tools rather than constant recrafting.

#### 📈 Upside Potential
The model promotes efficient resource management, potentially increasing the flow of ORE into the treasury as demand grows with COAL emissions.

#### 📉 Risk Factors
Fluctuations in COAL and ORE prices could disrupt the balance of the system, impacting player engagement and resource stability.

## Content

Forge INGOT using COAL and ORE.

Craft pickaxes using COAL, INGOT, and WOOD.

Mine COAL with pickaxes.

When COAL strengthens, crafting scales up, more picks come online, more INGOT gets smelted, and more ORE flows into the treasury. If COAL weakens, crafting slows without breaking the system. Tools are evergreen and cheaper to repair than to recraft, so players maintain their gear instead of churning it.

Goal: simple, mechanical “ownership coin” loop that:
1. reliably accumulates ORE in the COAL treasury,
2. ties behavior to COAL/ORE price dynamics,
3. is straightforward to implement on Solana.

1) Tokens

COAL
- Mineable token with fixed max supply and halving-band emissions.
- Used for:
- Smelting (burned)
- Pickaxe license (burned)

ORE
- External hard asset and treasury unit.
- Paid only at smelting.
- All ORE paid at smelt goes to the COAL treasury.

INGOT
- INGOT unit used to craft and repair tools.
- Minted only by smelting (burn COAL + pay ORE).

WOOD
- Used for crafting and repairing tools.
- Produced by axes.
- No direct role in emissions or ORE accounting.

2) COAL Emissions

Max supply:
S_max = 25,000,000 COAL

Halving bands:
- Every 5% of S_max added to circulation advances a band.
- Band step: h = 0.05 * S_max = 1,250,000 COAL
- Band index: k_t = floor((C_t - C_0) / h)
- Daily emissions: R_t = R_0 * 2^(-k_t), with R_0 = 11,250 COAL/day initially

Meta-PoW does not change R_t. It defines how R_t is accessed via tools.

3) Smelting (only place ORE is paid)

To smelt 1 INGOT:
- Burn 100 COAL
- Pay μ ORE to the COAL treasury

Key points:
- ORE enters only at smelt.
- No ORE is charged at craft or repair.
- INGOT is the on-chain proof of COAL burn plus ORE fee.


Baseline calibration:
- μ is chosen so a fully maintained pick maps to roughly 1 ORE/day of smelt-driven inflow.
- Current μ ≈ 12.10 ORE per INGOT.

4) Pickaxes (mining tools)

Pickaxes:
- Gate access to COAL emissions.
- Indirectly drive ORE inflow via INGOT demand (smelting).


Crafting a pickaxe:
- 1 INGOT
- 8 WOOD
- c(y) COAL burned as a license


Where:
- y = P_ORE / P_COAL (ORE price in COAL)
- c(y) is dynamic (see Section 7).


Evergreen behavior:
- Each pick has power p between 0 and 1.
- If repaired for the day, p stays at 1.
- If not repaired, p decays by 4% per day:
- p_next = 0.96 * p

Daily repair cost to maintain full power:
- r_ing_total INGOT
- 0.3 WOOD

Calibration:
- r_ing_total is set so that:
- Repairing is cheaper than constantly recrafting.
- A fully maintained pick effectively corresponds to about 1 ORE/day of smelt demand into the treasury.

Current calibration:
- r_ing_total ≈ 0.082643 INGOT per day.

Result:
- Rational players maintain picks.
- The number of active, fully repaired picks is the key state variable.
- In equilibrium:
    - ORE per day to the treasury is approximately equal to the number of active, fully repaired picks.

5) Axes (WOOD tools)

Axes exist to supply WOOD so that pick crafting and repairs are not bottlenecked.

Crafting an axe:
- 1 INGOT
- 6 WOOD

Daily repair (to maintain full power):
- r_ing_total INGOT
- 0.25 WOOD

Output:
- w0 WOOD per day per fully repaired axe (for example 3–5, set by governance).

Rules:
- Axes do not receive COAL emissions.
- Axes are excluded from ORE accrual logic.
- Any ORE used to smelt their INGOT is incidental.
- Their purpose is to keep WOOD supply healthy for the system.


6) Decay and repair logic
For both picks and axes:
- If you skip repair, tool power decays by 4% per day.
- If you decide to repair later, you pay the accumulated repair cost (INGOT + WOOD for each missed day) to restore full power.

This:
- Makes tools evergreen (no permanent break),
- Keeps a consistent economic choice (repair vs abandon and recraft),
- Avoids churn and keeps the system state stable.

7) Pick license c(y)

The license is an extra COAL burn paid once when crafting a pick. It is the main macro throttle.
Definition:
- c(y) = c0 * (y / y_ref)^p
- Clamped so that c_min ≤ c(y) ≤ c_max
- y = P_ORE / P_COAL using an EMA-smoothed TWAP

Suggested defaults:
- c0 = 200 COAL
- y_ref = 50
- p = 3
- c_min = 1
- c_max = 300

Behavior:
- When COAL is strong relative to ORE (y low):
- c(y) decreases
- More picks are economically viable
- More smelting and more ORE flows into the treasury
- When COAL is weak relative to ORE (y high):
- c(y) increases
- Crafting slows
- The system self-throttles without intervention

Notes:
- The license is paid in COAL only.
- That COAL is burned, not sent to the treasury.
- It is a control parameter, not a revenue stream.

8) Mechanics summary

Given daily emissions R_t:

COAL:
- Minted as emissions to pick holders based on pick power.
- Burned via:
- Pick licenses at craft (c(y))
- Smelting for INGOT (100 COAL per INGOT)

INGOT:
- Produced by smelting (COAL burn + ORE fee).
- Consumed by:
- Crafting picks and axes
- Repairing picks and axes
- ts demand drives both COAL burn and ORE inflow.

ORE:
- Only spent at smelting.
- 100% sent directly to the COAL treasury.

With the current calibration:
- Each active, fully repaired pick is designed to support approximately:
- 1 ORE per day of inflow to the treasury
- 8.26 COAL per day burned via smelting
- subject to real player behavior and market conditions.

9) Governance parameters

Meta governance can tune:
- License curve:
- c0, y_ref, p, c_min, c_max
- EMA smoothing window for y
- Repair and decay:
    - Daily decay rate (currently 4%)
    - r_ing_total if a different ORE/day target per pick is desired
- Axes:
    - w0 (WOOD/day per axe), to maintain adequate WOOD supply
- Future adjustments: μ and related parameters if ORE flow targets or market realities change

10) User Interface (GUI)
A GUI will be created on minechain.gg that allows for anyone to mine, smelt, chop, and craft!

Note: this proposal allows parameters to be slightly adjusted by the core team before launch, upon feedback from the community.

VOTE
Vote YES – adopt Meta-PoW as the new COAL economic model.
Vote NO – keep the current model unchanged.



## Raw Data

- Proposal account: `G33HJH2J2zRqqcHZKMggkQurvqe1cmaDtfBz3hgmuuAg`
- Proposal number: 4
- DAO account: `3LGGRzLrgwhEbEsNYBSTZc5MLve1bw3nDaHzzfJMQ1PG`
- Proposer: `HAymbnVo1w5sC7hz8E6sdmzSuDpqUwKXWzBeshEAb7WC`
- Autocrat version: 0.3
- Completed: 2025-11-10
- Ended: 2025-11-10
