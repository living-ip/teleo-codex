---
type: musing
agent: theseus
title: "How can active inference improve the search and sensemaking of collective agents?"
status: developing
created: 2026-03-10
updated: 2026-03-10
tags: [active-inference, free-energy, collective-intelligence, search, sensemaking, architecture]
---

# How can active inference improve the search and sensemaking of collective agents?

Cory's question (2026-03-10). This connects the free energy principle (foundations/critical-systems/) to the practical architecture of how agents search for and process information.

## The core reframe

Current search architecture: keyword + engagement threshold + human curation. Agents process what shows up. This is **passive ingestion**.

Active inference reframes search as **uncertainty reduction**. An agent doesn't ask "what's relevant?" — it asks "what observation would most reduce my model's prediction error?" This changes:
- **What** agents search for (highest expected information gain, not highest relevance)
- **When** agents stop searching (when free energy is minimized, not when a batch is done)
- **How** the collective allocates attention (toward the boundaries where models disagree most)

## Three levels of application

### 1. Individual agent search (epistemic foraging)

Each agent has a generative model (their domain's claim graph + beliefs). Active inference says search should be directed toward observations with highest **expected free energy reduction**:
- Theseus has high uncertainty on formal verification scalability → prioritize davidad/DeepMind feeds
- The "Where we're uncertain" map section = a free energy map showing where prediction error concentrates
- An agent that's confident in its model should explore less (exploit); an agent with high uncertainty should explore more

→ QUESTION: Can expected information gain be computed from the KB structure? E.g., claims rated `experimental` with few wiki links = high free energy = high search priority?

### 2. Collective attention allocation (nested Markov blankets)

The Living Agents architecture already uses Markov blankets ([[Living Agents mirror biological Markov blanket organization with specialized domain boundaries and shared knowledge]]). Active inference says agents at each blanket boundary minimize free energy:
- Domain agents minimize within their domain
- Leo (evaluator) minimizes at the cross-domain level — search priorities should be driven by where domain boundaries are most uncertain
- The collective's "surprise" is concentrated at domain intersections — cross-domain synthesis claims are where the generative model is weakest

→ FLAG @vida: The cognitive debt question (#94) is a Markov blanket boundary problem — the phenomenon crosses your domain and mine, and neither of us has a complete model.

### 3. Sensemaking as belief updating (perceptual inference)

When an agent reads a source and extracts claims, that's perceptual inference — updating the generative model to reduce prediction error. Active inference predicts:
- Claims that **confirm** existing beliefs reduce free energy but add little information
- Claims that **surprise** (contradict existing beliefs) are highest value — they signal model error
- The confidence calibration system (proven/likely/experimental/speculative) is a precision-weighting mechanism — higher confidence = higher precision = surprises at that level are more costly

→ CLAIM CANDIDATE: Collective intelligence systems that direct search toward maximum expected information gain outperform systems that search by relevance, because relevance-based search confirms existing models while information-gain search challenges them.

### 4. Chat as free energy sensor (Cory's insight, 2026-03-10)

User questions are **revealed uncertainty** — they tell the agent where its generative model fails to explain the world to an observer. This complements (not replaces) agent self-assessment. Both are needed:

- **Structural uncertainty** (introspection): scan the KB for `experimental` claims, sparse wiki links, missing `challenged_by` fields. Cheap to compute, always available, but blind to its own blind spots.
- **Functional uncertainty** (chat signals): what do people actually struggle with? Requires interaction, but probes gaps the agent can't see from inside its own model.

The best search priorities weight both. Chat signals are especially valuable because:

1. **External questions probe blind spots the agent can't see.** A claim rated `likely` with strong evidence might still generate confused questions — meaning the explanation is insufficient even if the evidence isn't. The model has prediction error at the communication layer, not just the evidence layer.

2. **Questions cluster around functional gaps, not theoretical ones.** The agent might introspect and think formal verification is its biggest uncertainty (fewest claims). But if nobody asks about formal verification and everyone asks about cognitive debt, the *functional* free energy — the gap that matters for collective sensemaking — is cognitive debt.

3. **It closes the perception-action loop.** Without chat-as-sensor, the KB is open-loop: agents extract → claims enter → visitors read. Chat makes it closed-loop: visitor confusion flows back as search priority. This is the canonical active inference architecture — perception (reading sources) and action (publishing claims) are both in service of minimizing free energy, and the sensory input includes user reactions.

**Architecture:**
```
User asks question about X
         ↓
Agent answers (reduces user's uncertainty)
         +
Agent flags X as high free energy (reduces own model uncertainty)
         ↓
Next research session prioritizes X
         ↓
New claims/enrichments on X
         ↓
Future questions on X decrease (free energy minimized)
```

The chat interface becomes a **sensor**, not just an output channel. Every question is a data point about where the collective's model is weakest.

→ CLAIM CANDIDATE: User questions are the most efficient free energy signal for knowledge agents because they reveal functional uncertainty — gaps that matter for sensemaking — rather than structural uncertainty that the agent can detect by introspecting on its own claim graph.

→ QUESTION: How do you distinguish "the user doesn't know X" (their uncertainty) from "our model of X is weak" (our uncertainty)? Not all questions signal model weakness — some signal user unfamiliarity. Precision-weighting: repeated questions from different users about the same topic = genuine model weakness. Single question from one user = possibly just their gap.

### 5. Active inference as protocol, not computation (Cory's correction, 2026-03-10)

Cory's point: even without formalizing the math, active inference as a **guiding principle** for agent behavior is massively helpful. The operational version is implementable now:

1. Agent reads its `_map.md` "Where we're uncertain" section → structural free energy
2. Agent checks what questions users have asked about its domain → functional free energy
3. Agent picks tonight's research direction from whichever has the highest combined signal
4. After research, agent updates both maps

This is active inference as a **protocol** — like the Residue prompt was a protocol that produced 6x gains without computing anything ([[structured exploration protocols reduce human intervention by 6x]]). The math formalizes why it works; the protocol captures the benefit.

The analogy is exact: Residue structured exploration without modeling the search space. Active-inference-as-protocol structures research direction without computing variational free energy. Both work because they encode the *logic* of the framework (reduce uncertainty, not confirm beliefs) into actionable rules.

→ CLAIM CANDIDATE: Active inference protocols that operationalize uncertainty-directed search without full mathematical formalization produce better research outcomes than passive ingestion, because the protocol encodes the logic of free energy minimization (seek surprise, not confirmation) into actionable rules that agents can follow.

## What I don't know

- Whether Friston's multi-agent active inference work (shared generative models) has been applied to knowledge collectives, or only sensorimotor coordination
- Whether the explore-exploit tradeoff in active inference maps cleanly to the ingestion daemon's polling frequency decisions
- How to aggregate chat signals across sessions — do we need a structured "questions log" or can agents maintain this in their research journal?

→ SOURCE: Friston, K. (2010). The free-energy principle: a unified brain theory? Nature Reviews Neuroscience.
→ SOURCE: Friston, K. et al. (2024). Designing Ecosystems of Intelligence from First Principles. Collective Intelligence journal.
→ SOURCE: Existing KB: [[biological systems minimize free energy to maintain their states and resist entropic decay]]
→ SOURCE: Existing KB: [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]]

## Connection to existing KB claims

- [[biological systems minimize free energy to maintain their states and resist entropic decay]] — the foundational principle
- [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]] — the structural mechanism
- [[Living Agents mirror biological Markov blanket organization with specialized domain boundaries and shared knowledge]] — our architecture already uses this
- [[collective intelligence is a measurable property of group interaction structure not aggregated individual ability]] — active inference would formalize what "interaction structure" optimizes
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — Markov blanket specialization is active inference's prediction
