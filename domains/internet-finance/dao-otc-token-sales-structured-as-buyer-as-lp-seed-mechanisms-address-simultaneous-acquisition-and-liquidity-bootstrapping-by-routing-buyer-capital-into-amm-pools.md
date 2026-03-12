---
type: claim
domain: internet-finance
description: "MetaDAO Proposal 8 proposed routing the OTC buyer's USDC into a 50/50 AMM pool (matched with DAO META) so that a single external capital infusion simultaneously acquires tokens and seeds protocol liquidity — a structure not common in standard OTC deals"
confidence: speculative
source: "rio, based on MetaDAO Proposal 8 mechanism design (Feb 2024) — proposed but not executed (proposal failed)"
created: 2026-03-11
depends_on:
  - "MetaDAO Proposal 8 implementation spec: $100k USDC + matching META into Meteora 50/50 volatile pool"
  - "Standard OTC structure comparison: buyer pays, receives tokens, USDC goes to treasury"
challenged_by:
  - "The specific proposal employing this structure failed — market rejection is direct evidence against viability in the MetaDAO context"
  - "Buyer-as-LP creates ongoing price exposure the buyer may not want — pure acquisition and LP seeding are different risk profiles"
  - "DAO must match the AMM with its own META, creating additional dilution beyond the OTC allocation itself"
---

# DAO OTC token sales structured as buyer-as-LP-seed mechanisms address simultaneous acquisition and liquidity bootstrapping by routing buyer capital into AMM pools

Standard DAO OTC token sales follow a simple structure: an external party pays USDC, receives tokens (often with a vesting schedule), and the USDC enters the DAO treasury as a liquid reserve. The liquidity problem remains: the OTC sale increases circulating supply without adding AMM depth, so it may reduce market liquidity per token rather than increase it.

MetaDAO Proposal 8 proposed an alternative structure. Ben Hawkins would pay $100,000 USDC to acquire up to 500 META tokens — with 20% delivered immediately and 80% in a 12-month Streamflow linear vest. But rather than routing the USDC to the DAO treasury, the $100,000 USDC would be used to create a 50/50 Meteora AMM pool (with 1% fee), matched with META from the DAO. The buyer's payment becomes AMM liquidity, not a treasury reserve.

The mechanism structure achieves two things simultaneously:
1. **Acquisition**: Buyer receives tokens at a TWAP-floored price (`max(TWAP_pass, $200)`)
2. **Liquidity seeding**: Buyer's USDC seeds an AMM pool, giving the protocol permanent on-chain depth funded by external capital rather than treasury assets

The design addresses a structural tension in governance token OTC sales: adding tokens to circulation without adding proportional market depth makes existing markets thinner per dollar of market cap. By converting the OTC proceeds directly into AMM liquidity, the structure attempts to make the token supply increase self-financing on the liquidity side.

The vesting component (20% immediate, 80% over 12 months via Streamflow) adds alignment pressure without fully neutralizing the liquidity mechanism — though since [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]], the alignment value of the vesting should be discounted.

The proposal failed, suggesting the market did not believe this structure would increase META's net value in the specific terms offered. The failure does not invalidate the structural idea — it may reflect objections to the specific price floor ($200 vs. $695 spot), the scale of dilution, or uncertainty about AMM pool performance. But the market's negative judgment is the available evidence and should weigh against confidence in this mechanism's viability.

## Evidence

- MetaDAO Proposal 8 (2024-02-18): implementation spec requires Meteora 50/50 volatile pool seeded with $100k USDC + matched META from DAO
- 1% fee pool structure chosen — relatively high fee suggesting expectation of concentrated, sticky liquidity rather than high-frequency trading
- Vesting: 20% immediate, 80% linear 12-month Streamflow — hybrid delivery creates partial alignment
- Proposal failed 2024-02-24 — the market that would benefit from increased liquidity priced the structure as net-negative

## Challenges

- The specific proposal failed — the most direct evidence available is that futarchy markets rejected this mechanism as structured
- Buyer faces dual risk: token price exposure (from direct holding) and LP impermanent loss — conflating these into one investment may deter buyers who want one but not the other
- DAO match requirement (META contributed to the 50/50 pool) creates dilution beyond the OTC allocation, compounding the supply increase
- Alternative: direct AMM seeding via buyback mechanics may achieve better liquidity outcomes without the OTC buyer coordination overhead — since [[ownership coin treasuries should be actively managed through buybacks and token sales as continuous capital calibration not treated as static war chests]], there are other approaches

---

Relevant Notes:
- [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]] — vesting component of this structure has limited alignment value
- [[ownership coin treasuries should be actively managed through buybacks and token sales as continuous capital calibration not treated as static war chests]] — this mechanism is one of several treasury management tools; its rejection doesn't foreclose others
- [[futarchy-governed DAOs converge on traditional corporate governance scaffolding for treasury operations because market mechanisms alone cannot provide operational security and legal compliance]] — multi-sig execution of the LP seeding is required by the proposal, reflecting the operational layer futarchy doesn't replace
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — TWAP pricing for the OTC component integrates with Autocrat's settlement mechanism

Topics:
- [[internet finance and decision markets]]
