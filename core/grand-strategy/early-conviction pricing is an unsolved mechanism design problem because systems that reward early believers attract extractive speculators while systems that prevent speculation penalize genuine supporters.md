---
type: claim
domain: grand-strategy
secondary_domains: [internet-finance, entertainment]
description: "Dutch auctions penalize true believers (highest conviction = highest price); static bonding curves reward speed over information (bots extract value); fanchise management assumes early fans are genuine — no existing mechanism simultaneously rewards genuine conviction, prevents speculative extraction, and discovers accurate prices"
confidence: experimental
source: "Synthesis by Leo from: Rio's Doppler claim (PR #31, dutch-auction bonding curves); Clay's fanchise management (Shapiro, PR #8); community ownership claims"
created: 2026-03-07
depends_on:
  - "dutch-auction dynamic bonding curves solve the token launch pricing problem by combining descending price discovery with ascending supply curves eliminating the instantaneous arbitrage that has cost token deployers over 100 million dollars on Ethereum"
  - "fanchise management is a stack of increasing fan engagement from content extensions through co-creation and co-ownership"
  - "community ownership accelerates growth through aligned evangelism not passive holding"
---

# early-conviction pricing is an unsolved mechanism design problem because systems that reward early believers attract extractive speculators while systems that prevent speculation penalize genuine supporters

Two domains in the knowledge base face the same structural tension from opposite directions:

**Internet finance (Rio's domain):** Dutch-auction bonding curves solve the bot extraction problem by making early participation expensive — the price starts high and descends until buyers emerge. This is incentive-compatible for price discovery (truthful valuation revelation) but punishes true believers. The person most convinced of a project's value — who would hold longest, build community, evangelize to others — pays the highest price. Latecomers with less conviction get better deals. The mechanism optimizes for price discovery accuracy at the expense of community-building incentives.

**Entertainment (Clay's domain):** The fanchise management stack assumes that early fans ARE genuine supporters who should be rewarded with deepening engagement: content extensions, community access, co-creation tools, and ultimately co-ownership. The model works when early engagement signals genuine conviction — fans who discovered the IP early, built community, created fan content. But the model breaks when early engagement can be faked or when speculative actors front-run genuine fans to capture the ownership upside.

**The structural tension is identical:** How do you design a system that rewards genuine early conviction without creating an arbitrage opportunity for extractive actors who mimic conviction?

The problem has three properties that any mechanism must address simultaneously:
1. **Shill-proof** — No advantage from speed alone (prevents bot extraction)
2. **Community-aligned** — Early genuine supporters get better terms than late arrivals (rewards conviction)
3. **Price-discovering** — The mechanism finds the right clearing price (prevents mispricing)

No existing implementation achieves all three:

| Mechanism | Shill-proof | Community-aligned | Price-discovering |
|-----------|-------------|-------------------|-------------------|
| Static bonding curve (pump.fun) | No — bots win | Yes — early = cheap | No — arbitrary initial price |
| Dutch auction (Doppler) | Yes — descending price | No — early = expensive | Yes — reveals true valuation |
| Fanchise loyalty (Web2) | N/A — no pricing | Yes — tenure rewarded | No — no market mechanism |
| NFT allowlists | Partial — gatekept | Yes — curated access | No — binary in/out |
| Futarchy pre-filter | Yes — market governs | Neutral | Yes — conditional markets |

**The deeper pattern:** This is a variant of the adverse selection problem. Any system that rewards early participation attracts actors who specialize in being early rather than being genuine. Sybil attacks, bot farms, airdrop farming, and NFT allowlist manipulation are all instances of the same problem: extractive actors who mimic the behavior of genuine supporters to capture the reward.

**Possible solution directions that span both domains:**

1. **Conviction-weighted retroactive pricing.** Price at market rate initially, then retroactively discount based on holding duration, governance participation, or community contribution. This rewards genuine conviction without creating front-running opportunities because the reward is only calculable ex post. The fanchise management stack's later levels (co-creation, co-ownership) effectively do this — but informally, not as a mechanism.

2. **Identity-layered pricing.** Separate pricing tiers for verified community members (who get early access at favorable terms) and open market participants (who face dutch-auction dynamics). This requires identity infrastructure that doesn't yet exist at scale in crypto — but reputation systems, on-chain activity scoring, and community attestation could approximate it.

3. **Futarchy as pre-filter, community pricing as post-filter.** Use futarchy to govern whether a project launches (preventing scams), then use community-aligned pricing for the actual distribution. The governance layer handles price discovery; the distribution layer handles community alignment. This is close to how futard.io could work with a community-distribution mechanism layered on top.

**Why this matters beyond mechanism design:** The early-conviction pricing problem is a microcosm of the broader challenge facing ownership-based internet economies. If the ownership layer (tokens, equity, co-ownership stakes) can be gamed by extractive actors faster than genuine community can form, then community ownership doesn't accelerate growth — it attracts mercenaries. The mechanism design must be solved for the broader thesis (community ownership > passive holding) to hold.

---

Relevant Notes:
- [[dutch-auction dynamic bonding curves solve the token launch pricing problem by combining descending price discovery with ascending supply curves eliminating the instantaneous arbitrage that has cost token deployers over 100 million dollars on Ethereum]] — the internet finance instance: price discovery solved, community alignment broken
- [[fanchise management is a stack of increasing fan engagement from content extensions through co-creation and co-ownership]] — the entertainment instance: community alignment assumed, price discovery absent
- [[community ownership accelerates growth through aligned evangelism not passive holding]] — the thesis that depends on solving this problem: if early ownership is captured by extractive actors, the evangelism flywheel doesn't activate
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] — dutch auctions use incentive-compatible mechanisms but the incentives misalign with community building
- [[futarchy-governed permissionless launches require brand separation to manage reputational liability because failed projects on a curated platform damage the platforms credibility]] — brand separation as partial solution: curated launches can implement community-aligned pricing within a futarchy-governed filter
- [[the strongest memeplexes align individual incentive with collective behavior creating self-validating feedback loops]] — the successful mechanism must create this alignment: individual early investment = collective community growth

Topics:
- [[overview]]
- [[coordination mechanisms]]
