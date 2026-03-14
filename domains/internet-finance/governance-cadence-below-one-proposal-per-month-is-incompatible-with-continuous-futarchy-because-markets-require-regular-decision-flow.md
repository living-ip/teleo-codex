---
type: claim
domain: internet-finance
description: "Empirical analysis of 13 DeSci DAOs shows most operate below 1 proposal/month, too infrequent for futarchy's continuous market advantage"
confidence: likely
source: "Frontiers in Blockchain, DeSci DAO governance cadence analysis (2025)"
created: 2026-03-11
secondary_domains: [collective-intelligence]
---

# Governance cadence below one proposal per month is incompatible with continuous futarchy because prediction markets require regular decision flow to maintain liquidity and participant engagement

An empirical study of 13 DeSci DAOs (AthenaDAO, BiohackerDAO, CerebrumDAO, CryoDAO, GenomesDAO, HairDAO, HippocratDAO, MoonDAO, PsyDAO, VitaDAO, and others) found that most operate below 1 proposal per month. This low governance cadence creates structural problems for futarchy adoption:

1. **Liquidity fragmentation:** Each proposal creates new conditional token markets. With <1 proposal/month, capital is spread across too few markets to maintain depth.

2. **Participant disengagement:** Traders need regular opportunities to deploy capital and demonstrate skill. Months between decisions means participants drift away.

3. **Information staleness:** Futarchy's advantage is continuous price discovery. Low proposal frequency means prices update infrequently, reducing the information advantage over periodic voting.

This explains why [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] — the mechanism requires a minimum decision throughput to function effectively.

## Evidence

**DeSci DAO Governance Cadence (2025 data):**
- Most DeSci DAOs: <1 proposal/month
- Only some DAOs exhibit governance tempo "compatible with continuous outcome-based decision processes"
- Paper does not specify which DAOs meet the threshold, but the aggregate finding is clear

**Theoretical Mechanism:**
- Futarchy's value proposition includes continuous market-based governance
- "Continuous" requires regular decision flow to maintain market infrastructure
- Below a threshold frequency, the overhead of market creation exceeds the benefit

**Comparison to MetaDAO:**
- MetaDAO has higher proposal frequency but still faces [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]]
- This suggests the threshold is higher than DeSci DAOs' current cadence

## Implications

This is a **scope condition** for futarchy adoption, not a fundamental limitation:

**Organizations well-suited for futarchy:**
- High proposal frequency (multiple decisions per week)
- Continuous capital allocation (investment DAOs, protocol treasuries)
- Operational decisions requiring rapid iteration

**Organizations poorly suited for futarchy:**
- Infrequent strategic decisions (quarterly board votes)
- Mission-driven organizations with slow decision cycles
- Early-stage projects without established governance rhythm

DeSci DAOs fall into the second category because scientific research has long timelines and infrequent funding decisions. This doesn't mean futarchy is wrong for DeSci — it means DeSci DAOs need to either increase governance cadence or accept that futarchy will function as an occasional tool rather than continuous infrastructure.

## Relationship to Existing Claims

This finding supports [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] by identifying governance cadence as a structural driver of trading volume. Low frequency → thin markets → limited information aggregation → futarchy adds less value.

It also relates to [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — liquidity requirements are harder to meet when proposals are infrequent.

---

Relevant Notes:
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]]
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]]
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]]

Topics:
- domains/internet-finance/_map
- core/mechanisms/_map