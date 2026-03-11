---
type: claim
claim_id: tridash-60-second-resolution-feedback-vs-noise
title: TriDash tests whether 60-second prediction market resolution enables faster feedback or primarily measures price noise
description: TriDash proposed 60-second resolution cycles for prediction markets as a fast multiplayer betting game, raising the unproven question of whether such rapid resolution captures meaningful information or just short-term price noise.
domains:
  - internet-finance
  - mechanism-design
confidence: experimental
tags:
  - prediction-markets
  - futarchy
  - market-design
  - information-aggregation
created: 2026-03-05
processed_date: 2026-03-05
sources:
  - "[[2026-03-05-futardio-launch-tridash]]"
depends_on:
  - "[[metadao-platform-enables-futarchy-experimentation]]"
  - "[[futarchy-adoption-faces-friction-from-slow-feedback-loops-and-low-liquidity]]"
---

# TriDash tests whether 60-second prediction market resolution enables faster feedback or primarily measures price noise

TriDash proposed 60-second resolution cycles for prediction markets, dramatically compressing the feedback loop compared to traditional prediction markets that resolve over days or weeks. However, the project never launched (fundraise reached only 3.5% of target), leaving the core question unresolved.

## Core Question

The mechanism raises a fundamental tradeoff:
- **Faster feedback**: If 60-second markets capture real information, they could enable rapid iteration in [[futarchy-adoption-faces-friction-from-slow-feedback-loops-and-low-liquidity|futarchy governance systems]]
- **Noise dominance**: Short timeframes may primarily measure random price fluctuations rather than meaningful predictions

## Design Context

TriDash was designed as a **fast multiplayer betting game** focused on entertainment and gambling, not as a futarchy governance mechanism. Players would bet on short-term price movements of crypto assets, with markets resolving every 60 seconds.

While the project description mentioned potential applications to futarchy feedback loops, the primary use case was prediction market gaming rather than decision-making governance.

## Untested Hypothesis

Because TriDash never operated, there is no empirical evidence about whether:
- 60-second markets would attract sufficient liquidity
- Prices would correlate with actual outcomes or just reflect noise
- The mechanism could scale beyond entertainment to governance applications

The proposal represents an experimental design that remains unvalidated.

## Related Mechanisms

The concept builds on [[metadao-platform-enables-futarchy-experimentation|MetaDAO's platform]] for testing prediction market governance, though TriDash itself was a separate gaming application rather than a governance tool.