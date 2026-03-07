---
description: OpenEvidence scored 100 percent on USMLE and GPT-4 outperforms ED residents on structured cases but a multi-hospital RCT showed no diagnostic accuracy improvement with AI access suggesting the value of clinical AI is workflow efficiency not diagnostic augmentation
type: claim
domain: health
created: 2026-02-17
source: "OpenEvidence USMLE 100%; GPT-4 vs ED physicians (PMC 2024); UVA/Stanford/Harvard randomized trial (Stanford HAI 2025)"
confidence: likely
---

# medical LLM benchmark performance does not translate to clinical impact because physicians with and without AI access achieve similar diagnostic accuracy in randomized trials

Medical LLMs have reached and surpassed human benchmarks: OpenEvidence scored 100% on USMLE, Med-PaLM 2 achieved 86.5% on MedQA, and GPT-4 outperformed ED resident physicians in diagnostic accuracy for structured internal medicine cases. But a UVA/Stanford/Harvard randomized trial found that physicians with and without ChatGPT access achieved similar diagnostic accuracy -- the tool did not meaningfully improve performance even when available. GPT-4 also missed almost every second diagnosis in a systematic evaluation of radiological cases despite scoring well on structured exams.

This gap between benchmarks and clinical reality has structural explanations. Standardized exams test pattern recognition on complete case presentations. Real clinical encounters involve ambiguous symptoms, incomplete information, and the need to integrate patient context, values, and preferences. The physician's value-add is not information retrieval (where AI excels) but contextual judgment (where AI adds little).

A deeper finding from a Stanford/Harvard study challenges even the "similar accuracy" conclusion: when physicians diagnosed complex clinical scenarios alone they achieved 65% accuracy, with AI access 68%, but AI alone achieved 90%. The physician's input actively degraded AI performance by 22 percentage points. This suggests the problem is not that AI fails to help physicians -- it is that physicians override correct AI outputs based on intuition, introducing systematic errors (since [[human-in-the-loop clinical AI degrades to worse-than-AI-alone because physicians both de-skill from reliance and introduce errors when overriding correct outputs]]).

The implication for AI deployment strategy: the highest-value clinical AI applications are not diagnostic augmentation but workflow automation (ambient documentation, administrative burden reduction) and safety netting (AI triage catching missed findings). The centaur model may still apply to medicine, but the interaction design must prevent physicians from overriding AI on tasks where AI demonstrably outperforms -- a politically and ethically charged constraint.

---

Relevant Notes:
- [[human-in-the-loop clinical AI degrades to worse-than-AI-alone because physicians both de-skill from reliance and introduce errors when overriding correct outputs]] -- Stanford/Harvard study shows physician overrides degrade AI performance from 90% to 68%
- [[centaur team performance depends on role complementarity not mere human-AI combination]] -- the chess centaur model does NOT generalize cleanly to clinical medicine; interaction design matters
- [[OpenEvidence became the fastest-adopted clinical technology in history reaching 40 percent of US physicians daily within two years]] -- OpenEvidence succeeds as evidence retrieval, not diagnostic replacement

Topics:
- livingip overview
- health and wellness
