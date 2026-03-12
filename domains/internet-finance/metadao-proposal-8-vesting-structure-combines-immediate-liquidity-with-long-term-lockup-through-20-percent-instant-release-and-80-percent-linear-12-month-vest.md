---
type: claim
domain: internet-finance
description: "OTC token sale structures can split allocation between immediate release and time-locked vesting to balance buyer liquidity needs against seller dilution concerns"
confidence: experimental
source: "MetaDAO Proposal 8, Ben Hawkins OTC trade proposal, 2024-02-18"
created: 2024-02-18
---

# MetaDAO Proposal 8 vesting structure combines immediate liquidity with long-term lockup through 20 percent instant release and 80 percent linear 12-month vest

MetaDAO Proposal 8 proposed a vesting mechanism for large OTC token purchases that split allocation between immediate release (20%) and time-locked vesting (80% over 12 months via Streamflow). This structure attempted to balance the buyer's need for immediate liquidity participation against the DAO's concern about sudden circulating supply expansion.

The proposal specified that Ben Hawkins would acquire up to 500 META tokens for $100,000 USDC, with price determined by `max(twapPass, 200)`. Of the final allocation, 20% would transfer immediately to the buyer's wallet, while 80% would be placed in a Streamflow linear vesting program over 12 months.

The $100,000 USDC would be used to create a 50/50 AMM pool matched in META by the DAO, providing immediate liquidity while the vested tokens remained locked. This design attempted to address the stated problem of "insufficient liquidity within the META markets" while limiting immediate dilution impact.

## Evidence
- MetaDAO Proposal 8 specified 20% immediate transfer, 80% 12-month linear Streamflow vest
- Proposal sought $100k USDC for up to 500 META at max(twapPass, 200)
- Background stated "current liquidity within the META markets is proving insufficient"
- Vesting structure was presented as dilution mitigation tool alongside immediate liquidity provision
- [[time-based-token-vesting-is-hedgeable-making-standard-lockups-meaningless-as-alignment-mechanisms-because-investors-can-short-sell-to-neutralize-lockup-exposure-while-appearing-locked]]

## Limitations
This is a single proposal case study. Whether this vesting split pattern is generalizable across OTC structures or specific to MetaDAO's circumstances is unclear. The proposal's failure (2024-02-24) suggests the market rejected this particular implementation, but the rejection reason is ambiguous—it could reflect concerns about vesting design, pricing mechanism, counterparty risk, or other factors.

---

Relevant Notes:
- [[MetaDAOs-Autocrat-program-implements-futarchy-through-conditional-token-markets-where-proposals-create-parallel-pass-and-fail-universes-settled-by-time-weighted-average-price-over-a-three-day-window]]
- [[futarchy-adoption-faces-friction-from-token-price-psychology-proposal-complexity-and-liquidity-requirements]]
- [[futarchy-governed-DAOs-converge-on-traditional-corporate-governance-scaffolding-for-treasury-operations-because-market-mechanisms-alone-cannot-provide-operational-security-and-legal-compliance]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
