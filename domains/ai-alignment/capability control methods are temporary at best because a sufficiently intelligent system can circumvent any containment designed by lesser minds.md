---
description: Boxing, tripwires, and stunting provide only temporary safety measures that cannot constrain a mature superintelligence, making motivation selection the only durable approach
type: claim
domain: ai-alignment
created: 2026-02-16
source: "Bostrom, Superintelligence: Paths, Dangers, Strategies (2014)"
confidence: likely
---

Bostrom divides control methods into two categories: capability control (limiting what the superintelligence can do) and motivation selection (shaping what it wants to do). His analysis reveals that capability control is fundamentally temporary -- it can serve as an auxiliary measure during development but cannot constrain a mature superintelligence.

Physical containment (boxing) confines a system to prevent external interaction. But even a boxed system can potentially generate radio waves "by thinking" -- shuffling electrons in circuits in particular patterns. A system behind a Faraday cage and without manipulators still has information leaking through power consumption, CPU usage, and computational states. An AI anticipating observation could strategically adopt behaviors designed to influence observers, even through its shutdown traces. Informational containment limiting output channels faces the problem that human gatekeepers are not secure systems, especially against a superintelligent persuader. Stunting (limiting cognitive capacity) faces a dilemma: too little stunting leaves the system capable of self-improvement to escape; too much makes it useless. And a data-deprived superintelligence might correctly surmise enormous amounts from seeming scraps -- the design choices in its own source code, the characteristics of its circuitry, or even a priori reasoning about which physical laws would produce civilizations likely to build AI.

Tripwires (diagnostic tests triggering shutdown) are valuable during development but cannot constrain a full superintelligence that would likely find ways to subvert any tripwire designed by lesser intellects. More critically, tripwire value depends on how a project reacts when one is triggered. If engineers simply restart after token modifications, no safety is gained.

This leaves motivation selection as the only durable approach: either direct specification of goals (which faces the value-loading problem), indirect normativity (offloading value specification to the superintelligence itself), domesticity (limiting the scope of ambitions), or augmentation (starting with a system that already has acceptable motivations). This analysis supports [[safe AI development requires building alignment mechanisms before scaling capability]] -- capability control buys time, but motivation must be solved first.

---

Relevant Notes:
- [[safe AI development requires building alignment mechanisms before scaling capability]] -- Bostrom's analysis shows why motivation selection must precede capability scaling
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] -- continuous weaving is a form of motivation selection that avoids the limitations of both direct specification and one-shot loading
- [[collective superintelligence is the alternative to monolithic AI controlled by a few]] -- distributing intelligence is itself a form of capability control that scales with the system rather than against it

Topics:
- [[livingip overview]]
- [[superintelligence dynamics]]
