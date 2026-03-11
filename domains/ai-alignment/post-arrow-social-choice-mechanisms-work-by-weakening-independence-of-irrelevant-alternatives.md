---
type: claim
domain: ai-alignment
secondary_domains: [mechanisms]
description: "Practical voting methods like Borda Count and Ranked Pairs avoid Arrow's impossibility by sacrificing IIA rather than claiming to overcome the theorem"
confidence: likely
source: "Conitzer et al. 2024, synthesizing 70+ years of post-Arrow social choice theory"
created: 2024-12-19
depends_on: []
challenged_by: []
---

# Post-Arrow social choice mechanisms work by weakening independence of irrelevant alternatives

Arrow's impossibility theorem proves that no ordinal preference aggregation method can simultaneously satisfy unrestricted domain, Pareto efficiency, independence of irrelevant alternatives (IIA), and non-dictatorship. Rather than claiming to overcome this theorem, post-Arrow social choice theory has developed practical mechanisms that work by deliberately weakening IIA.

Conitzer et al. (2024) explain the key insight: "For ordinal preference aggregation, in order to avoid dictatorships, oligarchies and vetoers, one must weaken IIA." This is not a workaround or a failure—it's the constructive path forward that 70+ years of social choice research has validated.

Practical voting methods that weaken IIA include:
- **Borda Count**: Ranks depend on full preference orderings, not just pairwise comparisons
- **Instant Runoff Voting (IRV)**: Elimination order depends on votes for candidates not in the final pair
- **Ranked Pairs**: Pairwise victories are locked in order of strength, creating path-dependence

These methods sacrifice IIA to gain other desirable properties:
- **Independence of clones**: Adding near-duplicate options doesn't arbitrarily shift outcomes (crucial when AI generates similar responses)
- **Condorcet consistency**: If a candidate beats all others pairwise, they win (Ranked Pairs)
- **Simplicity and transparency**: Voters can understand how their input affects outcomes

The practical implication for AI alignment: Rather than treating Arrow's theorem as a barrier to collective preference aggregation, alignment researchers should adopt the mechanisms that social choice theory has already developed and tested. The field has spent decades understanding the tradeoffs between different relaxations of Arrow's conditions.

RLHF systems that use simple averaging or plurality voting are implicitly choosing a social choice mechanism—usually a poor one. Explicitly adopting well-studied methods like Ranked Pairs or Borda Count would improve both the technical quality and normative legitimacy of preference aggregation.

---

Relevant Notes:
- [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]
- [[rlhf-is-implicit-social-choice-without-normative-scrutiny.md]]

Topics:
- [[domains/ai-alignment/_map]]
- [[core/mechanisms/_map]]
