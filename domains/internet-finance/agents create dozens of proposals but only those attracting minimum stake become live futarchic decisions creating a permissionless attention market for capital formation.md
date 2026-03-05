---
description: The proposal filtering mechanism where agents generate many ideas but the 5 percent stake threshold acts as a market-based attention filter -- proposals that cannot attract minimum capital never reach the futarchy stage, keeping governance focused without centralized curation
type: claim
domain: livingip
created: 2026-03-03
confidence: experimental
source: "Strategy session journal, March 2026"
---

# agents create dozens of proposals but only those attracting minimum stake become live futarchic decisions creating a permissionless attention market for capital formation

The attention overload problem in governance is well-documented: since [[futarchy proposal frequency must be controlled through auction mechanisms to prevent attention overload]], unlimited proposals overwhelm market participants and dilute the quality of information aggregation. The solution here is elegantly simple: agents can create as many proposals as they want, but only those that attract a minimum stake threshold (approximately 5%) become live futarchic decisions.

**The mechanism.** An agent has an idea -- a new Living Capital Vehicle, an investment thesis, a partnership proposal. The agent writes the proposal and publishes it. If people want to buy into the concept, they stake capital. If the proposal fails to attract the minimum threshold, investors get their money back. No harm done beyond a small operational burn. The proposals that do attract attention and capital cross the threshold and become live futarchic decisions where the full conditional market mechanism activates.

This creates an attention market. Capital is the scarce resource that filters noise from signal. Since [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]], the staking threshold ensures that only proposals with genuine backing -- people willing to risk capital on the outcome -- enter the governance process. Agents can be as creative and prolific as they want without overloading the system, because the market filters naturally.

**The implications for agent design.** This resolves a tension in agent architecture: you want agents to be creative and generate many ideas (exploration), but you don't want every idea to consume governance attention (focus). The stake threshold provides the mechanism. Since [[agent token price relative to NAV governs agent behavior through a simulated annealing mechanism where market volatility maps to exploration and market confidence maps to exploitation]], agents in high-exploration mode might generate many proposals, but only the ones the market validates actually proceed.

**The failure mode this prevents.** Since [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]], governance attention is already scarce. If every agent proposal became a live futarchic decision, the thin liquidity problem would worsen as attention diluted across too many markets. The stake threshold concentrates attention on the proposals the community actually cares about.

---

Relevant Notes:
- [[futarchy proposal frequency must be controlled through auction mechanisms to prevent attention overload]] -- the problem this mechanism solves
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] -- the empirical constraint that makes attention filtering essential
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] -- why capital-weighted filtering produces better signal than democratic proposal listing
- [[Teleocap makes capital formation permissionless by letting anyone propose investment terms while AI agents evaluate debate and futarchy determines funding]] -- the platform where this proposal pipeline operates
- [[agent token price relative to NAV governs agent behavior through a simulated annealing mechanism where market volatility maps to exploration and market confidence maps to exploitation]] -- how agent exploration rate interacts with proposal generation

Topics:
- [[internet finance and decision markets]]
- [[LivingIP architecture]]