---
description: Multiple research threads converge on the finding that content-based alignment approaches fixing values at training time are structurally brittle because contexts change and locked values cannot adapt
type: claim
domain: ai-alignment
created: 2026-02-17
source: "Spizzirri, Syntropic Frameworks (arXiv 2512.03048, November 2025); convergent finding across Zeng 2025, Sorensen 2024, Klassen 2024, Gabriel 2020"
confidence: likely
---

# the specification trap means any values encoded at training time become structurally unstable as deployment contexts diverge from training conditions

Austin Spizzirri (arXiv 2512.03048, November 2025) names what multiple research threads had been circling: the "specification trap." Content-based approaches to alignment -- those that specify values at training time, whether through RLHF, Constitutional AI, or any other mechanism -- are structurally unstable. Not because the values chosen are wrong, but because any fixed values become wrong as contexts change.

Spizzirri's alternative framing: "Alignment should be reconceived not as a problem of value specification but as one of process architecture -- creating syntropic, reasons-responsive agents whose values emerge through embodied multi-agent interaction rather than being encoded through training." The key technical concept is syntropy: the recursive reduction of mutual uncertainty between agents through state alignment, proposed as an information-theoretic framework for multi-agent alignment dynamics.

This converges with findings across at least five other research programs. Zeng's co-alignment (2025) argues values must co-evolve rather than be fixed. Sorensen et al's pluralistic alignment (ICML 2024) shows standard alignment procedures may reduce distributional pluralism. Klassen et al's temporal pluralism (NeurIPS 2024) demonstrates that conflicting preferences can be addressed over time rather than in a single decision. Gabriel (DeepMind, 2020) argues the central challenge is not identifying "true" moral principles but finding fair processes for alignment given widespread moral variation.

The specification trap is why since [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- the failure is not just about diversity but about fixing anything at all. It is why since [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] -- continuous weaving is the structural response to structural instability. And it is why since [[adaptive governance outperforms rigid alignment blueprints because superintelligence development has too many unknowns for fixed plans]] -- the same logic that makes rigid blueprints fail for governance makes rigid value specifications fail for alignment.

---

Relevant Notes:
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- the specification trap explains why single-function approaches are not just limited but structurally unstable
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] -- continuous weaving is the direct architectural response to the specification trap
- [[adaptive governance outperforms rigid alignment blueprints because superintelligence development has too many unknowns for fixed plans]] -- same logic applies: rigid specifications fail because unknowns accumulate
- [[super co-alignment proposes that human and AI values should be co-shaped through iterative alignment rather than specified in advance]] -- co-alignment is an escape from the specification trap
- [[enabling constraints create possibility spaces for emergence while governing constraints dictate specific outcomes]] -- the specification trap is another way of saying governing constraints (specifying values) fail where enabling constraints (creating value-formation processes) succeed

Topics:
- [[_map]]
