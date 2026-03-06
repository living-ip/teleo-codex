---
description: Mechanism design for expert analyst staking in Living Capital vehicles -- stake currency and sizing, four-tier slashing triggers, layered adjudication separating attributable fraud from honest error, and correlation-aware penalties for collusion
type: framework
domain: internet-finance
created: 2026-02-28
confidence: experimental
source: "Numerai, Augur, UMA, EigenLayer, a16z cryptoeconomics, STAKESURE, Feb 2026"
tradition: "Mechanism design"
---

# expert staking in Living Capital uses Numerai-style bounded burns for performance and escalating dispute bonds for fraud creating accountability without deterring participation

## The Design Problem

Designated diligence experts in Living Capital vehicles produce investment memos that governance participants use to make allocation decisions. Since [[Living Capital information disclosure uses NDA-bound diligence experts who produce public investment memos creating a clean team architecture where the market builds trust in analysts over time]], these experts have asymmetric information advantage. Staking creates financial accountability: experts back their analysis with capital that can be slashed if they are wrong, fraudulent, or negligent. The mechanism must distinguish between honest analytical error (which should be tolerated) and fraud or material misrepresentation (which should be punished severely), while keeping participation attractive enough that good analysts want to participate.

## The Core Distinction: Attributable vs Non-Attributable Violations

The a16z framework for cryptoeconomic slashing provides the foundational design principle. Violations split into two categories:

**Safety violations (attributable).** The protocol can prove who misbehaved. In expert staking: fabricating data, plagiarizing analysis, failing to disclose conflicts of interest, demonstrably misrepresenting information the expert had access to. These are verifiable -- you can point to the specific memo, the specific claim, and the specific evidence of fabrication.

**Liveness violations (non-attributable).** You cannot distinguish "didn't know" from "couldn't predict." In expert staking: being wrong about a company's prospects, missing a market shift, underestimating competitive threats. These are honest analytical errors -- the expert did the work, applied genuine judgment, and reached a conclusion that turned out to be incorrect.

**The design rule:** Slash heavily for attributable violations. Use bounded performance burns for non-attributable outcomes. Never slash an expert just for being wrong -- that deters participation from the best analysts who are willing to make non-consensus calls.

## Stake Design

### What Experts Stake

**Dual-currency stake:**
1. **Vehicle tokens (locked ownership)** -- aligns expert incentives with vehicle performance long-term. Locked for the duration of their analyst engagement plus a cooling-off period. Creates genuine skin in the game because the expert's wealth rises and falls with their analysis quality
2. **Stablecoin bond** -- a liquid collateral layer that enables immediate slashing for fraud without requiring token liquidation. The bond is returned if the expert completes their engagement without attributable violations

### How Much

Following the Numerai model (which has operated successfully with 413+ scientists staking $7M collectively):

- **Confidence-proportional staking:** Experts stake more on higher-conviction analyses. A "strong buy" recommendation carries 3-5x the stake of a "monitor" recommendation. This is Numerai's core insight -- tying stake to confidence calibrates the expert's incentive to be honest about uncertainty
- **Deal-proportional minimum floor:** Minimum stake of 0.5-1% of the investment being analyzed. For a $100M allocation recommendation, the expert stakes $500K-$1M. This ensures meaningful skin in the game relative to the decision
- **Per-period cap at 5-10% of total stake:** Following Numerai's bounded burn model, no single evaluation period can destroy more than 5-10% of an expert's total stake. This prevents catastrophic loss from a single bad call while maintaining long-term accountability
- **STAKESURE security condition:** The aggregate expert stake pool should exceed the maximum profit from corruption. If experts collectively stake $5M on a $100M vehicle, the cost of coordinated fraud exceeds any single expert's gain from misleading the market

## Four-Tier Slashing Architecture

### Tier 1: Inactivity (Automatic, 0.1-1% per period)

Following UMA's DVM 2.0 model, experts who fail to produce required analyses during their commitment period are slashed automatically. UMA slashes 0.1% of staked tokens per missed vote, calibrated so non-participants earn 0% APY. For Living Capital: if an expert commits to quarterly analysis and misses a quarter, 0.5-1% of their stake is automatically slashed. No adjudication needed -- inactivity is binary and verifiable.

### Tier 2: Performance-Based Bounded Burns (Automatic, capped at 5%)

When an investment performs significantly below the expert's stated thesis, a bounded burn applies. This is NOT punishment for being wrong -- it's a calibration mechanism that ensures experts don't make reckless recommendations without consequences.

- **Trigger:** Investment underperforms the expert's stated return range by more than one standard deviation over the evaluation period
- **Burn amount:** Proportional to the gap between stated expectation and actual outcome, capped at 5% per evaluation period (Numerai model)
- **Calibration credit:** Experts who accurately state uncertainty ranges (wide confidence intervals that contain the outcome) receive reduced burns. This rewards honest uncertainty over false precision -- the same calibration scoring that makes Metaculus forecasters effective

Following Numerai's MMC (Meta Model Contribution) weighting, experts who provide unique analytical perspectives that differ from consensus receive a diversity bonus. Since [[collective intelligence requires diversity as a structural precondition not a moral preference]], rewarding analytical uniqueness over herding directly addresses the bandwagoning problem in traditional VC IC processes.

### Tier 3: Material Misrepresentation (Escalating Dispute, 25-100%)

When another participant believes an expert materially misrepresented information in their memo -- stated a company had regulatory approval when it didn't, claimed revenue figures contradicted by public data, omitted a material conflict of interest -- an escalating dispute process activates.

Following Augur's dispute mechanism:
1. **Initial challenge:** A challenger stakes a bond (minimum 2x the expert's Tier 2 exposure) asserting the specific misrepresentation with evidence
2. **Expert response:** The expert can accept the challenge (concede, return bond) or counter-stake to dispute (2x the challenger's bond)
3. **Escalation rounds:** Each round requires doubling the previous bond. This naturally separates frivolous challenges (too expensive to pursue) from genuine disputes (worth the escalating cost)
4. **Resolution:** If the dispute reaches a threshold (3 rounds or $50K+ in cumulative bonds), it escalates to the adjudication committee

**Slashing range:** 25-100% of expert's stake depending on severity. Intentional fabrication = 100%. Negligent omission = 25-50%. The challenger receives the expert's slashed stake minus adjudication costs.

### Tier 4: Fraud (Committee Adjudication, 100%)

Outright fraud -- fabricated diligence documents, undisclosed payments from portfolio companies, coordinated manipulation with other experts. This requires human judgment because fraud determination involves intent assessment that algorithms cannot reliably perform.

Following EigenLayer's veto committee model:
- A panel of 5-7 members (mix of community-elected and expert-nominated)
- Supermajority (5/7) required for fraud finding
- 100% slashing of all expert stakes in the vehicle
- Committee members themselves stake on their adjudication decisions (Kleros model: jurors rewarded for coherence with the majority verdict)
- Veto period: 7 days after initial committee ruling before slashing executes, allowing appeal

## Correlation-Aware Penalties

Ethereum's correlation-aware slashing is the most sophisticated model for detecting collusion: isolated mistakes cost ~3% of stake, but if many validators misbehave simultaneously, each loses proportionally more. The assumption is that correlated failures are more likely attacks than accidents.

Applied to expert analysts: if multiple designated experts simultaneously produce similar flawed analysis for the same vehicle (suggesting coordinated misleading or shared blind spots), their individual slashing multiplies. Two experts making the same error independently is unlucky. Five experts making the same error simultaneously is suspicious. The correlation penalty scales exponentially with the number of co-occurring failures, creating a strong deterrent against expert collusion without punishing isolated honest errors.

## Slashed Stake Disposition

Following the research consensus (Hazeflow analysis + Symbiotic model):
- **50% to insurance fund:** Builds a reserve that can compensate investors harmed by expert failures
- **30% redistributed to correct challengers:** Rewards the participants who identified and challenged the misrepresentation (Augur's incentive structure)
- **20% burned:** Permanent token supply reduction that benefits all remaining token holders, preventing the "who watches the watchers" problem of redistributed stakes creating perverse incentives

## The Six Universal Design Patterns

Across all studied systems (Numerai, Augur, UMA, EigenLayer, Chainlink, Kleros, Ethereum), six patterns emerge:

1. **Bounded downside per period** -- no single error wipes out an expert. Numerai caps at 5%, UMA at 0.1%, Ethereum at ~3% for isolated failures
2. **Escalating dispute costs** -- Augur's doubling bonds separate frivolous from genuine challenges
3. **Separation by attributability** -- safety vs liveness violations receive fundamentally different treatment
4. **Skin in the game for adjudicators** -- Kleros jurors and EigenLayer committee members stake on their judgments
5. **Correlation-aware penalties** -- isolated errors are tolerated, coordinated failures are punished exponentially
6. **Diversity rewards** -- Numerai's MMC bonus rewards analytical uniqueness over consensus-matching

---

Relevant Notes:
- [[Living Capital information disclosure uses NDA-bound diligence experts who produce public investment memos creating a clean team architecture where the market builds trust in analysts over time]] -- the information architecture this staking mechanism enforces
- [[Living Capital vehicles pair Living Agent domain expertise with futarchy-governed investment to direct capital toward crucial innovations]] -- the vehicle these experts serve
- [[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]] -- futarchy's own manipulation resistance complements expert staking
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] -- the theoretical basis for diversity rewards in the staking mechanism
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] -- the market mechanism that builds expert reputation over time
- [[blind meritocratic voting forces independent thinking by hiding interim results while showing engagement]] -- preventing herding through hidden interim state

Topics:
- [[internet finance and decision markets]]
- [[LivingIP architecture]]
- [[coordination mechanisms]]
