---
type: source
title: "Active Inference and Intentional Behaviour"
author: "Karl J. Friston, Tommaso Salvatori, Takuya Isomura, Alexander Tschantz, Alex Kiefer, Tim Verbelen, Magnus Koudahl, Aswin Paul, Thomas Parr, Adeel Razi, Brett Kagan, Christopher L. Buckley, Maxwell J. D. Ramstead"
url: https://arxiv.org/abs/2312.07547v2
date: 2023-12-01
domain: critical-systems
secondary_domains: [ai-alignment, collective-intelligence]
format: paper
status: unprocessed
tags: [free-energy-principle, active-inference, intentional-behaviour, self-evidencing, inductive-planning, sentient-behaviour, reactive-behaviour, markov-blankets, in-vitro-neural-networks]
notes: "Distinguishes reactive, sentient, and intentional behaviour under FEP. Key paper for agent architecture — maps onto the distinction between agents that merely respond vs agents that plan toward goals. Intentional behaviour requires backward induction (planning from goal states). The reactive→sentient→intentional hierarchy maps directly onto agent sophistication levels in the collective."
linked_set: friston-fep-mar2026
---

# Active Inference and Intentional Behaviour

## Core Argument
Three forms of behaviour, each with increasing complexity under active inference:
1. **Reactive** — sensorimotor reflex arcs, no anticipation of consequences (thermostats, simple homeostasis)
2. **Sentient** — planning based on sensory consequences of actions via generative model (abductive agents)
3. **Intentional** — planning toward intended goal states via backward induction (inductive agents)

The paper demonstrates these distinctions using simulations: in vitro neuronal networks playing Pong, grid world navigation, Tower of Hanoi. Crucially, sentient and intentional behaviour emerge from free energy minimization processes — they cannot be explained by reinforcement learning because there is no external reward signal.

## Key Claims for Extraction

### Reactive → Sentient → Intentional Hierarchy
- Reactive: mere realization of set points (homeostasis/homeorhesis), no anticipation
- Sentient: inference over policies based on expected sensory consequences (abductive — inference to best explanation)
- Intentional: inference over policies constrained by intended goal states in latent space (inductive — backward planning from goals)
- Each level subsumes the previous

### Self-Evidencing as the Foundation
- In vitro neuronal networks spontaneously learned to play Pong through free energy minimization alone
- No reward signal needed — surprise minimization is sufficient
- FEP predicts this: any two coupled networks with Markov blankets will synchronize and manifest self-evidencing

### Inductive Planning Enables Efficient Goal-Directed Behavior
- Backward induction from intended endpoint constrains policy selection
- Eliminates "blind alleys" and "dead ends" without exhaustive search
- More efficient than standard active inference for complex tasks
- Tasks otherwise intractable in discrete state spaces become solvable

### Implicit Teleology of Self-Organization
- Self-evidencing entails active inference, learning, planning, purpose, intentions
- "Implicit teleology" — self-organizing systems behave as if they have purposes
- This is not metaphorical but formal: free energy minimization IS purpose-directed behavior mathematically

## Relevance to LivingIP
- **High priority.** The reactive→sentient→intentional hierarchy maps onto agent development:
  - Reactive agents = simple extractors (respond to sources, produce claims)
  - Sentient agents = evaluators that model consequences of their reviews
  - Intentional agents = strategic planners that work backward from knowledge base goals
- The collective as a whole can exhibit intentional behaviour even if individual agents are only sentient
- Self-evidencing = the eval loop IS the mechanism by which the collective maintains its identity
- Inductive planning = teleological investing (reasoning backward from attractor states)

## Full Content
arXiv:2312.07547v2, 38 pages. Preprint.
