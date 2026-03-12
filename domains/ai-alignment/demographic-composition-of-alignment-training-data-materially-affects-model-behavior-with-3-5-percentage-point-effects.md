---
type: claim
domain: ai-alignment
description: "Empirical study with 1,095 participants shows demographic composition of alignment training data produces 3-5 percentage point differences in model behavior"
confidence: likely
source: "arXiv 2511.14476, 27,375 ratings from 1,095 participants"
created: 2026-03-11
---

# Demographic composition of alignment training data materially affects model behavior with 3-5 percentage point effects

Systematic variation in the demographic composition of human feedback used for LLM alignment produces measurable, quantitative differences in model behavior. This is the first large-scale empirical study (N=1,095 participants, 27,375 ratings) that jointly varied demographic composition and technical design in alignment training.

## Evidence

Models fine-tuned on feedback from specific demographic groups showed consistent performance differences relative to other demographic baselines:
- Models fine-tuned on Liberal feedback: +5.0 percentage points vs Conservative baseline
- Models fine-tuned on White feedback: +4.7 percentage points vs Black baseline  
- Models fine-tuned on Female feedback: +3.4 percentage points vs Male baseline
- Effects measured across emotional awareness and toxicity dimensions
- Study jointly varied demographic composition AND technical design parameters

## Significance

The magnitude of these effects—3 to 5 percentage points from demographic composition alone—demonstrates that "whose preferences" is not merely a fairness concern but a quantitatively important variable in alignment outcomes. This provides empirical grounding for the theoretical concern that single-population alignment training systematically encodes the values of that population into model behavior.

When alignment researchers treat "human feedback" as a uniform commodity rather than a demographically-situated sample, they are making an implicit choice about whose values the model will reflect. The study shows this choice has measurable consequences for model outputs.

---

Relevant Notes:
- [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]]
- [[some disagreements are permanently irreducible because they stem from genuine value differences not information gaps and systems must map rather than eliminate them]]
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]

Topics:
- [[domains/ai-alignment/_map]]
