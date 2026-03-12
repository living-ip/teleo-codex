---
type: claim
domain: internet-finance
description: "Memecoins remove the long-term vs short-term objective tension that makes futarchy hard in general governance, because holders universally want price appreciation with no competing temporal horizons"
confidence: experimental
source: "rio, from futard.io MetaDAO governance proposal (2024-08-28), authored by futard.io"
created: 2026-03-12
depends_on:
  - "coin price is the fairest objective function for asset futarchy"
---

# Memecoin governance is futarchy's ideal entry context because price-maximizing objectives eliminate the temporal ambiguity that makes futarchy hard in general-purpose governance

The standard critique of futarchy is that objective functions are hard to define. Vitalik Buterin noted that "pure futarchy has proven difficult to introduce, because in practice objective functions are very difficult to define (it's not just coin price that people want!)." But for memecoin governance specifically, this objection dissolves entirely.

The futard.io MetaDAO proposal (August 2024) articulated the core insight: memecoin holders only want the price of the token to increase. Unlike DAOs governing productive infrastructure, protocols, or real-world assets, there is no governance debate between "what's best short-term" and "what's best long-term." Both collapse into the same answer: higher price. The temporal horizon problem — where prediction markets might optimize short-run metrics that diverge from long-run value — simply doesn't arise when the objective is pure price appreciation.

This makes memecoins a structurally cleaner test bed for futarchy than more complex governance contexts:
- No objective function specification problem (price is it)
- No long-term vs short-term tradeoff in voter incentives
- No need to aggregate competing stakeholder preferences
- All holders share the same unambiguous interest

The result is that futarchy's coordination mechanisms operate on a simplified problem where the mechanism's performance can be evaluated cleanly, without the confounding complexity of multi-dimensional objectives.

This is distinct from the claim that [[coin price is the fairest objective function for asset futarchy]], which argues that price is the *best* objective for asset futarchy generally. The memecoin-specific claim is stronger: for memecoins, price is not merely the best objective — it is the *only* objective, which eliminates an entire class of governance failure modes.

## Evidence

- **Primary source**: futard.io MetaDAO proposal (2024-08-28, proposal #10, account `GugKjNpirFNaaRkEStRKGJPnutptsnTA3XuCJ8nwaVtK`). Proposal explicitly identified memecoin governance as "one of the ideal use-cases for futarchy" because "memecoin holders only want the price of the token to increase" and "there's no question of 'maybe the market knows what's the best short-term action, but not the best long-term action.'"
- **Proposal status**: Proposal failed (completed 2024-09-01), meaning MetaDAO's own futarchy mechanism voted against developing futardio at that time — reflecting the reputational concerns raised in the proposal itself, not a rejection of the objective function argument.

## Challenges

- The proposal itself identified a key tension: association with memecoins "makes futarchy look less serious" and "may make it harder to sell DeFi DAOs / non-crypto organizations." The very features that make memecoins easy governance contexts may make them poor ambassadors for serious adoption.
- Memecoin price is partially driven by speculation and social dynamics, not just governance decisions, which may confound the signal that futarchy markets produce.
- "Price appreciation" as a unitary objective may still have temporal ambiguity in practice: pump-and-dump dynamics mean short-horizon holders may prefer volatility strategies over sustained price growth.

---

Relevant Notes:
- [[coin price is the fairest objective function for asset futarchy]] — the broader argument for price as objective; memecoin case strengthens it with temporal clarity
- [[futarchy-governed-meme-coins-attract-speculative-capital-at-scale]] — 2026 empirical test of futarchy-governed meme coins
- [[futarchy-governed permissionless launches require brand separation to manage reputational liability because failed projects on a curated platform damage the platforms credibility]] — the reputational tradeoff the proposal identified
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — adoption barriers that memecoin use case potentially bypasses

Topics:
- [[_map]]
