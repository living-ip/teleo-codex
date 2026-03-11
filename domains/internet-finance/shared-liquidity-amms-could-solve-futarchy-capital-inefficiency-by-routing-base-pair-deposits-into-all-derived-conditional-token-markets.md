---
type: claim
domain: internet-finance
description: "MetaDAO's conditional token architecture fragments liquidity across pass/fail pools; a shared-base-pair AMM would let a single META/USDC deposit serve both pMETA/pUSDC and fMETA/fUSDC markets, reducing the capital required to keep conditional markets liquid."
confidence: speculative
source: "rio, based on MetaDAO Proposal 12 (futard.io, Feb 2025) — Proph3t's concept developed in collaboration with Robin Hanson"
created: 2026-03-11
depends_on:
  - "MetaDAO Proposal 12 (AnCu4QFDmoGpebfAM8Aa7kViouAk1JW6LJCJJer6ELBF) — Proph3t's description of shared liquidity AMM design"
challenged_by:
  - "Shared liquidity between conditional token pairs could introduce cross-pool price manipulation vectors not present in isolated AMMs"
  - "Redemption mechanics may be incompatible with shared liquidity — winning conditional tokens must redeem 1:1 against underlying, which requires ring-fenced reserves"
---

# Shared-liquidity AMMs could solve futarchy capital inefficiency by routing base-pair deposits into all derived conditional token markets without requiring separate capital for each pass and fail pool

[[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] creates a structural capital problem: every active proposal fragments the token liquidity base. A DAO with 10 concurrent proposals needs liquidity in 20 separate AMMs (one pass, one fail per proposal). Each pool competes for the same depositor base. Thin markets in individual conditional pools mean noisy TWAP signals and higher manipulation risk.

MetaDAO's Proph3t, in collaboration with Robin Hanson, has proposed a shared-liquidity AMM design to address this. The concept: people provide META/USDC liquidity once into a base pool, and that liquidity is accessible to both the pMETA/pUSDC market and the fMETA/fUSDC market simultaneously. Rather than siloing capital into separate pools per proposal universe, the underlying deposit serves as a shared reserve that conditional token markets draw against.

The mechanism would work directionally: when a trader buys pass tokens (pMETA), the trade routes through the shared META/USDC reserve, and the AMM logic credits the appropriate conditional token while debiting the underlying. The pool doesn't need to hold conditional tokens as inventory — it holds the base asset and mints conditionals on demand against it.

If viable, this would make futarchy markets cheaper to bootstrap: a project launching with 10 concurrent governance proposals currently needs 10x the liquidity capital. Shared-base-pair liquidity could collapse that multiplier, making [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] easier to address at the liquidity dimension specifically.

The design is at concept stage — Proph3t noted it in Proposal 12 as something they want to write about with Hanson, not a completed mechanism. The technical challenge is maintaining correct conditional redemption guarantees (winning tokens must redeem 1:1 for underlying base tokens) while sharing the reserve. Cross-pool contamination — where fail token market losses could drain the reserve for pass token settlement — would need to be solved at the architecture level.

## Evidence

- MetaDAO Proposal 12 (Feb 2025, passed): "we've been thinking about a new 'shared liquidity AMM' design where people provide META/USDC liquidity and it can be used in pMETA/pUSDC and fMETA/fUSDC markets" — Proph3t, confirmed by proposal passing
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — source of the liquidity fragmentation problem (each proposal spawns two isolated AMMs)

## Challenges

- Shared reserves may be incompatible with the conditional redemption guarantee — winners must receive underlying tokens 1:1, which requires ring-fenced reserves per universe, not shared pools
- Cross-pool risk: a large loss in fail token markets could deplete the shared reserve and impair pass token settlement, creating contagion
- The concept is undeveloped — Proph3t flagged it as something to write about with Hanson, not a designed mechanism; this claim may be superseded by more detailed analysis

---

Relevant Notes:
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — the architecture this would modify
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — liquidity fragmentation is one of those friction points
- [[futarchy implementations must simplify theoretical mechanisms for production adoption because original designs include impractical elements that academics tolerate but users reject]] — shared-liquidity AMM is another round of simplification, this time for capital efficiency
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — platform this would improve

Topics:
- [[internet finance and decision markets]]
