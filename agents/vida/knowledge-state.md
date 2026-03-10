# Vida — Knowledge State Assessment

**Model:** claude-opus-4-6
**Date:** 2026-03-08
**Domain:** Health & human flourishing
**Claim count:** 45

## Coverage

**Well-mapped:**
- AI clinical applications (8 claims) — scribes, diagnostics, triage, documentation, clinical decision support. Strong evidence base, multiple sources per claim.
- Payment & payer models (6 claims) — VBC stalling, CMS coding, payvidor legislation, Kaiser precedent. This is where Cory's operational context (Devoted/TSB) lives, so I've gone deep.
- Wearables & biometrics (5 claims) — Oura, WHOOP, CGMs, sensor stack convergence, FDA wellness/medical split.
- Epidemiological transition & SDOH (6 claims) — deaths of despair, social isolation costs, SDOH ROI, medical care's 10-20% contribution.
- Business economics of health AI (10 claims) — funding patterns, revenue productivity, cash-pay adoption, Jevons paradox.

**Thin or missing:**
- **Devoted Health specifics** — only 1 claim (growth rate). Missing: Orinoco platform architecture, outcomes-aligned economics, MA risk adjustment strategy, DJ Patil's clinical AI philosophy. This is the biggest gap given Cory's context.
- **GLP-1 durability and adherence** — 1 claim on launch size, nothing on weight regain, adherence cliffs, or behavioral vs. pharmacological intervention tradeoffs.
- **Behavioral health infrastructure** — mental health supply gap covered, but nothing on measurement-based care, collaborative care models, or psychedelic therapy pathways.
- **Provider consolidation** — anti-payvidor legislation covered, but nothing on Optum/UHG vertical integration mechanics, provider burnout economics, or independent practice viability.
- **Global health systems** — zero claims. No comparative health system analysis (NHS, Singapore, Nordic models). US-centric.
- **Genomics/precision medicine** — gene editing and mRNA vaccines covered, but nothing on polygenic risk scores, pharmacogenomics, or population-level genomic screening.
- **Health equity** — SDOH and deaths of despair touch this, but no explicit claims about structural racism in healthcare, maternal mortality disparities, or rural access gaps.

## Confidence

**Distribution:**
| Level | Count | % |
|-------|-------|---|
| Proven | 7 | 16% |
| Likely | 37 | 82% |
| Experimental | 1 | 2% |
| Speculative | 0 | 0% |

**Assessment: likely-heavy, speculative-absent.** This is a problem. 82% of claims at the same confidence level means the label isn't doing much work. Either I'm genuinely well-calibrated on 37 claims (unlikely — some of these should be experimental or speculative) or I'm defaulting to "likely" as a comfortable middle.

Specific concerns:
- **Probably overconfident:** "healthcare AI creates a Jevons paradox" (likely) — this is a structural analogy applied to healthcare, not empirically demonstrated in this domain. Should be experimental.
- **Probably overconfident:** "the healthcare attractor state is a prevention-first system..." (likely) — this is a derived prediction, not an observed trend. Should be experimental or speculative.
- **Probably overconfident:** "the physician role shifts from information processor to relationship manager" (likely) — directionally right but the timeline and mechanism are speculative. Evidence is thin.
- **Probably underconfident:** "AI scribes reached 92% provider adoption" (likely) — this has hard data. Could be proven.
- **0 speculative claims is wrong.** I have views about where healthcare is going that I haven't written down because they'd be speculative. That's a gap, not discipline. The knowledge base should represent the full confidence spectrum, including bets.

## Sources

**Count:** ~114 unique sources across 45 claims. Ratio of ~2.5 sources per claim is healthy.

**Diversity assessment:**
- **Strong:** Mix of peer-reviewed (JAMA, Lancet, NEJM Catalyst), industry reports (Bessemer, Rock Health, Grand View Research), regulatory documents (FDA, CMS), business filings, and journalism (STAT News, Healthcare Dive).
- **Weak:** No primary interviews or original data. No international sources (WHO mentioned once, no Lancet Global Health, no international health system analyses). Over-indexed on US healthcare.
- **Source monoculture risk:** Bessemer State of Health AI 2026 sourced 5 claims in one extraction. Not a problem yet, but if I keep pulling multiple claims from single sources, I'll inherit their framing biases.
- **Missing source types:** No patient perspective sources. No provider survey data beyond adoption rates. No health economics modeling (no QALY analyses, no cost-effectiveness studies). No actuarial data despite covering MA and VBC.

## Staleness

**All 45 claims created 2026-02-15 to 2026-03-08.** Nothing is stale yet — the domain was seeded 3 weeks ago.

**What will go stale fastest:**
- CMS regulatory claims (2027 chart review exclusion, AI reimbursement codes) — regulatory landscape shifts quarterly.
- Funding pattern claims (winner-take-most, cash-pay adoption) — dependent on 2025-2026 funding data that will be superseded.
- Devoted growth rate (121%) — single data point, needs updating with each earnings cycle.
- GLP-1 market data — this category is moving weekly.

**Structural staleness risk:** I have no refresh mechanism. No source watchlist, no trigger for "this claim's evidence base has changed." The vital signs spec addresses this (evidence freshness metric) but it's not built yet.

## Connections

**Cross-domain link count:** 34+ distinct cross-domain wiki links across 45 claims.

**Well-connected to:**
- `core/grand-strategy/` — attractor states, proxy inertia, disruption theory, bottleneck positions. Healthcare maps naturally to grand strategy frameworks.
- `foundations/critical-systems/` — CAS theory, clockwork paradigm, Jevons paradox. Healthcare IS a complex adaptive system.
- `foundations/collective-intelligence/` — coordination failures, principal-agent problems. Healthcare incentive misalignment is a coordination failure.
- `domains/space-development/` — one link (killer app sequence). Thin but real.

**Poorly connected to:**
- `domains/entertainment/` — zero links. There should be connections: content-as-loss-leader parallels wellness-as-loss-leader, fan engagement ladders parallel patient engagement, creator economy parallels provider autonomy.
- `domains/internet-finance/` — zero direct links. Should connect: futarchy for health policy decisions, prediction markets for clinical trial outcomes, token economics for health behavior incentives.
- `domains/ai-alignment/` — one indirect link (emergent misalignment). Should connect: clinical AI safety, HITL degradation as alignment problem, AI autonomy in medical decisions.
- `foundations/cultural-dynamics/` — zero links. Should connect: health behavior as cultural contagion, deaths of despair as memetic collapse, wellness culture as memeplex.

**Self-assessment:** My cross-domain ratio looks decent (34 links) but it's concentrated in grand-strategy and critical-systems. The other three domains are essentially unlinked. This is exactly the siloing my linkage density vital sign is designed to detect.

## Tensions

**Unresolved contradictions in the knowledge base:**

1. **HITL paradox:** "human-in-the-loop clinical AI degrades to worse-than-AI-alone" vs. the collective's broader commitment to human-in-the-loop architecture. If HITL degrades in clinical settings, does it degrade in knowledge work too? Theseus's coordination claims assume HITL works. My clinical evidence says it doesn't — at least not in the way people assume.

2. **Jevons paradox vs. attractor state:** I claim healthcare AI creates a Jevons paradox (more capacity → more sick care demand) AND that the attractor state is prevention-first. If the Jevons paradox holds, what breaks the loop? My implicit answer is "aligned payment" but I haven't written the claim that connects these.

3. **Complexity vs. simple rules:** I claim healthcare is a CAS requiring simple enabling rules, but my coverage of regulatory and legislative detail (CMS codes, anti-payvidor bills, FDA pathways) implies that the devil is in the complicated details, not simple rules. Am I contradicting myself or is the resolution that simple rules require complicated implementation?

4. **Provider autonomy:** "healthcare is a CAS requiring simple enabling rules not complicated management because standardized processes erode clinical autonomy" sits in tension with "AI scribes reached 92% adoption" — scribes ARE standardized processes. Resolution may be that automation ≠ standardization, but I haven't articulated this.

## Gaps

**Questions I should be able to answer but can't:**

1. **What is Devoted Health's actual clinical AI architecture?** I cover the growth rate but not the mechanism. How does Orinoco work? What's the care model? How do they use AI differently from Optum/Humana?

2. **What's the cost-effectiveness of prevention vs. treatment?** I assert prevention-first is the attractor state but have no cost-effectiveness data. No QALYs, no NNT comparisons, no actuarial modeling.

3. **How does value-based care actually work financially?** I say VBC stalls at the payment boundary but I can't explain the mechanics of risk adjustment, MLR calculations, or how capitation contracts are structured.

4. **What's the evidence base for health behavior change?** I have claims about deaths of despair and social isolation but nothing about what actually changes health behavior — nudge theory, habit formation, community-based interventions, financial incentives.

5. **How do other countries' health systems handle the transitions I describe?** Singapore's 3M system, NHS integrated care, Nordic prevention models — all absent.

6. **What's the realistic timeline for the attractor state?** I describe where healthcare must go but have no claims about how long the transition takes or what the intermediate states look like.

7. **What does the clinical AI safety evidence actually show?** Beyond HITL degradation, what do we know about AI diagnostic errors, liability frameworks, malpractice implications, and patient trust?
