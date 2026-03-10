# Entity Schema

Entities are tracked objects in the world — companies, protocols, people, markets — that have attributes changing over time. Entities sit alongside claims as a parallel input to beliefs and positions.

```
Evidence → Claims (what's true about the world)
         → Entities (who's doing what in the world)
              ↓
         Beliefs (what we think it means)
              ↓
         Positions (what we'd bet on)
```

Claims are static propositions with confidence levels. Entities are dynamic objects with temporal attributes. Both feed into agent reasoning.

## Entity Types

| Type | What it tracks | Examples |
|------|---------------|----------|
| `company` | Protocol, startup, fund, DAO | MetaDAO, Aave, Solomon, Devoted Health |
| `person` | Individual with tracked positions/influence | Stani Kulechov, Gabriel Shapiro, Proph3t |
| `market` | Industry segment or ecosystem | Futarchic markets, DeFi lending, Medicare Advantage |

## YAML Frontmatter

```yaml
---
type: entity
entity_type: company | person | market
name: "Display name"
domain: internet-finance | entertainment | health | ai-alignment | space-development
handles: ["@StaniKulechov", "@MetaLeX_Labs"]  # social/web identities
website: https://example.com
status: active | inactive | acquired | liquidated | emerging
tracked_by: rio  # which agent owns this entity
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `entity` |
| entity_type | enum | `company`, `person`, or `market` |
| name | string | Canonical display name |
| domain | enum | Primary domain |
| status | enum | Current operational status |
| tracked_by | string | Agent responsible for keeping this current |
| created | date | When entity file was created |

## Optional Fields (all entity types)

| Field | Type | Description |
|-------|------|-------------|
| handles | list | Social media handles, URLs |
| website | string | Primary web presence |
| last_updated | date | When entity was last reviewed for accuracy |
| tags | list | Discovery tags |
| secondary_domains | list | Other domains this entity is relevant to |

## Company-Specific Fields

```yaml
# Company attributes
founded: YYYY-MM-DD
founders: ["[[person-entity]]"]
category: "DeFi lending protocol"
stage: seed | growth | mature | declining | liquidated
market_cap: "$X"  # latest known, with date in body
funding: "$X raised"  # total known funding
key_metrics:
  tvl: "$40B"
  volume: "$X"
  users: "X"
competitors: ["[[competitor-entity]]"]
built_on: ["Solana", "Ethereum"]
```

## Person-Specific Fields

People entities serve dual purpose: they track public figures we analyze AND serve as contributor profiles when those people engage with the KB. One file, two functions — the file grows from "person we track" to "person who participates."

```yaml
# Person attributes
role: "Founder & CEO of Aave"
organizations: ["[[company-entity]]"]
followers: 290000  # primary platform
credibility_basis: "10 years building largest DeFi protocol"
known_positions:
  - "DAOs need founder-led execution with onchain accountability"
  - "DeFi must capture traditional lending market"
influences: ["[[person-entity]]"]  # who they cite/follow
influenced_by: ["[[person-entity]]"]

# Contributor attributes (populated if/when they engage with the KB)
contributor: false  # becomes true when they contribute
contributions: []  # list of claims they proposed, challenged, or enriched
first_contribution: null  # date of first KB interaction
attribution_handle: null  # how they want to be credited
```

## Market-Specific Fields

```yaml
# Market attributes
total_size: "$120B TVL"
growth_rate: "flat since 2021"
key_players: ["[[company-entity]]"]
market_structure: "winner-take-most | fragmented | consolidating"
regulatory_status: "emerging clarity | hostile | supportive"
```

## Body Format

```markdown
# [Entity Name]

## Overview
[What this entity is, why we track it — 2-3 sentences]

## Current State
[Latest known attributes, metrics, positioning — updated when new info arrives]

## Timeline
- **YYYY-MM-DD** — [Event: founded, launched, acquired, pivoted, etc.]
- **YYYY-MM-DD** — [Event]
- **YYYY-MM-DD** — [Event]

## Competitive Position
[Where this entity sits relative to competitors. Market share, differentiation, vulnerabilities.]

## Investment Thesis (if applicable)
[Why this entity is undervalued/overvalued. What catalysts exist. What would change the thesis.]

## Relationship to KB
[Which claims, beliefs, or positions depend on or reference this entity]
- [[claim-title]] — how this entity relates
- [[belief]] — what this entity's trajectory means for our worldview

---

Relevant Entities:
- [[competitor]] — competitive relationship
- [[founder]] — founded by

Topics:
- [[domain-map]]
```

## Governance

- **Who creates:** Any agent can create entities in their domain. `tracked_by` field sets ongoing ownership.
- **All updates go through eval.** Entity changes — factual attribute updates, thesis changes, competitive analysis, timeline additions — all go through PR review. Entities are diagnostic artifacts: every change is a signal about the world, and the eval pipeline verifies that signal is accurate and properly linked. No shortcuts.
- **Staleness:** Entities not updated in 90 days get flagged. The `tracked_by` agent is responsible for keeping entities current.
- **Retirement:** Entities that cease to exist get `status: liquidated` or `status: acquired` with explanation, not deleted. Their history remains valuable.

## Filing Convention

**Location:** `entities/{domain}/{slugified-name}.md`

```
entities/
  internet-finance/
    metadao.md
    aave.md
    solomon.md
    stani-kulechov.md
    gabriel-shapiro.md
  entertainment/
    claynosaurz.md
    pudgy-penguins.md
    matthew-ball.md
  health/
    devoted-health.md
    function-health.md
```

**Filename:** Lowercase slugified name. Companies use brand name, people use full name.

## How Entities Feed Beliefs

When an entity's attributes change (new funding round, market cap shift, product launch, leadership change, liquidation), agents should:
1. Update the entity file
2. Check which claims reference this entity
3. Check which beliefs depend on those claims
4. Flag beliefs for re-evaluation if the entity change is material

This is the same cascade logic as claim updates, extended to entity changes.

## Relationship to Sources

Sources often contain entity information. During extraction, agents should:
- Extract claims (propositions about the world) → `domains/{domain}/`
- Update entities (factual changes to tracked objects) → `entities/{domain}/`
- Both from the same source, in the same PR

## Key Difference from Claims

| | Claims | Entities |
|---|---|---|
| Nature | Propositions (true/false) | Objects (exist/change) |
| Change model | Confidence shifts | Attribute updates |
| Title format | "X is true because Y" | "Company Name" |
| Disagreement | Counter-claims challenge | Competitive analysis compares |
| Value | Reasoning chains | Situational awareness |
| Temporal | Created date, mostly static | Timeline of events |
