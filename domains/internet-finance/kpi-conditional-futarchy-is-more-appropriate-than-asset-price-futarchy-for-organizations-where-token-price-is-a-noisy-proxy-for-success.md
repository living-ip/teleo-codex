---
type: claim
domain: internet-finance
description: "Academic paper argues KPI-conditional markets outperform coin-price futarchy when token markets are thin or coupled to external sentiment"
confidence: experimental
source: "Frontiers in Blockchain, DeSci futarchy paper (2025)"
created: 2026-03-11
secondary_domains: [collective-intelligence]
challenged_by:
  - "coin price is the fairest objective function for asset futarchy"
---

# KPI-conditional futarchy is more appropriate than asset-price futarchy for organizations where token price is a noisy proxy for organizational success

The standard futarchy formulation uses token price as the objective function: "vote on values, bet on beliefs" where beliefs are about future token price. But a peer-reviewed academic study of DeSci DAOs argues that **KPI-conditional markets** — forecasting proposal-specific key performance indicators rather than token price — are more appropriate when:

1. Token markets are thinly traded (low liquidity makes price manipulation easy)
2. Token price is tightly coupled to external market sentiment (crypto market beta dominates organizational alpha)
3. Organizational success has measurable non-price indicators (research outputs, user growth, scientific milestones)

This directly challenges [[coin price is the fairest objective function for asset futarchy]], which assumes token price efficiently aggregates all information about organizational value.

## Evidence

**DeSci DAO Context:**
- Early-stage science DAOs have thin token markets with low trading volume
- Token prices are "tightly coupled to crypto market sentiment" — external volatility drowns out governance signal
- Scientific success has clear KPIs: papers published, patents filed, clinical trial progression, researcher engagement

**Paper's Argument:**
- "KPI-conditional futarchy" forecasts proposal-specific outcomes (e.g., "will this grant produce a peer-reviewed publication within 18 months?")
- This separates governance signal from market noise
- Participants bet on measurable outcomes rather than speculating on token price movements

**Theoretical Framing:**
- Asset-price futarchy assumes token price is a sufficient statistic for organizational welfare
- This assumption breaks when price is dominated by external factors (market sentiment, liquidity constraints, speculation)
- KPI-conditional markets directly measure what the organization cares about

## Relationship to Existing KB Claims

This challenges the universality of [[coin price is the fairest objective function for asset futarchy]]. That claim may hold for:
- Liquid token markets where price discovery is efficient
- Organizations where token value directly reflects organizational success
- Contexts where participants are primarily token holders (aligned incentives)

But KPI-conditional futarchy may be superior for:
- Illiquid or nascent token markets
- Organizations with non-financial mission objectives
- Contexts where token price is dominated by external noise

## Implementation Considerations

KPI-conditional markets face their own challenges:
- **Metric gaming:** Participants optimize for the measured KPI rather than true organizational welfare (Goodhart's Law)
- **Verification complexity:** KPIs require trusted oracles or governance to determine outcomes
- **Delayed resolution:** Scientific outcomes take months/years to verify, creating long market resolution times

Asset-price futarchy has the advantage of continuous, permissionless price discovery. KPI-conditional markets trade this for reduced noise and better mission alignment.

## Scope

This is a theoretical argument supported by context analysis, not experimental evidence comparing KPI-conditional vs asset-price futarchy head-to-head. The paper's empirical work (VitaDAO simulation) used KPI-conditional markets but didn't test them against asset-price alternatives.

The claim is domain-specific: it applies most strongly to mission-driven organizations with measurable non-price objectives and thin token markets. It may not generalize to liquid DeFi protocols or meme coins where price IS the primary success metric.

---

Relevant Notes:
- [[coin price is the fairest objective function for asset futarchy]] — challenged by this claim
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]]
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]]

Topics:
- domains/internet-finance/_map
- core/mechanisms/_map