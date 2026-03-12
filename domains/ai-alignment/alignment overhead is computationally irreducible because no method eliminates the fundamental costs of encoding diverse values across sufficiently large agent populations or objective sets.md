---
type: claim
domain: ai-alignment
description: "A No-Free-Lunch result for alignment: when either the number of agents (N) or candidate objectives (M) becomes sufficiently large, computational alignment costs are irreducible regardless of method sophistication"
confidence: experimental
source: "Multiple authors, 'Intrinsic Barriers and Practical Pathways for Human-AI Alignment: An Agreement-Based Complexity Analysis' (arXiv:2502.05934, AAAI 2026 oral)"
created: 2026-03-12
secondary_domains: [collective-intelligence]
depends_on: []
challenged_by: []
---

# alignment overhead is computationally irreducible because no method eliminates the fundamental costs of encoding diverse values across sufficiently large agent populations or objective sets

The paper formalizes AI alignment as a multi-objective optimization problem: N agents must reach approximate agreement across M candidate objectives with specified probability. The central finding is that when either M (number of objectives) or N (number of agents) becomes sufficiently large, "no amount of computational power or rationality can avoid intrinsic alignment overheads."

This is a No-Free-Lunch theorem for alignment. The argument differs structurally from Bostrom's value-loading problem (see [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]]), which argues that human values have hidden complexity making practical specification difficult. The agreement-based complexity result makes a stronger formal claim: even if values could be perfectly specified, the computational cost of reaching approximate agreement across large agent populations with large objective sets is irreducible. No clever algorithm escapes it because the cost is in the agreement structure, not the encoding.

The implication is that alignment research cannot resolve the fundamental difficulty by finding a better method. At sufficient scale — large N or large M — the costs are intrinsic to the problem geometry, not artifacts of current approaches. This frames alignment as having hard computational limits analogous to NP-hardness: no polynomial-time solution exists for the general case regardless of engineering ingenuity.

For practical alignment work, this shifts the question from "how do we solve alignment completely?" to "how do we make alignment costs tractable at the scale we need?" The same paper identifies two answers: (1) consensus-driven objective reduction — shrink M by identifying the consensus subset; (2) safety-critical slices — concentrate oversight resources on high-stakes regions rather than attempting uniform coverage. Both approaches accept the irreducibility and route around it rather than trying to eliminate it.

The result also has implications for governance. If alignment overhead is irreducible, then scaling AI capability without scaling alignment investment proportionally is guaranteed to widen the safety gap. The overhead is not a temporary engineering burden to be optimized away.

## Challenges

The formalization models alignment as an agreement problem, which may not capture all relevant alignment failure modes (e.g., misalignment that arises within a single agent with a single objective, or deceptive alignment that doesn't involve multi-objective disagreement). The irreducibility result may apply narrowly to the multi-agent, multi-objective setting the paper formalizes.

---

Relevant Notes:
- [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]] — Bostrom's informal intractability argument; this note provides the formal complexity-theoretic proof from a different angle (agreement costs vs. specification complexity)
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] — pluralistic approaches are the practical response to computational irreducibility: accept diverse values rather than trying to encode them all
- [[some disagreements are permanently irreducible because they stem from genuine value differences not information gaps and systems must map rather than eliminate them]] — same structural insight from a social choice angle: irreducibility as a feature to navigate, not a bug to fix

Topics:
- [[_map]]
