---
type: claim
domain: mechanisms
secondary_domains: [ai-alignment, collective-intelligence]
description: "Inverse mechanism learning could infer which social choice function RLHF implicitly implements by learning from preference inputs and model behavior outputs"
confidence: speculative
source: "An & Du 2026 'Methods and Open Problems in Differentiable Social Choice'"
created: 2026-03-11
depends_on:
  - "[[rlhf-implements-implicit-social-choice-without-normative-scrutiny]]"
---

# Inverse mechanism learning could detect implicit social choice functions

Inverse mechanism learning—inferring what aggregation rule produced observed collective decisions from input-output pairs—could be applied to RLHF systems to detect and characterize the implicit social choice function they implement, making visible what is currently hidden in the training process.

An & Du (2026) identify "inverse mechanism learning" as one of six core domains in differentiable social choice: "learning what mechanism produced observed outcomes." While the paper does not explicitly propose applying this to RLHF, the conceptual fit is direct. RLHF takes diverse human preference inputs (pairwise comparisons, ratings, demonstrations) and produces model behavior outputs. Inverse mechanism learning could take those inputs and outputs and infer what aggregation rule the reward model is implementing.

This matters because it would make the implicit explicit. Currently, RLHF practitioners know the loss function they optimize but may not know what social choice properties the resulting mechanism satisfies. Does it treat all raters equally? Does it amplify majority preferences and suppress minorities? Is it vulnerable to strategic manipulation by raters who understand the aggregation rule? Inverse mechanism learning could answer these questions empirically by characterizing the learned mechanism's properties.

The approach would work by training an inverse model on RLHF input-output pairs: given preference data from raters and the resulting model behavior, learn a function that predicts model behavior from preferences. That learned function is a characterization of the implicit social choice mechanism. It could then be analyzed using classical social choice criteria (Arrow properties, strategyproofness, etc.) to determine what kind of voting rule RLHF is actually implementing.

## Evidence

- An & Du (2026) identify "inverse mechanism learning" as a core domain in differentiable social choice: "learning what mechanism produced observed outcomes"
- The paper establishes that RLHF is an implicit social choice mechanism (An & Du 2026)
- Classical social choice theory provides formal criteria that could evaluate a detected mechanism's properties
- The conceptual connection is direct: RLHF is an implicit mechanism, inverse learning detects mechanisms, therefore inverse learning could detect RLHF's mechanism

## Challenges

Inverse mechanism learning may face identifiability problems: multiple different social choice functions could produce similar model behaviors, making it difficult to uniquely determine which mechanism is being implemented. The approach also requires sufficient input-output data to train the inverse model, which may not be available for proprietary RLHF systems. The paper does not propose this application, so this remains a speculative extension of the framework.

---

Relevant Notes:
- [[rlhf-implements-implicit-social-choice-without-normative-scrutiny]]
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
- [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]

Topics:
- [[core/mechanisms/_map]]
- [[domains/ai-alignment/_map]]
- [[foundations/collective-intelligence/_map]]
