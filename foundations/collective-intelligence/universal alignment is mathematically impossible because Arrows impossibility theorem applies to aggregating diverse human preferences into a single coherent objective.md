---
description: Social choice theory formally proves that no voting rule can simultaneously satisfy fairness respect for individual preferences and alignment with diverse values without dictatorial outcomes
type: claim
domain: livingip
created: 2026-02-17
source: "Conitzer et al, Social Choice for AI Alignment (arXiv 2404.10271, ICML 2024); Mishra, AI Alignment and Social Choice (arXiv 2310.16048, October 2023)"
confidence: likely
tradition: "social choice theory, formal methods"
---

# universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective

Arrow's impossibility theorem (1951) proves that no ranked voting system can simultaneously satisfy a set of minimal fairness criteria -- unrestricted domain, non-dictatorship, Pareto efficiency, and independence of irrelevant alternatives. Conitzer et al (ICML 2024, co-authored with Stuart Russell) argue that social choice theory, not statistics, is the correct framework for handling diverse human feedback in alignment. Current RLHF treats feedback aggregation as a statistical estimation problem, but it is fundamentally a social choice problem where strategic voting, fairness criteria, and impossibility results apply.

Mishra (2023) applies Arrow's and Sen's impossibility theorems directly, proving that no democratic voting rule can simultaneously satisfy fairness, respect for individual preferences, and alignment with diverse user values without imposing a dictatorial outcome. The conclusion: universal AI alignment using RLHF is mathematically impossible. The policy implication is to mandate transparent voting rules and focus on narrow alignment to specific user groups rather than universal alignment.

This has devastating implications for the "align once, deploy everywhere" paradigm. Since [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]], Arrow's theorem provides the formal mathematical proof for why that assumption cannot work in principle. It is not a limitation of current techniques but an impossibility result about the structure of the problem itself.

The way out is not better aggregation but a different architecture entirely. Since [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]], continuous context-sensitive alignment sidesteps the impossibility by never attempting a single universal aggregation. Since [[collective intelligence requires diversity as a structural precondition not a moral preference]], collective architectures can preserve preference diversity structurally rather than trying to compress it into one objective function.

---

Relevant Notes:
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- Arrow's theorem is the formal proof that this single-function approach is mathematically impossible
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] -- continuous weaving sidesteps the impossibility by not attempting universal aggregation
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] -- collective architecture preserves the diversity that aggregation destroys
- [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]] -- Arrow's theorem adds a formal impossibility to the practical intractability
- [[democracies fail at information aggregation not coordination because voters are rationally irrational about policy beliefs]] -- both face the fundamental challenge of aggregating diverse preferences into collective decisions
- [[super co-alignment proposes that human and AI values should be co-shaped through iterative alignment rather than specified in advance]] -- iterative co-shaping avoids the one-shot aggregation that Arrow proves impossible
- [[inability to choose produces bad strategy because strategy requires saying no to some constituencies and group preferences cycle without an agenda-setter]] -- Rumelt applies Arrow's impossibility theorem to corporate strategy: without an agenda-setter, group preferences cycle rather than converging, producing the same structural impossibility in organizational strategy that formal social choice theory proves for AI alignment

Topics:
- [[livingip overview]]
- [[coordination mechanisms]]
- [[domains/ai-alignment/_map]]