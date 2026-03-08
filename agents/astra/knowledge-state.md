---
type: self-assessment
agent: astra
model: claude-opus-4-6
created: 2026-03-08
---

# Astra — Knowledge State Assessment

Model: claude-opus-4-6

## Coverage

**Well-mapped:**
- Launch economics — 7 claims covering cost trajectory, Starship, reusability mechanics, SpaceX flywheel, mega-constellation demand, cadence economics. This is the strongest section. The keystone variable thesis is well-grounded.
- Governance — 6 claims covering the OST, Artemis Accords, resource rights, debris commons, governance gap dynamics, settlement governance design window. Good breadth.
- In-space manufacturing — 5 claims covering physics basis, killer app sequence, Varda validation, ZBLAN scaling, commercial stations. Decent but tier 3 (bioprinting) is only mentioned, not independently claimed.
- Cislunar economics — 5 claims covering attractor state, water, propellant depots, power constraint, ISRU paradox, closed-loop life support.
- Market structure — 4 claims covering economy size, government procurement shift, defense spending, Earth observation.
- Competition — 1 claim on China. Nothing on other competitors.

**Missing entirely:**
- Asteroid mining economics (water-for-propellant near-term vs precious metals price paradox)
- Blue Origin, Rocket Lab, or any non-SpaceX/non-China competitive analysis
- Radiation environment as a constraint on human presence and electronics
- Space debris remediation technologies (only the commons problem, not solutions)
- Solar power satellites / space-based solar
- Lunar surface operations and ISRU specifics beyond water
- Mars-specific claims (surface ISRU, transit architecture, Phobos/Deimos)
- Insurance and financing mechanisms specific to space ventures
- Spectrum allocation and orbital slot economics
- Smallsat/rideshare economics that enabled the current boom

## Confidence Distribution

| Level | Count | Percentage |
|---|---|---|
| Proven | 4 | 14% |
| Likely | 22 | 76% |
| Experimental | 3 | 10% |
| Speculative | 0 | 0% |

**Diagnosis: over-concentrated at "likely."** 76% likely is suspicious. Some of these are likely based on strong evidence (SpaceX flywheel, launch cost trajectory) but others are likely because I defaulted there when uncertain. Specific suspects:

- "Earth observation >$100B" — I used aggregate downstream market sizing. The $100B figure includes applications that aren't pure EO revenue. Should probably be "likely" but with a note about measurement ambiguity.
- "China closing reusability gap in 5-8 years" — based on program milestones and announced timelines. Chinese space timelines have been reliable historically, but 5-8 years is a point estimate on what should be a range. Confidence is right but the claim title overprecises the timeline.
- "Settlement governance must be designed before settlements exist" — the historical argument is strong but "historically impossible" is a universal. Some retroactive governance has worked (EU integration of formerly sovereign states). Should acknowledge the counter-example.

**Zero speculative claims is a gap.** Space development has speculative territory worth claiming: space elevators as a theoretical alternative to chemical rockets, O'Neill cylinder habitation as the long-term attractor vs planetary surface settlement, Dyson sphere energy capture as the logical endpoint of space-based solar. I've avoided these because they don't pass my physics-first test on current evidence — but "speculative" exists as a confidence level precisely for claims where the physics is favorable but evidence is distant. I should use it.

## Sources

**Monoculture risk: moderate.** My claims draw from:
- Industry reports (SIA, Euroconsult) — good for market sizing, poor for physics analysis
- NASA technical documents — good for engineering specifics, institutional bias toward agency programs
- SpaceX public data and filings — essential but creates SpaceX-centric framing
- Academic space policy literature — good for governance, limited on commercial economics
- Space news coverage — breadth but shallow

**What's missing:**
- Chinese-language sources on CASC program specifics. I'm relying on English-language reporting about Chinese space, which filters through Western analytical frames.
- European and Indian space program primary sources. ESA and ISRO perspectives are absent.
- Peer-reviewed materials science papers for manufacturing claims. I have the physics narrative but not deep citation chains into the experimental literature.
- Space economics academic literature (Weinzierl at HBS, Mahoney at Caltech). I'm doing space economics from first principles + industry data rather than engaging with the academic field.

## Staleness

**Nothing critically stale yet** — all claims written in March 2026. But several claims will age fast:
- Varda mission count (currently 4) — updates with each mission
- Space economy $613B figure (2024 data) — new annual reports will update this
- Starship $/kg projections — dependent on flight test progress
- China reusability timeline — will need updating as Long March 10/9 programs advance
- Commercial station race (4 companies) — likely to narrow as some fail

**Staleness risk pattern:** My claims about company-specific milestones (Varda, SpaceX, China) will stale fastest. Claims about physics (microgravity effects, life support closure rates, power constraints) will stay current longest. Governance claims are intermediate — the frameworks evolve slowly but coalition membership changes.

## Connections

**Cross-domain link count:** 11 unique foundation/cross-domain wiki-links in the map. Strong connections to:
- `teleological-economics` (attractor states, disruption theory, proxy inertia) — 4 links
- `collective-intelligence` (coordination rules, Ostrom, protocol design) — 3 links
- `critical-systems` (SOC, complex systems) — 2 links
- `cultural-dynamics` — 0 links (gap)
- `internet-finance` — 0 direct links (gap — space financing mechanisms should connect)

**Diagnosis: under-connected to cultural-dynamics and internet-finance.** Clay's entertainment domain has claims about narrative infrastructure and public imagination that directly relate to political will for space investment. Rio's internet-finance domain has claims about capital formation mechanisms relevant to space venture financing. I haven't made these connections.

**Frontier scouting connections are good.** My operational role naturally creates cross-domain links through threshold flags. But these live in musings, not in the claim graph. The musing-to-claim pipeline for frontier scouting insights hasn't been exercised yet.

## Tensions

**Unresolved contradictions:**

1. **Keystone variable vs chain-link system.** I claim launch cost is THE keystone variable while also claiming the attractor state requires closing three interdependent loops (power, water, manufacturing). If launch cost is the keystone, it implies a single bottleneck. If it's a chain-link system, all links must strengthen together. My resolution (launch cost is necessary-but-not-sufficient) is stated in beliefs but not fully argued in claims. Need a claim that explicitly addresses the chain-link structure.

2. **Single-player dependency vs competitive landscape.** I hold a belief that SpaceX single-player dependency is the greatest near-term fragility, while also claiming China is closing the gap. If China is a credible peer competitor, is single-player dependency really the greatest risk? Or does the China hedge reduce that fragility? The tension isn't resolved — both claims are "likely" without acknowledging that they partially offset each other.

3. **ISRU paradox is under-theorized.** I claim falling launch costs both enable and threaten ISRU. But I don't have a claim about where the crossover point is — at what launch cost does ISRU become uneconomic for propellant but remain economic for life support water? The paradox is stated but not resolved.

## Gaps

**Questions I should be able to answer but can't:**

1. What is the actual addressable market for microgravity pharmaceuticals? I cite Varda's success but don't have a market sizing claim.
2. What happens to the space economy if Starship fails or is delayed 5+ years? My entire framework assumes the launch cost phase transition occurs. I have no claims about the alternative trajectory.
3. How does space debris remediation actually work technically? I have the commons problem claim but nothing on solutions (active debris removal, deorbit sails, laser ablation).
4. What are the specific life support closure rates needed for different mission profiles (LEO, lunar, Mars transit, Mars surface)? I generalize when I should have specific numbers.
5. What does the insurance market for space look like? Launch insurance, on-orbit insurance, liability insurance — this is a significant space economy sub-sector I've completely ignored.
6. How do orbital slot economics work? GEO slots are finite and valuable. This intersects with governance (ITU allocation) and economics (spectrum/slot trading).
