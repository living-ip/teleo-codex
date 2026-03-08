---
type: source
title: "Labor market impacts of AI: A new measure and early evidence"
author: Maxim Massenkoff and Peter McCrory (Anthropic Research)
date: 2026-03-05
url: https://www.anthropic.com/research/labor-market-impacts
domain: ai-alignment
secondary_domains: [internet-finance, health, collective-intelligence]
status: processed
processed_by: theseus
processed_date: 2026-03-08
claims_extracted:
  - "the gap between theoretical AI capability and observed deployment is massive across all occupations because adoption lag not capability limits determines real-world impact"
  - "AI displacement hits young workers first because a 14 percent drop in job-finding rates for 22-25 year olds in exposed occupations is the leading indicator that incumbents organizational inertia temporarily masks"
  - "AI-exposed workers are disproportionately female high-earning and highly educated which inverts historical automation patterns and creates different political and economic displacement dynamics"
cross_domain_flags:
  - "Rio: labor displacement economics — 14% drop in young worker hiring in exposed occupations, white-collar Great Recession scenario modeling"
  - "Vida: healthcare practitioner exposure at 58% theoretical / 5% observed — massive gap, implications for clinical AI adoption claims"
  - "Theseus: capability vs observed usage gap as jagged frontier evidence — 96% theoretical exposure in Computer & Math but only 32% actual usage"
---

# Labor Market Impacts of AI: A New Measure and Early Evidence

Massenkoff & McCrory, Anthropic Research. Published March 5, 2026.

## Summary

Introduces "observed exposure" metric combining theoretical LLM capability (Eloundou et al. framework) with actual Claude usage data from Anthropic Economic Index. Finds massive gap between what AI could theoretically do and what it's actually being used for across all occupational categories.

## Key Data

### Theoretical vs Observed Exposure (selected categories)
| Occupation | Theoretical | Observed |
|---|---|---|
| Computer & Math | 96% | 32% |
| Business & Finance | 94% | 28% |
| Office & Admin | 94% | 42% |
| Management | 92% | 25% |
| Legal | 88% | 15% |
| Arts & Media | 85% | 20% |
| Architecture & Engineering | 82% | 18% |
| Life & Social Sciences | 80% | 12% |
| Healthcare Practitioners | 58% | 5% |
| Healthcare Support | 38% | 4% |
| Construction | 18% | 3% |
| Grounds Maintenance | 10% | 2% |

### Most Exposed Occupations
- Computer Programmers: 75% observed coverage
- Customer Service Representatives: second-ranked
- Data Entry Keyers: 67% coverage

### Employment Impact (as of early 2026)
- Zero statistically significant unemployment increase in exposed occupations
- 14% drop in job-finding rate for young workers (22-25) in exposed fields — "just barely statistically significant"
- Older workers unaffected
- Authors note multiple alternative explanations for young worker effect

### Demographic Profile of Exposed Workers
- 16 percentage points more likely female
- 47% higher average earnings
- 4x higher rate of graduate degrees (17.4% vs 4.5%)

### Great Recession Comparison
- 2007-2009: unemployment doubled from 5% to 10%
- Comparable doubling in top quartile AI-exposed occupations (3% to 6%) would be detectable in their framework
- Has NOT happened yet — but framework designed for ongoing monitoring

## Methodology
- O*NET database (~800 US occupations)
- Anthropic Economic Index (Claude usage data, Aug-Nov 2025)
- Eloundou et al. (2023) theoretical feasibility ratings
- Difference-in-differences comparing exposed vs unexposed cohorts
- Task-level analysis, not industry classification

## Alignment-Relevant Observations

1. **The gap IS the story.** 97% of observed Claude usage involves theoretically feasible tasks, but observed coverage is a fraction of theoretical coverage in every category. The gap measures adoption lag, not capability limits.

2. **Young worker hiring signal.** The 14% drop in job-finding rate for 22-25 year olds in exposed fields may be the leading indicator. Entry-level positions are where displacement hits first — incumbents are protected by organizational inertia.

3. **White-collar vulnerability profile.** Exposed workers are disproportionately female, high-earning, and highly educated. This is the opposite of historical automation patterns (which hit low-skill workers first). The political and economic implications of displacing this demographic are different.

4. **Healthcare gap is enormous.** 58% theoretical / 5% observed in healthcare practitioners. This connects directly to Vida's claims about clinical AI adoption — the capability exists, the deployment doesn't. The bottleneck is institutional, not technical.

5. **Framework for ongoing monitoring.** This isn't a one-time study — it's infrastructure for tracking displacement as it happens. The methodology (prospective monitoring, not post-hoc attribution) is the contribution.
