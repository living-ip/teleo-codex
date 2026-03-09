---
type: claim
domain: internet-finance
description: "MetaDAO co-founder compensation of 2% supply per $1B FDV milestone up to 10% at $5B exemplifies a hedge-proof alignment mechanism — unlike time-based vesting which Felipe Montealegre demonstrated is neutralizable through short-selling"
confidence: experimental
source: "rio — synthesis of metanallok co-founder compensation structure and TheiaResearch hedgeability analysis (March 2026)"
created: 2026-03-09
depends_on:
  - "time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked"
  - "token economics replacing management fees and carried interest creates natural meritocracy in investment governance"
---

# Purely performance-based founder compensation tied to protocol-value milestones cannot be hedged unlike time-based vesting because milestone conditions are binary and non-tradeable

[[Time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]]. If a founder's tokens vest over 4 years, they can short-sell equivalent positions to neutralize exposure from day one while appearing locked. The alignment mechanism is theatrical — it looks like skin-in-the-game but provides none.

Milestone-based compensation eliminates this attack. MetaDAO's co-founder structure allocates 2% of META supply per $1B FDV increase, up to 10% at $5B FDV. The tokens don't exist until the milestone is reached — there's nothing to hedge against because the asset hasn't been created. You can't short-sell tokens you haven't earned, and you can't hedge a binary event (FDV crosses threshold or it doesn't) with a continuous position.

This creates genuine alignment: the only way founders earn compensation is by driving protocol value above specific thresholds. No time passage triggers unlock. No cliff creates a dump incentive. The compensation function is a step function of protocol success, not a linear function of time.

The mechanism maps to [[token economics replacing management fees and carried interest creates natural meritocracy in investment governance]]. Traditional fund managers earn 2% annually regardless of performance. Milestone-based compensation pays zero unless specific value is created. The incentive topology is structurally different.

## Challenges

Milestone thresholds can be gamed through temporary price manipulation — inflate FDV past the threshold, earn tokens, then let price return. TWAP-based measurement over longer windows mitigates this, but the attack surface exists.

FDV milestones at $1B increments create binary incentives that may not align with continuous value creation. Founders have strong incentive near thresholds and weak incentive far from them. A continuous performance function (proportional to FDV) might produce smoother alignment.

The "can't be hedged" claim assumes no derivative markets exist for the milestone event itself. In theory, prediction markets on "META reaches $1B FDV by date X" would create hedging instruments. As futarchy ecosystems mature, this may become possible.

---

Relevant Notes:
- [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]] — the problem this solves
- [[token economics replacing management fees and carried interest creates natural meritocracy in investment governance]] — the broader pattern
- [[coin price is the fairest objective function for asset futarchy]] — the objective function this compensation targets

Topics:
- [[internet finance and decision markets]]
