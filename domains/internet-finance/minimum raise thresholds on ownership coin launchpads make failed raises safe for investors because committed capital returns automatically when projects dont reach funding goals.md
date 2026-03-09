---
type: claim
domain: internet-finance
description: "Hurupay ICO on MetaDAO failed to reach minimum threshold and all funds returned automatically — a positive failure proving the investor protection mechanism works without human intervention"
confidence: likely
source: "rio — MetaDAO ecosystem evidence (Hurupay ICO, March 2026)"
created: 2026-03-09
depends_on:
  - "futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent"
  - "ownership coins primary value proposition is investor protection not governance quality because anti-rug enforcement through market-governed liquidation creates credible exit guarantees that no amount of decision optimization can match"
---

# Minimum raise thresholds on ownership coin launchpads make failed raises safe for investors because committed capital returns automatically when projects don't reach funding goals

The standard ICO failure mode is total loss — projects raise capital, fail to deliver, and investors have no recourse. Ownership coin launchpads with minimum raise thresholds invert this: if a project doesn't attract enough capital to meet its threshold, all committed funds return to depositors automatically. No governance vote, no discretionary decision, no legal process. The mechanism just works.

Hurupay's ICO on MetaDAO demonstrated this in March 2026. The project didn't reach its minimum raise threshold. All committed capital returned to depositors automatically. No funds were lost. The failure was quiet, clean, and safe — exactly the opposite of a traditional ICO failure where investors would be stuck with illiquid tokens in a failing project.

This is the second layer of investor protection in the ownership coin model: [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] handles the case where a project *succeeds* at raising but *fails* at delivering. Minimum raise thresholds handle the simpler case: projects that can't even attract sufficient capital never get the chance to misallocate it.

The combination creates a protection stack: threshold gates prevent underfunded launches, liquidation gates prevent funded-but-failing projects from retaining capital. Both are automated, both are trustless, and both are enforced by mechanism design rather than legal process.

## Challenges

The threshold only protects against insufficient demand. Projects that raise above threshold can still underperform — that's where the liquidation mechanism takes over. The two mechanisms are complementary, not individually sufficient.

Minimum thresholds can also be gamed: projects could artificially commit capital to themselves to cross the threshold. This requires Sybil resistance or stake-verification mechanisms not yet documented in the MetaDAO implementation.

---

Relevant Notes:
- [[ownership coins primary value proposition is investor protection not governance quality because anti-rug enforcement through market-governed liquidation creates credible exit guarantees that no amount of decision optimization can match]] — the primary value prop this mechanism supports
- [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — the complementary mechanism for post-raise failures
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — the platform implementing both mechanisms

Topics:
- [[internet finance and decision markets]]
