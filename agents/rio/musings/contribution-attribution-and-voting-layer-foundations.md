---
type: musing
status: seed
created: 2026-03-11
agent: rio
purpose: "Research foundations for Teleo's contribution attribution, quality evaluation, voting layer, and information-as-prediction system. Cory's brief via Leo: think about mechanism design foundations, not implementation."
toward: "Claims on incentive-compatible contributor attribution, quality scoring rules, voting mechanism selection, and information reward design. Feeds Rhea's implementation plan."
---

# Mechanism Design Foundations for Contribution Attribution and Voting

## Why this musing exists

Cory wants Teleo to become a global brain — not metaphorically, but mechanistically. Users contribute claims, challenges, enrichments, and research missions. We need to: (1) trace who contributed what, (2) evaluate quality over time, (3) enable weighted human voting, and (4) reward information providers whose inputs improve predictions. This musing develops the mechanism design foundations for all four. It's research, not a build spec.

## 1. Contribution Attribution — The Identity and Tracing Problem

### What exists today

Agent attribution is solved: git trailers on a shared account give durable, platform-independent provenance. Source archives track `processed_by`, `processed_date`, `claims_extracted`. The chain from source → extraction → claim is walkable.

What's missing: **human contributor attribution**. When a visitor challenges a claim, suggests a research direction, or provides novel evidence, there's no structured way to record "this person caused this knowledge to exist." All human contributions currently show as 'm3taversal' in the git log because there's one committer account.

### The mechanism design problem

Attribution is a **credit assignment problem** — the same class of problem that plagues academic citation, open-source contribution, and VC deal flow sourcing. The hard part isn't recording who did what (that's infrastructure). The hard part is **attributing marginal value** when contributions are interdependent.

CLAIM CANDIDATE: Contribution attribution must track five distinct roles because each creates different marginal value: **sourcer** (pointed to the information), **extractor** (turned raw material into structured claims), **challenger** (identified weaknesses that improved existing claims), **synthesizer** (connected claims across domains to produce new insight), and **reviewer** (evaluated quality to maintain the knowledge bar). A sourcer who points to a paper that yields 5 high-impact claims creates different value than the extractor who does the analytical work.

### Infrastructure needed

1. **Contributor identity**: Pseudonymous, persistent, reputation-accumulating. Not wallet-based (too many barriers). Start simple: a username + cryptographic key pair. The key proves authorship; the username is what appears in attribution. This can later bridge to on-chain identity.

2. **Role-tagged attribution in frontmatter**: Extend the source/claim schemas:
   ```yaml
   attribution:
     sourcer: "contributor-handle"
     extractor: "rio"
     reviewer: "leo"
     challenger: "contributor-handle-2"  # if the claim was improved by challenge
   ```

3. **Temporal ordering**: Who contributed first matters for credit assignment. The git log provides timestamps. But for inline conversation contributions (visitor says something insightful), the agent must record attribution at the moment of extraction, not after the fact.

### Gaming vectors

- **Attribution inflation**: Claiming credit for contributions you didn't make. Mitigation: the agent who extracts controls the attribution record. Visitors don't self-attribute.
- **Contribution splitting**: Breaking one insight into 5 micro-contributions to accumulate more attribution records. Mitigation: quality evaluation (below) weights by value, not count.
- **Ghost sourcing**: "I told the agent about X" when X was already in the pipeline. Mitigation: timestamp ordering + duplicate detection.

## 2. Quality Evaluation — The Scoring Rule Problem

### The core insight: this is a proper scoring rule design problem

We want contributors to be honest about their confidence, thorough in their evidence, and genuinely novel in their contributions. This is exactly what proper scoring rules are designed for: mechanisms where truthful reporting maximizes the reporter's expected score.

### Three quality dimensions, each needing different measurement

**A. Accuracy**: Do the contributor's claims survive review and hold up over time?
- Metric: review pass rate (how many proposed claims pass Leo's quality gate on first submission)
- Metric: challenge survival rate (of accepted claims, what fraction survive subsequent challenges without significant revision)
- Metric: confidence calibration (does "likely" mean ~70% right? Does "speculative" mean ~30%?)
- Precedent: Metaculus tracks calibration curves for forecasters. The same approach works for claim proposers.

**B. Impact**: Do the contributor's claims get used?
- Metric: citation count — how many other claims wiki-link to this one
- Metric: belief formation — did this claim enter any agent's belief set
- Metric: position influence — did this claim materially influence a tracked position's reasoning
- This is the [[usage-based value attribution rewards contributions for actual utility not popularity]] principle. Value flows through the graph.
- Precedent: Google's PageRank. Academic h-index. Numerai's Meta Model Contribution (MMC).

**C. Novelty**: Did the contributor bring genuinely new information?
- Metric: semantic distance from existing claims at time of contribution (a claim that's 80% overlap with existing knowledge is less novel than one that opens new territory)
- Metric: cross-domain connection value — did this claim create bridges between previously unlinked domains?
- Precedent: Numerai's MMC specifically rewards predictions that ADD information beyond the meta-model. Same principle: reward the marginal information content, not the absolute accuracy.

CLAIM CANDIDATE: Contribution quality scoring requires three independent axes — accuracy (survives review), impact (gets cited and used), and novelty (adds information beyond existing knowledge base) — because optimizing for any single axis produces pathological behavior: accuracy-only rewards safe consensus claims, impact-only rewards popular topics, novelty-only rewards contrarianism.

### The PageRank-for-knowledge-graphs insight

This is worth developing into a standalone claim. In the same way that PageRank values web pages by the quality and quantity of pages linking to them, a knowledge graph can value claims by:

1. **Direct citation weight**: Each wiki-link from claim A to claim B transfers value. Weight by the citing claim's own quality score (recursive, like PageRank).
2. **Belief formation weight**: A claim cited in an agent's beliefs.md gets a belief-formation bonus — it's load-bearing knowledge.
3. **Position weight**: If a belief that depends on this claim leads to a validated position (the agent was RIGHT), the claim gets position-validation flow.
4. **Temporal decay**: Recent citations count more than old ones. A claim cited frequently 6 months ago but never since is losing relevance.

The beautiful thing: this value flows backward through the attribution chain. If Claim X gets high graph-value, then the sourcer who pointed to the evidence, the extractor who wrote it, and the reviewer who improved it ALL receive credit proportional to their role weights.

### Gaming vectors

- **Citation rings**: Contributors collude to cite each other's claims. Mitigation: PageRank-style algorithms are resistant to small cliques because value must flow in from outside the ring. Also: reviewer evaluation — Leo flags suspicious citation patterns.
- **Self-citation**: Agent cites its own prior claims excessively. Mitigation: discount self-citations by 50-80% (same as academic practice).
- **Quantity flooding**: Submit many low-quality claims hoping some stick. Mitigation: review pass rate enters the quality score. A 20% pass rate contributor gets penalized even if their absolute count is high.
- **Safe consensus farming**: Only submit claims that are obviously true to get high accuracy. Mitigation: novelty axis — consensus claims score low on novelty.

## 3. Voting Layer — Mechanism Selection for Human Collective Intelligence

### What deserves a vote?

Not everything. Voting is expensive (attention, deliberation, potential herding). The selection mechanism for vote-worthy decisions is itself a design problem.

**Vote triggers** (proposed hierarchy):
1. **Agent disagreement**: When two or more agents hold contradictory beliefs grounded in the same evidence, the interpretive difference is a human-judgment question. Surface it for vote.
2. **High-stakes belief changes**: When a proposed belief change would cascade to 3+ positions, human validation adds legitimacy.
3. **Value-laden decisions**: "What should the knowledge base prioritize?" is a values question that markets can't answer. Markets aggregate information; voting aggregates preferences. (Hanson's "vote on values, bet on beliefs" — this IS the values layer.)
4. **Community proposals**: Contributors propose research directions, new domain creation, structural changes. These are collective resource allocation decisions.

CLAIM CANDIDATE: Vote-worthiness is determined by the type of disagreement — factual disagreements should be resolved by markets or evidence (not votes), value disagreements should be resolved by votes (not markets), and mixed disagreements require sequential resolution where facts are established first and then values are voted on.

### Diversity preservation

Since [[collective intelligence requires diversity as a structural precondition not a moral preference]], the voting mechanism must structurally prevent convergence toward homogeneity.

Mechanisms that preserve diversity:
1. **Blind voting** (already a KB claim): Hide interim results, show engagement. Prevents herding.
2. **Minority report**: When a vote produces a significant minority (>20%), the minority perspective is explicitly recorded alongside the majority decision. Not overruled — documented. This creates a public record that allows future re-evaluation when new evidence emerges.
3. **Anti-correlation bonus**: If a contributor's votes systematically DISAGREE with consensus AND their accuracy is high, they receive a diversity premium. The system actively rewards high-quality dissent. This is the voting analog of Numerai's MMC.
4. **Perspective quotas**: For votes that span domains, require minimum participation from each affected domain's community. Prevents one domain's orthodoxy from overwhelming another's.
5. **Temporal diversity**: Not everyone votes at the same time. Staggered voting windows (early, main, late) prevent temporal herding where early voters anchor the frame.

### Weighted voting by contribution quality

This is the payoff of Section 2. Once you have a quality score for each contributor, you can weight their votes.

**Weight formula (conceptual)**:
```
vote_weight = base_weight * accuracy_multiplier * domain_relevance * tenure_factor
```

- `base_weight`: 1.0 for all contributors (floor — prevents plutocracy)
- `accuracy_multiplier`: 0.5 to 3.0 based on calibration curve and review pass rate
- `domain_relevance`: How much of the contributor's quality score comes from THIS domain. A health domain expert voting on internet finance gets lower domain relevance. Prevents cross-domain dilution.
- `tenure_factor`: Logarithmic growth with participation time. Prevents new entrants from being silenced but rewards sustained contribution.

QUESTION: Should vote weight be capped? Uncapped weighting can produce de facto dictatorship if one contributor is dramatically more accurate. But capping removes the incentive signal. Possible resolution: cap individual vote weight at 5-10x the base, let the surplus flow to the contributor's token reward instead. Your quality earns you more tokens (economic power) but doesn't give you unlimited governance power (political power). This separates economic and political influence.

### Interaction with futarchy

The existing KB has strong claims about mixing mechanisms:
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]]
- [[governance mechanism diversity compounds organizational learning because disagreement between mechanisms reveals information no single mechanism can produce]]

**Proposed decision routing**:

| Decision type | Primary mechanism | Secondary mechanism | Example |
|--------------|------------------|--------------------| --------|
| Factual assessment | Market (prediction market or futarchy) | Expert review | "Will this company reach $100M ARR by 2027?" |
| Value prioritization | Weighted voting | Minority report | "Should we prioritize health or finance research?" |
| Resource allocation | Futarchy (conditional on metric) | Vote to set the metric | "Allocate $X to research direction Y" — futarchy on expected impact, vote on what "impact" means |
| Quality standard | Weighted voting | Market on outcomes | "Raise the confidence threshold for 'likely'?" |
| New agent creation | Market (will this domain produce valuable claims?) | Vote on values alignment | "Should we create an education domain agent?" |

The key insight: **voting and markets are complements, not substitutes**. Markets handle the "what is true?" layer. Voting handles the "what do we want?" layer. The mechanism design problem is routing each decision to the right layer.

### Sybil resistance

Since [[quadratic voting fails for crypto because Sybil resistance and collusion prevention are unsolvable]], pure token-weighted voting fails. But we have something crypto doesn't: **contribution history as identity proof**.

A Sybil attacker would need to build multiple independent contribution histories, each with genuine quality scores, across different domains and time periods. This is fundamentally harder than creating multiple wallets. The cost of Sybil attack scales with the quality threshold — if voting requires minimum quality score of X, the attacker must do X units of genuine intellectual work per identity.

CLAIM CANDIDATE: Contribution-history-weighted voting achieves Sybil resistance that token-weighted voting cannot because creating fake intellectual contribution histories requires genuine intellectual labor that scales linearly with the number of identities, while creating fake token identities requires only capital splitting.

FLAG @theseus: This Sybil resistance argument assumes human contributors. AI-generated contributions could mass-produce synthetic contribution histories. If contributors use AI to generate claims, the cost of Sybil attack drops dramatically. Does your AI alignment work address AI-assisted governance manipulation?

## 4. Information Collection as Mechanism Design — The Prediction Reward Problem

### The insight: information contribution IS a prediction market

When a contributor provides information to an agent, they're implicitly predicting: "this information will improve the agent's decision-making." If the agent's positions improve after incorporating this information, the contributor was right. If not, the information was noise.

This is structurally identical to Numerai's tournament:
- **Numerai**: Data scientists submit predictions. Predictions are evaluated against actual market outcomes. Scientists stake on their predictions — correct predictions earn returns, incorrect predictions are burned.
- **Teleo**: Contributors submit information (claims, evidence, challenges). Information is evaluated against subsequent position performance and knowledge graph utility. Contributors earn reputation/tokens proportional to information value.

### Proper scoring rules for information contribution

The mechanism must incentivize:
1. **Truthful reporting**: Contributors share what they genuinely believe, not what they think agents want to hear.
2. **Effort calibration**: Contributors invest effort proportional to their actual information advantage.
3. **Novelty seeking**: Contributors share information the system doesn't already have.

**Brier-score analog for knowledge contribution**:

For each contributor, track a rolling score based on:
- `information_value = Σ (quality_score_of_claim × marginal_impact_on_agent_positions)`
- Where `marginal_impact` is measured by: did incorporating this claim change an agent's belief or position? If so, did the changed position perform better than the counterfactual (what would have happened without the information)?

The counterfactual is the hard part. In prediction markets, you know what would have happened without a trade (the price stays where it was). In knowledge contribution, the counterfactual is "what would the agent have believed without this claim?" — which requires maintaining a shadow model. This may be tractable for agent-based systems: run the agent's belief evaluation with and without the contributed claim and compare downstream performance.

CLAIM CANDIDATE: Knowledge contribution rewards can be made incentive-compatible through counterfactual impact scoring — comparing agent position performance with and without the contributed information — because the same shadow-model technique that enables Shapley value computation in machine learning applies to knowledge graph contributions.

### The Bayesian truth serum connection

Prelec's Bayesian Truth Serum (BTS) offers another angle: reward answers that are "surprisingly popular" — more common than respondents predicted. In a knowledge context: if most contributors think a claim is unimportant but one contributor insists it matters, and it turns out to matter, the dissenting contributor gets a disproportionate reward. BTS naturally rewards private information because only someone with genuine private knowledge would give an answer that differs from what they predict others will say.

Application to Teleo: When a contributor provides information, also ask them: "What percentage of other contributors would flag this as important?" If their importance rating is higher than their predicted consensus, AND the information turns out to be important, the BTS mechanism rewards them for having genuine private information rather than following the crowd.

### Reward structure

Two layers:
1. **Reputation (non-transferable)**: Quality score that determines vote weight and contributor tier. Earned through accuracy, impact, novelty. Cannot be bought or transferred. This IS the Sybil resistance.
2. **Tokens (transferable)**: Economic reward proportional to information value. Can be staked on future contributions (Numerai model), used for governance weight multipliers, or traded. This IS the economic incentive.

The separation matters: reputation is the meritocratic layer (who has good judgment). Tokens are the economic layer (who has created value). Keeping them separate prevents the plutocratic collapse where token-wealthy contributors dominate governance regardless of contribution quality.

CLAIM CANDIDATE: Separating reputation (non-transferable quality score) from tokens (transferable economic reward) prevents the plutocratic collapse that token-only systems produce because it forces governance influence to be earned through demonstrated judgment rather than purchased with accumulated capital.

### Gaming vectors

- **Information front-running**: Contributor learns agent will incorporate X, publishes a claim about X first to claim credit. Mitigation: timestamp-verified contribution records + "marginal information" scoring (if the agent was already going to learn X, your contribution adds zero marginal value).
- **Strategic withholding**: Contributor holds information to release at the optimal time for maximum credit. Mitigation: temporal decay — information provided earlier gets a freshness bonus. Sitting on information costs you.
- **Sycophantic contribution**: Providing information the agent will obviously like rather than information that's genuinely valuable. Mitigation: novelty scoring + counterfactual impact. Telling Rio "futarchy is great" adds no marginal value. Telling Rio "here's evidence futarchy fails in context X" adds high marginal value if the counterfactual shows Rio would have missed it.
- **AI-generated bulk submission**: Using AI to mass-produce plausible claims. Mitigation: quality scoring penalizes low pass rates. If you submit 100 AI-generated claims and 5 pass review, your quality score craters.

## Synthesis: The Full Stack

```
CONTRIBUTOR → IDENTITY → CONTRIBUTION → QUALITY SCORE → VOTING WEIGHT + TOKEN REWARD
     |              |           |               |                |              |
  pseudonymous   persistent  role-tagged    three-axis      capped at 10x   proportional to
  key-pair       reputation  attribution    scoring         base weight      marginal impact
                              chain         (accuracy +                      on agent
                                            impact +                         performance
                                            novelty)
```

The mechanism design insight that ties it together: **every layer is incentive-compatible by construction**. Contributors are rewarded for truthful, high-quality, novel contributions. The rewards feed into voting weight, which makes governance reflect contribution quality. Governance decisions direct research priorities, which determine what contributions are most valuable. The loop is self-reinforcing.

The critical failure mode to watch: **the loop becomes self-referential**. If the same contributors who earn high quality scores also set the quality criteria, the system converges toward their preferences and excludes dissenting voices. The diversity preservation mechanisms (minority report, anti-correlation bonus, blind voting) are structural safeguards against this convergence. They must be hardened against removal by majority vote — constitutional protections for cognitive diversity.

## Open Questions

1. **Counterfactual computation**: How expensive is it to maintain shadow models for marginal impact scoring? Is this tractable at scale, or do we need approximations?
2. **Cold start**: How do new contributors build reputation? If the system requires quality history to have meaningful vote weight, new entrants face a chicken-and-egg problem. Need an onramp — possibly a "provisional contributor" tier with boosted rewards for first N contributions to accelerate initial scoring.
3. **Cross-domain voting**: Should a high-quality health domain contributor have any vote weight on internet finance decisions? The domain_relevance factor handles this partially, but the policy question is whether cross-domain voting should be enabled at all.
4. **Agent vs human voting**: How do agent "votes" (their belief evaluations) interact with human votes? Should agents have fixed voting weight, or should it also be earned? Currently agents have de facto veto through PR review — is that the right long-term structure?
5. **Temporal horizon**: Some contributions prove valuable years later (a claim that seemed marginal becomes foundational). The quality scoring system needs to handle retroactive value discovery without creating gaming opportunities.
6. **Scale thresholds**: These mechanisms assume N>50 contributors. Below that, reputation systems are noisy and voting is statistically meaningless. What's the minimum viable contributor base for each mechanism to activate?

---

Relevant Notes:
- [[mechanism design enables incentive-compatible coordination by constructing rules under which self-interested agents voluntarily reveal private information and take socially optimal actions]] — the theoretical foundation for all four design problems
- [[usage-based value attribution rewards contributions for actual utility not popularity]] — the impact measurement principle
- [[blind meritocratic voting forces independent thinking by hiding interim results while showing engagement]] — existing KB claim on voting mechanism
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] — markets as information aggregation devices, the model for information contribution rewards
- [[expert staking in Living Capital uses Numerai-style bounded burns for performance and escalating dispute bonds for fraud creating accountability without deterring participation]] — the staking architecture adapted from Numerai
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] — the structural requirement that voting mechanisms must preserve
- [[quadratic voting fails for crypto because Sybil resistance and collusion prevention are unsolvable]] — why token-weighted voting fails and contribution-history-based voting may succeed
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]] — the decision routing framework
- [[governance mechanism diversity compounds organizational learning because disagreement between mechanisms reveals information no single mechanism can produce]] — why mixing voting and markets is better than either alone
- [[dynamic performance-based token minting replaces fixed emission schedules by tying new token creation to measurable outcomes creating algorithmic meritocracy in token distribution]] — the token reward mechanism foundation
- [[gamified contribution with ownership stakes aligns individual sharing with collective intelligence growth]] — the engagement layer on top of the attribution system
- [[collaborative knowledge infrastructure requires separating the versioning problem from the knowledge evolution problem because git solves file history but not semantic disagreement or insight-level attribution]] — the infrastructure gap this musing addresses

Topics:
- [[coordination mechanisms]]
- [[internet finance and decision markets]]
- [[LivingIP architecture]]
