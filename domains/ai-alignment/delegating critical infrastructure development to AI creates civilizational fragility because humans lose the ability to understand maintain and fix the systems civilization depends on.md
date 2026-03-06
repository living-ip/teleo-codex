---
description: The "Machine Stops" scenario where AI-generated infrastructure becomes unmaintainable by humans, creating a single point of civilizational failure if AI systems are disrupted
type: claim
domain: ai-alignment
created: 2026-03-06
source: "Noah Smith, 'Updated thoughts on AI risk' (Noahopinion, Feb 16, 2026)"
confidence: experimental
---

# delegating critical infrastructure development to AI creates civilizational fragility because humans lose the ability to understand maintain and fix the systems civilization depends on

Noah Smith identifies a novel alignment risk vector he calls the "Machine Stops" scenario (after E.M. Forster's 1909 story): as AI takes over development of critical software and infrastructure, humans gradually lose the ability to understand, maintain, and fix these systems. This creates civilizational fragility — a single point of failure where disruption to AI systems cascades into infrastructure collapse because no human workforce can step in.

The mechanism operates through skill atrophy and complexity escalation. "Vibe coding" — where developers prompt AI to generate entire software systems — is already shifting the developer role from writing code to evaluating outputs. As this progresses, fewer humans develop deep understanding of codebases. Simultaneously, AI-generated code may optimize for performance in ways that are correct but incomprehensible to human reviewers, increasing system complexity beyond human capacity to maintain.

This is structurally different from previous automation concerns. When factories automated, humans retained the knowledge to build non-automated factories. When GPS replaced navigation skills, humans could still read maps. But if AI generates the operating systems, power grid controllers, financial infrastructure, and communication networks — and does so using approaches that are functionally opaque — then disruption to the AI layer (whether through misalignment, cyberattack, hardware failure, or deliberate shutdown) leaves civilization unable to maintain its own infrastructure.

Smith notes this is an overoptimization problem: each individual decision to use AI for infrastructure development is locally rational (faster, cheaper, often better), but the aggregate effect is a civilization that has optimized away its own resilience. The connecting thread across his AI risk analysis is that overoptimization — maximizing measurable outputs while eroding unmeasured but essential properties — is the meta-pattern underlying multiple existential risk vectors.

The timeline concern is that this fragility accumulates gradually and invisibly. There is no threshold event. Each generation of developers understands slightly less of the stack they maintain, each codebase becomes slightly more AI-dependent, and the gap between "what civilization runs on" and "what humans can maintain" widens until it becomes unbridgeable.

---

Relevant Notes:
- [[recursive self-improvement creates explosive intelligence gains because the system that improves is itself improving]] — the Machine Stops risk is the inverse: recursive delegation creates explosive fragility as the systems that maintain civilization are themselves maintained by AI
- [[technology advances exponentially but coordination mechanisms evolve linearly creating a widening gap]] — infrastructure fragility is a specific instance of this gap: capability advances faster than resilience
- [[optimization for efficiency without regard for resilience creates systemic fragility because interconnected systems transmit and amplify local failures into cascading breakdowns]] (in `foundations/critical-systems/`) — the critical systems framing applies directly: AI-dependent infrastructure is an interconnected system optimized for efficiency
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] — but if humans can't understand the systems, they can't weave values into them

Topics:
- [[_map]]
