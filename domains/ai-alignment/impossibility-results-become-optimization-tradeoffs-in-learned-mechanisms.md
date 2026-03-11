---
type: claim
domain: mechanisms
secondary_domains: [ai-alignment, collective-intelligence]
description: "Arrow's theorem and similar impossibility results reappear as optimization constraints when mechanisms are learned from data rather than analytically designed"
confidence: likely
source: "An & Du 2026 'Methods and Open Problems in Differentiable Social Choice'"
created: 2026-03-11
depends_on:
  - "[[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]"
---

# Impossibility results become optimization tradeoffs in learned mechanisms

Classical impossibility theorems in social choice and mechanism design—like Arrow's theorem proving no voting rule can satisfy all desirable properties simultaneously—reappear as optimization constraints and objective trade-offs when mechanisms are learned through differentiable models rather than analytically designed.

An & Du (2026) observe that "classical impossibility results reappear as objectives, constraints, and optimization trade-offs when mechanisms are learned rather than designed." This represents a fundamental shift in how impossibility results function. In classical mechanism design, Arrow's theorem is a brick wall: you cannot have a voting rule that is simultaneously non-dictatorial, Pareto efficient, and independent of irrelevant alternatives. The theorem proves this is impossible, full stop.

But in differentiable social choice, impossibility results become navigable trade-offs. You can formulate a loss function that includes terms for each desirable property (non-dictatorship, Pareto efficiency, IIA) and learn a mechanism that optimizes the weighted combination. The mechanism won't satisfy all properties perfectly—Arrow's theorem still holds—but it can navigate the trade-off space, achieving partial satisfaction of multiple properties rather than being blocked entirely.

This matters because it transforms impossibility from a barrier into a design space. Instead of asking "which property should we sacrifice?" (the classical approach), differentiable mechanisms ask "what weighted combination of properties best serves our goals?" and learn mechanisms that optimize that combination. The impossibility result constrains the achievable region but doesn't prevent exploration of the Pareto frontier.

The paper identifies this as a core insight across all six domains surveyed: differentiable economics navigates auction impossibility results, neural social choice navigates voting impossibility results, and AI alignment navigates preference aggregation impossibility results. In each case, learning-based approaches convert "you cannot have X" into "here is the optimal trade-off between X and Y given your priorities."

## Evidence

- An & Du (2026) explicitly state: "classical impossibility results reappear as objectives, constraints, and optimization trade-offs when mechanisms are learned rather than designed"
- The paper surveys six domains (differentiable economics, neural social choice, AI alignment, participatory budgeting, liquid democracy, inverse mechanism learning) where this pattern recurs
- Arrow's theorem, Gibbard-Satterthwaite, and other impossibility results are referenced as constraints in the optimization formulations presented across these domains

## Challenges

Learned mechanisms that navigate impossibility trade-offs may be less interpretable than analytically designed mechanisms, making it harder to verify that they satisfy desired properties or to explain their behavior to stakeholders. The optimization may also be sensitive to how properties are weighted in the loss function, introducing new degrees of freedom that require normative choices about which properties matter most.

---

Relevant Notes:
- [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]]
- [[AI alignment is a coordination problem not a technical problem]]

Topics:
- [[core/mechanisms/_map]]
- [[domains/ai-alignment/_map]]
- [[foundations/collective-intelligence/_map]]
