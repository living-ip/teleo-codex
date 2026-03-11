---
type: source
processed_date: 2026-02-15
source: An %FEEDBACK% Du (2026), "Differentiable Social Choice"
---

# An %FEEDBACK% Du (2026) - Differentiable Social Choice

## Summary
Paper on learning social choice mechanisms via gradient descent. Shows that classical impossibility theorems become continuous optimization tradeoffs when mechanisms are differentiable. Develops inverse mechanism learning to recover implicit social choice functions from observed behavior.

## Key Contributions
1. Differentiable implementations of voting rules and auction mechanisms
2. Empirical demonstration that Gibbard-Satterthwaite and Arrow impossibilities become soft tradeoffs
3. Inverse mechanism learning framework
4. Applications to mechanism design in continuous spaces

## Claims Extracted
- [[rlhf-implements-implicit-social-choice-without-normative-scrutiny]]
- [[impossibility-results-become-optimization-tradeoffs-in-learned-mechanisms]]
- [[inverse-mechanism-learning-could-detect-implicit-social-choice-functions]] (speculative application not in paper)

## Enrichments
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] - confirms via differentiable social choice framing
- [[rlhf-and-dpo-fail-to-aggregate-diverse-preferences-into-single-reward-function]] - confirms via social choice lens on reward modeling

## Notes
- Flagged for Rio: differentiable auctions overlap with mechanism design domain
- Connection to inverse reinforcement learning literature
- Does not propose RLHF auditing application explicitly