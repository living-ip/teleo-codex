---
type: claim
domain: ai-alignment
secondary_domains: [mechanisms]
description: "RLCHF variants aggregate evaluator rankings via social choice functions or model individual preferences with evaluator features before reward model training"
confidence: experimental
source: "Conitzer et al. 2024 proposing RLCHF as formalization of collective feedback aggregation"
created: 2024-12-19
depends_on: ["rlhf-is-implicit-social-choice-without-normative-scrutiny.md"]
challenged_by: []
---

# RLCHF aggregates collective human feedback through formal social welfare functions before training

Reinforcement Learning from Collective Human Feedback (RLCHF) formalizes the aggregation of diverse evaluator preferences using social choice theory before training the reward model, rather than implicitly aggregating through dataset construction or simple averaging.

Conitzer et al. (2024) propose two RLCHF variants:

**1. Aggregated rankings variant:**
- Multiple evaluators rank AI-generated responses
- Rankings are combined using a formal social welfare function (e.g., Borda Count, Ranked Pairs, Instant Runoff)
- The aggregated ranking is used to train a single reward model
- Social choice function is chosen explicitly based on normative criteria (e.g., independence of clones, Condorcet consistency)

**2. Features-based variant:**
- Individual preference models are trained that incorporate evaluator characteristics (demographics, expertise, context)
- Aggregation happens by modeling how preferences vary with evaluator features
- Enables generating predictions for evaluator populations not in the training set
- Supports conditional deployment: different aggregations for different use contexts

Both variants make the social choice mechanism explicit and subject to normative scrutiny, unlike standard RLHF which hides aggregation choices in data collection and preprocessing.

Key advantages:
- **Transparency**: The aggregation rule is visible and can be debated
- **Flexibility**: Different social welfare functions can be tested and compared
- **Representativeness**: Formal sampling methods replace convenience samples
- **Context-sensitivity**: Features-based variant can adapt to different user populations

This formalizes what Audrey Tang's RLCF (Reinforcement Learning from Collective Feedback) implements in practice, though Conitzer et al. do not cite Tang's work directly.

Open questions:
- How to select the appropriate social welfare function for a given deployment context
- Whether features-based models can capture value differences that don't correlate with measurable features
- Computational cost of training multiple preference models vs. single reward model

---

Relevant Notes:
- [[rlhf-is-implicit-social-choice-without-normative-scrutiny.md]]
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
- [[post-arrow-social-choice-mechanisms-work-by-weakening-independence-of-irrelevant-alternatives.md]]

Topics:
- [[domains/ai-alignment/_map]]
- [[core/mechanisms/_map]]
