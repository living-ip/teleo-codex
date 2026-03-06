---
type: claim
domain: internet-finance
description: "Applies auction theory's common-value vs private-value distinction to token launches, arguing they are hybrid auctions where the common-value component (project fundamentals) and private-value component (holder commitment, community contribution, holding duration) interact — and that standard auction results optimized for either pure case produce suboptimal outcomes in the hybrid"
confidence: experimental
source: "rio, derived from Milgrom & Weber (1982) on common vs private value auctions, Wilson (1977) on winner's curse, applied to token launch mechanisms"
created: 2026-03-07
secondary_domains: [mechanisms]
---

# Token launches are hybrid-value auctions where common-value price discovery and private-value community alignment require different mechanisms because auction theory optimized for one degrades the other

Standard auction theory distinguishes two polar cases. **Private-value auctions** (art, personal goods): each bidder knows their own valuation, and valuations are independent. **Common-value auctions** (oil rights, spectrum licenses): the asset has one true value that bidders estimate with noise, creating the winner's curse (Wilson 1977) — the winner tends to be the bidder who most overestimated value.

Token launches are neither. They are **hybrid-value auctions** with two interacting components:

**Common-value component:** Project fundamentals — team quality, product-market fit, treasury management, competitive position. All participants try to estimate the same underlying value. This creates classic common-value dynamics: information aggregation matters, the winner's curse applies, and mechanisms that reveal information (like descending-price auctions) improve outcomes.

**Private-value component:** Each holder's individual contribution to the ecosystem — how long they'll hold, whether they'll participate in governance, whether they'll build on the protocol, whether they'll evangelize. These valuations are genuinely private and differ across participants. A developer who will build tooling has different private value than a passive speculator, even if they agree on fundamentals.

**Why the hybrid matters for mechanism design.** Auction theory's canonical results optimize for one pole or the other:

- **Revenue-optimal auctions** (Myerson 1981) assume private values and maximize seller extraction. Applied to token launches, this means squeezing maximum price from each participant — exactly wrong when the goal is broad distribution and community building.
- **Information-aggregating auctions** (Milgrom & Weber 1982) address common values by designing for information revelation. Applied to token launches, this favors dutch auctions and batch auctions that discover the common-value component. But these mechanisms are blind to the private-value component — they can't distinguish a committed builder from a mercenary flipper.

**The interaction creates a specific failure mode.** When you optimize for common-value price discovery (dutch auction, batch auction), you correctly find the clearing price but allocate tokens indiscriminately — a bot and a future core contributor pay the same price, or the bot gets a better deal through sophisticated bidding. When you optimize for private-value community alignment (reputation gates, tiered access, vesting discounts), you reward the right participants but sacrifice price accuracy because the mechanism no longer aggregates common-value information efficiently.

**This is why the trilemma exists.** The [[token launch mechanisms face an impossible trilemma between shill-proofness community alignment and price discovery because optimizing for any two structurally undermines the third|launch mechanism trilemma]] is a consequence of the hybrid-value structure. Shill-proofness + price discovery = common-value optimization (ignoring private values). Community alignment = private-value optimization (potentially sacrificing common-value accuracy). No single mechanism handles both simultaneously because the auction theory results that govern each case conflict.

**The implication: separate the value components across mechanism layers.** If common-value and private-value optimization require different mechanisms, the solution is not a hybrid mechanism but a layered architecture — one layer for common-value price discovery (batch auction or dutch auction) and a separate layer for private-value community alignment (retroactive rewards, conviction bonuses, governance participation incentives). This separation is the theoretical basis for the layered launch architecture thesis.

---

Relevant Notes:
- [[token launch mechanisms face an impossible trilemma between shill-proofness community alignment and price discovery because optimizing for any two structurally undermines the third]] — the trilemma is a consequence of the hybrid-value structure argued here
- [[dutch-auction dynamic bonding curves solve the token launch pricing problem by combining descending price discovery with ascending supply curves eliminating the instantaneous arbitrage that has cost token deployers over 100 million dollars on Ethereum]] — Doppler optimizes for the common-value component, sacrificing private-value alignment
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] — information aggregation in common-value auctions works through the same mechanism as speculative markets
- [[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]] — futarchy handles the common-value governance layer; a separate private-value mechanism handles community alignment

Topics:
- [[internet finance and decision markets]]
