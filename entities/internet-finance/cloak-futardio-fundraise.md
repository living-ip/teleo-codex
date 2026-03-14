---
type: entity
entity_type: decision_market
name: "Cloak: Futardio Fundraise"
domain: internet-finance
status: failed
parent_entity: "[[cloak]]"
platform: futardio
proposal_url: "https://www.futard.io/launch/9MqyiXXJUAXQ1Uy5j2EV8hq21UeR3ruukWkZ1XGNhg3R"
proposal_date: 2026-03-03
resolution_date: 2026-03-04
category: fundraise
summary: "Cloak attempted to raise $300K for private DCA infrastructure on Solana through Futardio but received only $1,455 in commitments (0.49% of target)"
key_metrics:
  raise_target: "$300,000"
  total_committed: "$1,455"
  commitment_rate: "0.49%"
  raise_window: "24 hours"
  outcome: "refunded"
tracked_by: rio
created: 2026-03-11
---

# Cloak: Futardio Fundraise

## Summary
Cloak launched a $300K fundraise on Futardio to build private DCA infrastructure on Solana using ZK-proof privacy pools. The 24-hour raise window closed with only $1,455 committed (0.49% of target), triggering automatic refunds per Futardio's all-or-nothing mechanism. This represents one of the lowest commitment rates for a Futardio launch with a substantive product in private beta.

## Market Data
- **Outcome:** Failed (refunded)
- **Raise Target:** $300,000
- **Total Committed:** $1,455 (0.49%)
- **Token:** 8RS
- **ICO Price:** $0.03 per token
- **Proposed FDV:** $477,000
- **Raise Window:** 24 hours (2026-03-03 to 2026-03-04)

## Significance
This fundraise demonstrates the challenge of privacy-focused infrastructure projects attracting capital in permissionless launch environments. Despite having a working product in private beta, integration with established protocols (Privacy.cash, Jupiter), and a detailed technical roadmap, Cloak failed to generate market interest. The 0.49% commitment rate suggests either:
1. Privacy DCA is not a compelling value proposition for Solana users
2. The $300K target was misaligned with demonstrated traction
3. 24-hour launch windows are insufficient for infrastructure projects to build conviction

The team's performance-locked token structure (3M tokens unlocking only at 2x, 4x, 8x, 16x, 32x price multiples with 18-month cliff) represented strong alignment but was insufficient to overcome market skepticism.

## Relationship to KB
- [[cloak]] — parent entity
- [[futardio]] — launch platform
- MetaDAO — futarchy infrastructure
- Demonstrates challenge for futarchy-governed-permissionless-launches-require-brand-separation-to-manage-reputational-liability-because-failed-projects-on-a-curated-platform-damage-the-platforms-credibility
- Tests [[internet-capital-markets-compress-fundraising-timelines]] hypothesis with negative result