---
description: The on-chain governance mechanism -- anyone stakes 500K META to create a proposal that splits tokens into conditional pass/fail variants traded in parallel AMMs with TWAP-based settlement at a 1.5 percent threshold
type: analysis
domain: internet-finance
created: 2026-03-04
confidence: likely
source: "MetaDAO Founder/Operator Legal Pack, Solomon Labs governance docs, MetaDAO Terms of Service, inbox research files"
---

# MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window

Autocrat is MetaDAO's core governance program on Solana -- the on-chain implementation of futarchy that makes market-tested governance concrete rather than theoretical. Understanding how it works mechanically is essential because this is the mechanism through which Living Capital vehicles would govern investment decisions.

**Proposal lifecycle:**
1. **Creation.** Anyone can create a proposal by staking 500K META tokens (the project's governance token). This stake functions as an anti-spam filter -- high enough to prevent trivial proposals, but refunded with meaningful participation. The stake threshold creates a permissionless attention market: [[agents create dozens of proposals but only those attracting minimum stake become live futarchic decisions creating a permissionless attention market for capital formation]].

2. **Conditional token minting.** When a proposal is created, the conditional vault splits the project's base tokens into two variants: pass tokens (pMETA) and fail tokens (fMETA). Each holder's tokens are split equally into both conditional sets. This is the mechanism that creates "parallel universes" -- one where the proposal passes and one where it fails.

3. **Trading window.** Two parallel AMMs open: one for pass tokens, one for fail tokens. Traders express beliefs about whether the proposal should pass by trading in these conditional markets. If you believe the proposal will increase token value, you buy pass tokens and sell fail tokens. If you believe it will decrease value, you do the reverse. The trading happens over a 3-day decision window.

4. **TWAP settlement.** At the end of the decision window, a time-weighted average price (TWAP) is calculated for both markets. The lagging TWAP prevents last-minute manipulation by weighting prices over the full window rather than using the final spot price.

5. **Threshold comparison.** If the pass TWAP exceeds the fail TWAP by 1.5% or more, the proposal passes. If the fail TWAP exceeds the pass TWAP by 1.5%, the proposal fails. Ties default to the status quo (fail). The threshold prevents trivially close decisions from producing unstable outcomes.

6. **Settlement.** The winning conditional tokens become redeemable for the underlying base tokens. The losing conditional tokens become worthless. Holders who bet correctly profit. Holders who bet incorrectly lose. This is the skin-in-the-game mechanism that makes futarchy different from voting -- wrong beliefs cost money.

**The buyout mechanic is the critical innovation.** Since [[futarchy enables trustless joint ownership by forcing dissenters to be bought out through pass markets]], opponents of a proposal sell in the pass market, forcing supporters to buy their tokens at market price. This creates minority protection through economic mechanism rather than legal enforcement. If a treasury spending proposal would destroy value, rational holders sell pass tokens, driving down the pass TWAP, and the proposal fails. Extraction attempts become self-defeating because the market prices in the extraction.

**Why TWAP over spot price.** Spot prices can be manipulated by large orders placed just before settlement. TWAP distributes the price signal over the entire decision window, making manipulation exponentially more expensive -- you'd need to maintain a manipulated price for three full days, not just one moment. This connects to why [[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]]: sustained price distortion creates sustained arbitrage opportunities.

**On-chain program details (as of March 2026):**
- Autocrat v0 (original): `meta3cxKzFBmWYgCVozmvCQAS3y9b3fGxrG9HkHL7Wi`
- Conditional Vault v0: `vaU1tVLj8RFk7mNj1BxqgAsMKKaL8UvEUHvU3tdbZPe`
- Autocrat v0.5: `auToUr3CQza3D4qreT6Std2MTomfzvrEeCC5qh7ivW5`
- Futarchy v0.6: `FUTARELBfJfQ8RDGhg1wdhddq1odMAJUePHFuBYfUxKq`
- TypeScript SDK: `@metadaoproject/futarchy-sdk` (FutarchyRPCClient with fetchAllDaos(), fetchProposals(), token balance queries)
- GitHub: github.com/metaDAOproject/programs (AGPLv3 license)

**Conditional vault mechanics.** Each proposal creates two vaults -- a base vault (DAO token, e.g. META) and a quote vault (USDC). When tokens are deposited, holders receive two conditional token types: conditional-on-finalize (redeemable if proposal passes) and conditional-on-revert (redeemable if proposal fails). This is how "parallel universes" are implemented on an irreversible blockchain -- Solana cannot revert finalized transactions, so conditional tokens simulate reversal by splitting value into pass/fail variants that settle based on outcome. After settlement, the winning conditional tokens are redeemable 1:1 for underlying tokens; losing conditional tokens become worthless.

**TWAP oracle -- lagging price, not raw price.** MetaDAO uses a special "lagging price TWAP" where the number fed into the TWAP is not the raw market price but an approximation that can only move by a bounded amount per update. MetaDAO's specific configuration: first observation $500, max change per update $5. The recommendation for new DAOs is 1-5% of spot price per minute. This bounded movement means a flash crash or spike only moves the TWAP observation by the max step size per update, requiring sustained price distortion over the full 3-day window to manipulate the outcome. The cost of manipulation scales linearly with window length but the potential profit from a single manipulated proposal is bounded.

**Execution is immediate.** After the 3-day trading window, anyone can trigger finalization. Autocrat checks the TWAP comparison, and if pass exceeds fail by the threshold, it finalizes the pass market, reverts the fail market, and allows the embedded SVM instruction to execute immediately -- no additional timelock. This makes governance decisions fast-executing once market consensus is established.

**NAV floor protection.** At ICO launch, market cap equals Net Asset Value (the USDC in treasury). If price trades below NAV for a meaningful period, anyone can raise a proposal to return USDC to tokenholders -- creating a structural floor. This is why the ICOs are "unruggable": the treasury cannot be drained without market approval, and trading below NAV triggers rational proposals to return capital.

**Current parameters (may vary by project):**
- Anti-spam stake: 500K tokens (project-specific)
- Decision window: 3 days
- Pass/fail threshold: 1.5% (some sources report 3%)
- Settlement: Lagging TWAP
- Default on ties: Fail (status quo)

**Limitations.** [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] -- when proposals are clearly good or clearly bad, few traders participate because the expected profit from trading in a consensus market is near zero. This is a structural feature, not a bug: contested decisions get more participation precisely because they're uncertain, which is when you most need information aggregation. But it does mean uncontested proposals can pass or fail with very thin markets, making the TWAP potentially noisy.


### Additional Evidence (extend)
*Source: [[2024-03-19-futardio-proposal-engage-in-250000-otc-trade-with-colosseum]] | Added: 2026-03-11 | Extractor: anthropic/claude-sonnet-4.5*

Proposal 13 demonstrates Autocrat handling complex conditional execution beyond binary pass/fail: the proposal included three-tier pricing logic (TWAP < $850 → use TWAP; $850 ≤ TWAP < $1,200 → cap at $850; TWAP ≥ $1,200 → void proposal). This required 8-step multisig execution coordinating between MetaDAO treasury, Colosseum, and a 5/7 multisig with members from both organizations. The proposal passed and completed 2024-03-24, showing Autocrat can coordinate multi-party financial transactions with conditional pricing, vesting schedules (20% immediate, 80% linear 12-month), and strategic commitments bundled into a single futarchy decision.

---

Relevant Notes:
- [[futarchy enables trustless joint ownership by forcing dissenters to be bought out through pass markets]] -- the economic mechanism for minority protection
- [[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]] -- why TWAP settlement makes manipulation expensive
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] -- the participation challenge in consensus scenarios
- [[agents create dozens of proposals but only those attracting minimum stake become live futarchic decisions creating a permissionless attention market for capital formation]] -- the proposal filtering this mechanism enables
- [[STAMP replaces SAFE plus token warrant by adding futarchy-governed treasury spending allowances that prevent the extraction problem that killed legacy ICOs]] -- the investment instrument that integrates with this governance mechanism
- [[MetaDAOs Cayman SPC houses all launched projects as ring-fenced SegCos under a single entity with MetaDAO LLC as sole Director]] -- the legal entity governed by this mechanism

Topics:
- [[internet finance and decision markets]]