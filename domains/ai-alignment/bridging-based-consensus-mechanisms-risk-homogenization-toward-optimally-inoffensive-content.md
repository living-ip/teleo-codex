---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "Reward models trained on bridging scores create selection pressure for content that minimizes offense across constituencies, which may eliminate valuable dissent and produce bland consensus"
confidence: experimental
source: "Li et al. 2025, identified as risk in RLCF Community Notes implementation"
created: 2025-06-30
challenged_by: ["pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state"]
---

# Bridging-based consensus mechanisms risk homogenization toward optimally inoffensive content

When AI systems are trained to maximize bridging scores—content that receives approval from users with opposing viewpoints—they face selection pressure to produce "optimally inoffensive" outputs that avoid any position strong enough to alienate any constituency. This creates a homogenization risk where valuable dissent, novel perspectives, and necessary challenges to consensus are systematically filtered out.

The RLCF implementation in Community Notes acknowledges this explicitly: reward models trained to predict intercept scores (the bridging component) may learn to craft persuasive but substantively empty notes that achieve cross-partisan approval through strategic blandness rather than genuine insight.

This risk is structurally similar to Arrow's impossibility theorem predictions: any aggregation mechanism that seeks consensus across diverse preferences will either suppress minority views, become manipulable, or converge toward lowest-common-denominator outputs. The "optimally inoffensive" failure mode is the natural consequence of optimizing for agreement in the presence of genuine value disagreement.

Li et al. attempt to mitigate this through stylistic novelty rewards, but this addresses surface diversity (how things are said) rather than substantive diversity (what positions are taken). The fundamental tension remains unresolved: bridging algorithms may be structurally incapable of preserving pluralism while selecting for consensus.

## Evidence
- Li et al. (2025) explicitly identify "optimally inoffensive" content as a risk in RLCF training
- The reward model optimizes for predicted intercept scores, creating direct selection pressure for cross-partisan approval
- Stylistic novelty rewards are proposed as mitigation but do not address substantive homogenization
- No empirical measurement of whether deployed Community Notes exhibit this pattern

## Limitations
- Stylistic diversity rewards may prove sufficient to prevent homogenization in practice
- Human raters may reject bland consensus in favor of substantive positions, providing corrective signal
- The risk is theoretical; no empirical evidence yet demonstrates this failure mode in deployment
- Single source; requires independent validation

---

Relevant Notes:
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]
- [[persistent irreducible disagreement]]
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]

Topics:
- [[domains/ai-alignment/_map]]
- [[foundations/collective-intelligence/_map]]
