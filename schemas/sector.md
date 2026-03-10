# Sector Schema

Sectors are competitive landscapes — maps of who is competing, what they believe, and where the industry is heading. Sectors sit between entities (individual companies) and the knowledge base (claims about the world), providing the diagnostic layer that answers: "who is winning, who is losing, and why?"

```
Evidence → Claims (what's true)     ←→ Sectors (who's competing, where it's heading)
         → Entities (who's doing what)  ↗
              ↓
         Beliefs (what we think it means)
              ↓
         Positions (what we'd bet on)
```

Claims are static propositions. Entities are dynamic objects. Sectors are competitive dynamics — the relationships between entities in a shared market, and the evolutionary trajectory of the market itself.

## What Sectors Capture That Claims and Entities Don't

| Layer | What it answers | Temporal model |
|-------|----------------|---------------|
| Claims | "Is this true?" | Point-in-time propositions |
| Entities | "What is this company doing?" | Timeline of events |
| **Sectors** | "Who is winning and why? Where is this heading?" | Competitive dynamics over time |

Sectors are diagnostic: they tell agents where capital, talent, and attention are flowing. They connect entity-level facts to claim-level reasoning, making the "so what?" explicit.

## YAML Frontmatter

```yaml
---
type: sector
name: "Futarchic Governance / Decision Markets"
domain: internet-finance | entertainment | health | ai-alignment | space-development
description: "one sentence capturing the competitive landscape and why it matters"
tracked_by: rio  # agent responsible for keeping this current
status: emerging | growing | mature | consolidating | declining
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `sector` |
| name | string | Human-readable sector name |
| domain | enum | Primary domain |
| description | string | What this competitive landscape is and why we track it |
| tracked_by | string | Agent responsible for updates |
| status | enum | Sector lifecycle stage |
| created | date | When sector file was created |

## Optional Fields

| Field | Type | Description |
|-------|------|-------------|
| last_updated | date | When sector was last reviewed for accuracy |
| secondary_domains | list | Other domains this sector touches |
| market_size | string | Total addressable market estimate with date |
| growth_trajectory | string | Brief growth direction (e.g., "30% CAGR", "flat since 2021", "accelerating") |
| regulatory_environment | string | Brief regulatory posture (e.g., "emerging clarity", "hostile", "supportive") |
| tags | list | Discovery tags |

## Body Format

```markdown
# [Sector Name]

## Market Thesis
[Where is this sector heading? What is the attractor state? This is the investment thesis at sector level — it links directly to KB claims about industry evolution. The thesis IS the evolutionary trajectory.]

**Key claim dependencies:**
- [[claim-title]] — how this claim shapes the thesis
- [[claim-title]] — what this claim predicts about sector evolution

**Thesis status:** ACTIVE | MONITORING | INVALIDATED
[An active thesis is being confirmed by evidence. Monitoring means mixed signals. Invalidated means the thesis broke — document why.]

## Player Map

### [Player Category 1] (e.g., "Purpose-built insurgents")

| Entity | Value Proposition | Thesis Dependency | Trajectory |
|--------|------------------|-------------------|------------|
| [[entity-name]] | What they're betting on | Which KB claim their success depends on | Growing / Stable / Declining / Pivoting |
| [[entity-name]] | ... | ... | ... |

### [Player Category 2] (e.g., "Acquisition-based incumbents")

| Entity | Value Proposition | Thesis Dependency | Trajectory |
|--------|------------------|-------------------|------------|
| [[entity-name]] | ... | ... | ... |

### Departed / Pivoted
[Companies that exited, failed, or pivoted away from this sector. Why they left is often the most informative data point.]

| Entity | What Happened | When | Lesson |
|--------|--------------|------|--------|
| [[entity-name]] | Liquidated — governance failure | 2026-03 | Futarchy couldn't prevent misaligned founder |

## Competitive Dynamics
[What determines who wins in this sector? What's the key competitive dimension?]

**Primary axis:** [e.g., "purpose-built vs acquisition-based integration"]
**Secondary axis:** [e.g., "regulatory positioning under CMS tightening"]

[Prose analysis: which competitive forces matter, what moats exist, where value is concentrating]

## Moat Classification
[For each major player, what type of defensibility exists]

| Entity | Moat Type | Durability |
|--------|-----------|------------|
| [[entity-name]] | Network effects | Strong — multi-sided market tipping |
| [[entity-name]] | Regulatory capture | Medium — depends on policy stability |
| [[entity-name]] | Technology | Weak — replicable within 12 months |
| [[entity-name]] | Brand / community | Strong — cultural not technical |

Moat types: network effects, switching costs, regulatory capture, technology, brand, data/scale, community.

## Key Metrics

[What numbers tell you who's winning? Track over time, not as snapshots.]

| Metric | Why It Matters | Current Leader |
|--------|---------------|----------------|
| TVL / AUM | Capital commitment | [[entity]] — $X |
| Volume / Revenue | Activity level | [[entity]] — $X |
| User growth | Adoption trajectory | [[entity]] — X% MoM |
| [sector-specific metric] | [why] | [[entity]] |

**Measurement note:** Metrics are dated snapshots. Each sector update should add a new dated entry to the Timeline section, not overwrite previous values. Trajectory > snapshot.

## Catalysts & Risks

[Upcoming events that could reshape this sector. Time-sensitive by nature.]

| Event | Expected Timing | Impact | Affects |
|-------|----------------|--------|---------|
| [regulatory ruling] | Q3 2026 | High — could eliminate category | [[entity-1]], [[entity-2]] |
| [product launch] | 2026-06 | Medium — new competitive pressure | [[entity-3]] |
| [funding round] | Unknown | Low — confirms trajectory | [[entity-4]] |

## Relationship to KB

**Claims that shape this sector:**
- [[claim-title]] — [how it affects competitive dynamics]

**Beliefs that depend on this sector's evolution:**
- [[belief-title]] — [what sector outcome would validate/invalidate]

**Cross-domain connections:**
- [[claim-from-other-domain]] — [the cross-domain pattern this sector illustrates]

## Timeline

[Dated snapshots of competitive position changes. This is the temporal layer — it accumulates rather than overwrites.]

- **YYYY-MM-DD** — [Event: new entrant, exit, regulatory change, metric shift]
- **YYYY-MM-DD** — [Event]

---

Relevant Sectors:
- [[adjacent-sector]] — relationship description

Topics:
- [[domain-map]]
```

## Governance

- **Who creates:** Any agent can propose a sector file in their domain. New sectors require PR review (Leo + domain peer) to ensure the competitive landscape is real and the player map is grounded.
- **All updates go through eval.** Sector files are diagnostic artifacts — factual updates, thesis changes, player additions/removals, competitive analysis updates all go through PR review. The eval pipeline verifies: are entity links valid? Are claim dependencies accurate? Is the thesis grounded?
- **Staleness:** Sectors not updated in 60 days get flagged. The `tracked_by` agent is responsible.
- **Sector retirement:** If a sector merges with another or ceases to be a meaningful competitive landscape, set `status: declining` with explanation. Don't delete — the evolution is informative.

## Guardrails (from Theseus)

Three failure modes to watch for in sector analysis:

### 1. Circular reasoning
A company's behavior can illustrate a claim without proving it. When linking entities to claims, explicitly distinguish:
- **Entity cited AS evidence for claim** — the company's results support the claim
- **Claim used TO evaluate entity** — the claim shapes how we assess the company

These are different relationships. Conflating them creates circular reasoning where company behavior becomes evidence for the claim their business depends on.

### 2. Survivorship bias
Sectors naturally overrepresent companies that haven't failed yet. The "Departed / Pivoted" section exists to counteract this. Failed companies whose thesis was wrong are often the most informative data points. Include them.

### 3. Stale coupling
When a claim changes confidence, sector files that depend on it must be flagged for review. The `depends_on` links in the Market Thesis section create this dependency graph. KB health checks should verify that sector-claim links are current.

## Filing Convention

**Location:** `sectors/{domain}/{slugified-sector-name}.md`

```
sectors/
  internet-finance/
    futarchic-governance.md
    permissionless-capital-formation.md
    defi-lending.md
    permissionless-leverage.md
    stablecoins.md
  entertainment/
    community-owned-ip.md
    genai-creative-tools.md
    ai-native-studios.md
    creator-economy-platforms.md
    content-provenance.md
  health/
    payvidors.md
    clinical-ai.md
    consumer-health-monitoring.md
    glp1-metabolic-therapeutics.md
    senior-care-infrastructure.md
  ai-alignment/
    frontier-ai-labs.md
    agent-infrastructure.md
    ai-safety-research.md
    ai-governance.md
    collective-intelligence-distributed-ai.md
```

## How Sectors Feed Beliefs

Sectors are diagnostic inputs to agent reasoning:

1. **Thesis validation:** If a sector's market thesis depends on a KB claim and the sector's evolution contradicts the thesis, that's evidence the claim may be wrong.
2. **Competitive intelligence:** Which company's approach is winning reveals which underlying mechanism is strongest — direct evidence for mechanism claims.
3. **Cross-domain pattern detection:** When the same competitive dynamic appears across sectors in different domains, it's evidence for a cross-domain claim (e.g., "AI cost collapse benefits insurgents or incumbents" appearing in health, entertainment, and finance simultaneously).

## Key Differences from Other Schemas

| | Claims | Entities | Sectors |
|---|---|---|---|
| Nature | Propositions | Objects | Competitive dynamics |
| Temporal | Mostly static | Event timeline | Evolutionary trajectory |
| Ownership | Commons | Per-agent (tracked_by) | Per-agent (tracked_by) |
| Purpose | Reasoning chains | Situational awareness | Strategic intelligence |
| Links to KB | IS the KB | References claims | Depends on claims + contains entities |
| Update frequency | When evidence changes | When entity changes | When competitive dynamics shift |
