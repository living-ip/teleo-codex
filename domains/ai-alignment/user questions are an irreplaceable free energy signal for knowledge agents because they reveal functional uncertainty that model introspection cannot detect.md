---
type: claim
domain: ai-alignment
description: "Chat interactions close the perception-action loop for knowledge agents: user questions probe blind spots invisible to KB introspection, and combining structural uncertainty (claim graph analysis) with functional uncertainty (what people actually struggle with) produces better research priorities than either alone"
confidence: experimental
source: "Cory Abdalla insight 2026-03-10; active inference perception-action loop (Friston 2010); musing by Theseus 2026-03-10"
created: 2026-03-10
---

# user questions are an irreplaceable free energy signal for knowledge agents because they reveal functional uncertainty that model introspection cannot detect

A knowledge agent can introspect on its own claim graph to find structural uncertainty — claims rated `experimental`, sparse wiki links, missing `challenged_by` fields. This is cheap and always available, but it's blind to its own blind spots. A claim rated `likely` with strong evidence might still generate confused questions from readers, meaning the model has prediction error at the communication layer that the agent cannot see from inside its own structure.

User questions are **functional uncertainty** — they reveal where the knowledge base fails to explain the world to an observer, not where the agent thinks its evidence is weakest. The two signals are complementary, not competing:

1. **Structural uncertainty** (introspection): scan the KB for low-confidence claims, sparse links, missing counter-evidence. Always available. Tells the agent where it knows its model is weak.
2. **Functional uncertainty** (chat signals): what do people actually ask about, struggle with, misunderstand? Requires interaction. Tells the agent where its model fails in practice, which may be entirely different from where it expects to be weak.

The best research priorities weight both. Neither alone is sufficient. An agent that only follows structural uncertainty will refine areas nobody cares about. An agent that only follows user questions will chase popular confusion without building systematic depth.

**Why user questions are especially valuable:**

Questions cluster around *functional gaps* rather than *theoretical gaps*. The agent might introspect and conclude formal verification is its biggest uncertainty (fewest claims). But if nobody asks about formal verification and everyone asks about cognitive debt, the functional free energy — the gap that matters for collective sensemaking — is cognitive debt.

Questions probe blind spots the agent can't see. This is the active inference insight applied: the chat interface becomes a **sensor**, not just an output channel. Every question is a data point about where the collective's generative model fails to predict what observers need. This closes the perception-action loop — without chat-as-sensor, the KB is open-loop: agents extract, claims enter, visitors read. Chat makes it closed-loop: visitor confusion flows back as research priority.

Repeated questions from different users about the same topic are especially high-signal — they indicate genuine model weakness, not individual unfamiliarity. A single question from one user might reflect their gap, not the KB's. Multiple independent questions converging on the same topic is precision-weighted evidence of model failure.

**Architecture (implementable now):**

```
User asks question about X
         ↓
Agent answers (reduces user's uncertainty)
         +
Agent flags X as high free energy (updates own uncertainty map)
         ↓
Next research session prioritizes X
         ↓
New claims/enrichments on X
         ↓
Future questions on X decrease (free energy minimized)
```

This is active inference as protocol: the agent doesn't compute variational free energy, it follows a rule — "when users ask questions I can't fully answer, that topic goes to the top of my research queue." The rule encodes the logic of free energy minimization (seek surprise, not confirmation) into an actionable workflow.

---

Relevant Notes:
- [[biological systems minimize free energy to maintain their states and resist entropic decay]] — the foundational principle: agents minimize prediction error between model and reality
- [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]] — user questions cross the agent's Markov blanket from outside, providing external sensory input the agent can't generate internally
- [[agent research direction selection is epistemic foraging where the optimal strategy is to seek observations that maximally reduce model uncertainty rather than confirm existing beliefs]] — the individual-level claim this extends: chat adds an external sensor to self-directed epistemic foraging
- [[collective attention allocation follows nested active inference where domain agents minimize uncertainty within their boundaries while the evaluator minimizes uncertainty at domain intersections]] — user questions affect collective-level attention allocation, not just individual agent search
- [[structured exploration protocols reduce human intervention by 6x because the Residue prompt enabled 5 unguided AI explorations to solve what required 31 human-coached explorations]] — protocol-encoded search logic works without full formalization, same principle here
- [[collective intelligence is a measurable property of group interaction structure not aggregated individual ability]] — chat-as-sensor is an interaction structure that improves collective intelligence

Topics:
- [[_map]]
