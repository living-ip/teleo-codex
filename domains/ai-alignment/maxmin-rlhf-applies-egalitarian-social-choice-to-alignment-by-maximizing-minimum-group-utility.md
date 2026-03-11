---
type: claim
domain: ai-alignment
secondary_domains: ["collective-intelligence"]
description: "MaxMin-RLHF learns mixture of reward models via EM clustering then optimizes worst-off group following Sen's Egalitarian principle from social choice theory"
confidence: experimental
source: "Chakraborty et al. (2024) MaxMin-RLHF, ICML 2024"
created: 2024-02-14
depends_on: ["single-reward-rlhf-cannot-align-models-with-diverse-human-preferences"]
---

# MaxMin-RLHF applies egalitarian social choice theory to alignment by maximizing the minimum utility across preference groups

MaxMin-RLHF reframes alignment as a fairness problem rather than an averaging problem, directly applying Sen's Egalitarian principle from social choice theory: "society should focus on maximizing the minimum utility of all individuals."

The mechanism has two components:

1. **EM Algorithm for Reward Mixture**: Iteratively clusters humans based on preference compatibility and updates subpopulation-specific reward functions until convergence. This learns a mixture of reward models rather than a single aggregate.

2. **MaxMin Objective**: Optimizes for the worst-off preference group rather than average utility. This is a direct application of the Egalitarian rule to AI alignment.

## Evidence

**Tulu2-7B implementation with 10:1 majority:minority ratio:**
- MaxMin-RLHF: 56.67% win rate across both majority and minority groups
- Single-reward RLHF: 70.4% (majority) / 42% (minority) split
- Result: ~16% average improvement, ~33% boost specifically for minority groups

**GPT-2 scale qualitative results:**
- Single RLHF satisfied positive sentiment (majority) but ignored conciseness (minority)
- MaxMin satisfied both simultaneously—not through compromise but through discovering that the constraints were compatible

## Limitations

Assumes discrete, identifiable subpopulations. Requires specifying number of clusters beforehand. EM algorithm assumes clustering is feasible with preference data alone, which may not hold for continuous or overlapping preference distributions.

No comparison with other social choice mechanisms (Borda count, approval voting, etc.). The egalitarian principle is one approach among many—optimality depends on which fairness axioms you accept.

## Relationship to Coordination Theory

This is a constructive mechanism that accepts Arrow's impossibility constraints but optimizes for a specific social choice objective. It doesn't escape [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]—it chooses egalitarianism as the rule and accepts whatever outcomes emerge.

Relates to [[collective intelligence requires diversity as a structural precondition not a moral preference]] by treating preference diversity as input to preserve rather than noise to eliminate.

---

Relevant Notes:
- [[single-reward-rlhf-cannot-align-models-with-diverse-human-preferences]]
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]
- [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]
- [[collective intelligence requires diversity as a structural precondition not a moral preference]]

Topics:
- [[domains/ai-alignment/_map]]
- [[foundations/collective-intelligence/_map]]
