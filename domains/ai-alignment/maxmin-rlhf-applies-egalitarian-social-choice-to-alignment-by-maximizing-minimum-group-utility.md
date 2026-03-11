---
type: claim
claim_type: empirical
confidence: experimental
tags:
  - ai-alignment
  - rlhf
  - social-choice-theory
  - fairness
source:
  - "[[2024-02-00-chakraborty-maxmin-rlhf]]"
---

MaxMin RLHF applies egalitarian social choice to alignment by maximizing minimum group utility.

Chakraborty et al. (2024) propose MaxMin RLHF, which explicitly incorporates Rawlsian maximin principles into reinforcement learning from human feedback:

**Core mechanism**:
1. **Group-specific reward models**: Train separate reward models for each preference group
2. **EM Algorithm for Reward Mixture**: Iteratively clusters humans based on preference compatibility (operates unsupervised without requiring pre-labeled group membership)
3. **Maximin optimization**: During RL training, optimize for max(min(R₁(y), R₂(y), ...)) where Rᵢ is the reward from group i

This directly implements the egalitarian social choice rule: improve outcomes for the worst-off group. Unlike utilitarian aggregation (averaging rewards), MaxMin creates incentives to satisfy minority preferences.

**Key theoretical connection**: MaxMin explicitly chooses one social choice rule (egalitarian/Rawlsian) rather than attempting to escape Arrow's impossibility theorem. It accepts that no aggregation method satisfies all desirable properties and makes a normative choice about which properties to prioritize.

**Scale limitations**: Validated on GPT-2 and Tulu2-7B (1-2 orders of magnitude smaller than frontier models). Behavior at GPT-4/Claude-3 scale remains unknown.

Related: [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]], [[maxmin-alignment-improves-minority-group-performance-without-compromising-majority-outcomes]], [[single-reward-rlhf-cannot-align-models-with-diverse-human-preferences]]