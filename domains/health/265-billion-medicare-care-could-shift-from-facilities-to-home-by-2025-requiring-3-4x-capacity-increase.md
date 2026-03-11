---
type: claim
domain: health
description: "McKinsey 2021 projection that $265B in Medicare care could shift from facilities to home by 2025, requiring 3-4x capacity increase over 2020 baseline. The 2025 deadline has passed without comprehensive validation data."
confidence: experimental
source: "McKinsey & Company, From Facility to Home (Feb 2021)"
created: 2026-03-11
secondary_domains: []
challenged_by: []
---

# McKinsey projected $265B in Medicare care could shift from facilities to home, but the 2025 deadline has passed without documented validation

In February 2021, McKinsey projected that up to $265 billion in care services—representing 25% of total Medicare cost of care—could shift from facilities to home by 2025. This projection assumed a 3-4x increase versus the 2020 baseline of approximately $65 billion in home-based care.

## Status: Projection Timeline Has Passed — Now a Testable Historical Claim

The 2025 deadline specified in the original McKinsey projection has now passed (we are in March 2026). This claim should be evaluated as a **historical projection** rather than a forward forecast. Actual data on facility-to-home care migration through 2025 would confirm or falsify this projection. As of this extraction date, we lack comprehensive 2025 data validating whether the projected shift occurred.

**Key question for KB validation:** Did Medicare facility-to-home care migration reach $265B by end of 2025, or did it fall short? Current evidence status: unverified.

## Structural Insight: Capacity Boundary Problem

The extractable insight is not the dollar figure itself but the **capacity boundary problem**: the gap between current ($65B) and projected ($265B) home care capacity mirrors the value-based care payment transition gap. Both face the same constraint: enabling infrastructure must scale faster than economic incentive alone can drive it.

This structural parallel connects to the broader attractor state thesis — the facility-to-home shift is a necessary component of prevention-first care delivery, but it requires simultaneous scaling of three independent systems:
1. Technology infrastructure (RPM, monitoring, AI middleware)
2. Workforce capacity (home health providers)
3. Regulatory/payment enablement (reimbursement, licensure)

## Services Addressable at Home

**Already feasible for home delivery:** Primary care, outpatient-specialist consults, hospice, outpatient behavioral health

**Stitchable capabilities requiring technology integration:** Dialysis, post-acute care, long-term care, infusions

## Demand Signal (2020-2021)

- 94% of Medicare beneficiaries prefer home-based post-acute care
- 16% of 65+ respondents reported being more likely to receive home health post-pandemic (McKinsey Consumer Health Insights, June 2021)
- COVID catalyzed telehealth adoption and created expectations for care delivery shift

## Enabling Technology Stack (Projected)

The projection assumes rapid scaling of the technology layer that makes home-based care safe and economically viable:

- Remote patient monitoring market: $29B → $138B (2024-2033), 19% CAGR
- AI in RPM: $2B → $8.4B (2024-2030), 27.5% CAGR
- Home healthcare is the fastest-growing RPM end-use segment at 25.3% CAGR
- 71M Americans expected to use RPM by 2025

This technology scaling is not optional—it is the infrastructure that makes home-based care economically viable and clinically safe. Without continuous monitoring, the cost advantage disappears and quality risk increases.

## Evidence of Cost Advantage (Supporting the Projection)

- Johns Hopkins hospital-at-home program: 19-30% cost savings versus in-hospital care
- Systematic review of heart failure home care: 52% lower costs than facility-based management
- RPM-enabled chronic disease management: significant reduction in avoidable hospitalizations

The projection assumes this cost advantage persists at scale and that quality does not degrade—both testable claims given that the 2025 timeline has now passed.

## Critical Assumptions

The projection rests on three simultaneous transitions:
1. **Technology adoption** — RPM scaling from $29B to $138B
2. **Workforce scaling** — Home health capacity 3-4x increase
3. **Regulatory adaptation** — Payment and licensure enabling home-based care

All three must proceed without friction for the projection to hold. Actual 2025-2026 data would show whether these assumptions held.

## Confidence Calibration: Experimental

Rated `experimental` rather than `likely` because:

1. **Single-source projection** — McKinsey 2021 report is the primary source; no independent validation of the $265B figure from other research firms
2. **Timeline now testable** — The 2025 deadline has passed. Validation requires actual CMS/Medicare data on care site migration through 2025, which is not yet available in this extraction
3. **Capacity assumptions untested** — The 3-4x workforce scaling assumption has not been validated; home health labor constraints may prevent the projected shift
4. **Technology scaling risk** — RPM market projections ($29B→$138B) are from market research firms, not validated adoption data

---

Relevant Notes:
- [[continuous health monitoring is converging on a multi-layer sensor stack of ambient wearables periodic patches and environmental sensors processed through AI middleware]]
- [[healthcares defensible layer is where atoms become bits because physical-to-digital conversion generates the data that powers AI care while building patient trust that software alone cannot create]]
- [[value-based care transitions stall at the payment boundary because 60 percent of payments touch value metrics but only 14 percent bear full risk]]
- [[the healthcare attractor state is a prevention-first system where aligned payment continuous monitoring and AI-augmented care delivery create a flywheel that profits from health rather than sickness]]

Topics:
- [[domains/health/_map]]
