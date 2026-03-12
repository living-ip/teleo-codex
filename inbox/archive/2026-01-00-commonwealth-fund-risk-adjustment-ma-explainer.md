---
type: source
title: "How Risk Adjustment Affects Payment for Medicare Advantage Plans"
author: "Commonwealth Fund"
url: https://www.commonwealthfund.org/publications/explainer/2026/jan/how-risk-adjustment-affects-payment-medicare-advantage-plans
date: 2026-01-01
domain: health
secondary_domains: []
format: report
status: null-result
priority: high
tags: [risk-adjustment, cms-hcc, upcoding, medicare-advantage, V28, chart-review]
processed_by: vida
processed_date: 2026-03-11
enrichments_applied: ["CMS 2027 chart review exclusion targets vertical integration profit arbitrage by removing upcoded diagnoses from MA risk scoring.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Three new claims extracted focusing on the mechanical details of V28 vs chart review exclusion as complementary reforms, plus the 70% audit failure rate as evidence of systematic upcoding. One enrichment to existing claim providing the structural distinction between what gets coded (V28) and how it gets coded (chart review). Key insight: these are dual reforms targeting different dimensions of the same gaming surface, not redundant policies."
---

## Content

### CMS-HCC Risk Adjustment Mechanics (from multiple sources)

**How it works:**
- CMS pays MA plans a monthly per-member capitation adjusted by risk scores
- Risk scores derived from diagnosis codes (HCCs — Hierarchical Condition Categories)
- Each HCC has a coefficient that increases payment for sicker patients
- Plans submit diagnosis codes annually; CMS calculates risk scores

**How it's gamed:**
- **Upcoding**: submitting more/higher-severity diagnoses than FFS Medicare would capture
- **Chart reviews**: retrospective review of medical records to find additional codeable diagnoses not documented during encounters
- **In-home health assessments**: visits specifically designed to capture diagnosis codes, not treat patients
- **Risk adjustment data validation (RADV)**: CMS audits find 70% of diagnosis codes not supported by medical records

### V24 to V28 Transition

- V24: previous model with broader diagnosis-to-HCC mappings
- V28 (implemented 2024): significantly decreased diagnosis codes mapping to HCCs, increased number of HCCs
- Phase-in: 2024-2026 gradual transition, complete by 2026
- CMS estimated V28 would save $7.6 billion in 2024 alone

### 2027 Chart Review Exclusion

- CMS proposes excluding all diagnoses from unlinked chart review records (not tied to documented service)
- Diagnoses from chart reviews allowed ONLY if tied to actual medical encounter
- Projected savings: **>$7 billion in 2027**
- Targets the specific practice of retrospective code-mining that inflates risk scores

### DOJ/OIG Enforcement

- Nearly every major MA plan has faced or settled upcoding allegations
- DOJ uses False Claims Act against unsupported diagnostic codes
- No UPCODE Act reintroduced in Congress (March 2025) — bipartisan support
- 2025 CMS administrator confirmed rooting out upcoding is bipartisan priority

### V28 + Chart Review Exclusion Combined Impact

- V28 phase-in targets coding breadth (fewer mappable diagnoses)
- Chart review exclusion targets coding method (no retrospective code-mining)
- Together: most significant structural reform to MA risk adjustment since program inception
- Industry warns of benefit cuts and market exits if combined with flat rates

## Agent Notes
**Why this matters:** The risk adjustment system is the mechanism through which MA plans extract above-FFS payments. Understanding the V24→V28 transition and chart review exclusion is essential for predicting MA's next 5-10 years. The $7B+ annual savings from chart review exclusion alone shows how much current payments depend on retrospective code-mining.
**What surprised me:** The 70% unsupported diagnosis rate from OIG audits. If true at scale, the majority of MA risk adjustment is built on codes that don't survive audit. The industry's survival depends on CMS not auditing at scale.
**KB connections:** [[CMS 2027 chart review exclusion targets vertical integration profit arbitrage by removing upcoded diagnoses from MA risk scoring]]
**Extraction hints:** Claims about: (1) chart review as the primary mechanism of systematic upcoding, (2) V28 + chart review exclusion as dual reform changing MA economics, (3) the 70% unsupported diagnosis rate as evidence of systemic gaming

## Curator Notes
PRIMARY CONNECTION: [[CMS 2027 chart review exclusion targets vertical integration profit arbitrage by removing upcoded diagnoses from MA risk scoring]]
WHY ARCHIVED: Deepens the existing KB claim with mechanical detail about how risk adjustment actually works and how reforms target it.
EXTRACTION HINT: The distinction between V28 (what gets coded) and chart review exclusion (how it gets coded) is structurally important — they're complementary reforms, not redundant.


## Key Facts
- CMS-HCC risk adjustment: CMS pays MA plans monthly per-member capitation adjusted by risk scores derived from diagnosis codes (HCCs)
- Each HCC has a coefficient that increases payment for sicker patients
- V24 to V28 transition: 2024-2026 phase-in, complete by 2026
- Chart review exclusion proposed for 2027 implementation
- Combined V28 + chart review exclusion projected savings: $7.6B (2024) + >$7B (2027) = >$14.6B annually
