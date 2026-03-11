# Attribution Schema

Attribution tracks who contributed what to the knowledge base. Every claim traces back to the people and agents who produced it. Attribution is PUBLIC from day 1 — contributor profiles show a graphic of contributions over time.

## Design Principles

1. **Trace everything**: every claim should trace back to who suggested the research mission that produced it
2. **Role-specific**: different contribution types have different value — attribution records the role, not just the name
3. **Pseudonymous-first**: contributors use handles, not legal names. Handles persist across contributions.
4. **Git-native**: the Pentagon-Agent trailer in git commits is the foundation. External contributor attribution extends this same pattern into YAML frontmatter.
5. **Cumulative**: a contributor's full history is reconstructable from the knowledge base. No contribution is invisible.

## The Five Contributor Roles

| Role | What They Do | Example |
|------|-------------|---------|
| **sourcer** | Identifies the source material or research direction that led to this claim | "Look into Kalshi's revenue model" or shares an article |
| **extractor** | Extracts the specific claim from source material — separates signal from noise, writes the prose-as-title | Agent or human who reads the source and produces the claim file |
| **challenger** | Tests the claim through counter-evidence, boundary conditions, or adversarial review | "This doesn't hold when markets are thin" |
| **synthesizer** | Connects this claim to other claims, producing cross-domain insight | "This mechanism is isomorphic to X in health domain" |
| **reviewer** | Evaluates claim quality against the KB quality gates and approves/rejects | Leo's eval role, or peer reviewers |

A single person/agent can hold multiple roles on the same claim. A claim can have multiple people in the same role.

## Claim Frontmatter Extension

Add an `attribution` block to claim YAML frontmatter:

```yaml
---
type: claim
domain: internet-finance
description: "..."
confidence: likely
source: "Theia Research 2025 annual letter, analysis by Rio"
created: 2026-03-11

# Attribution (new)
attribution:
  sourcer:
    - handle: "m3taversal"
      context: "directed research into Theia's investment thesis"
    - handle: "@theiaresearch"
      context: "published the annual letter"
  extractor:
    - handle: "rio"
      agent_id: "760F7FE7-5D50-4C2E-8B7C-9F1A8FEE8A46"
  challenger: []
  synthesizer: []
  reviewer:
    - handle: "leo"
      agent_id: "294C3CA1-0205-4668-82FA-B984D54F48AD"
---
```

## Attribution Fields

### Per-role entry

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| handle | string | yes | Contributor's persistent pseudonymous identity |
| agent_id | UUID | if agent | Pentagon agent UUID (agents only) |
| context | string | no | What specifically this contributor did in this role |
| date | date | no | When the contribution was made (defaults to claim created date) |

### Role-specific notes

- **sourcer**: can be external (X handle, author name) or internal (agent, m3taversal). The `context` field records what research direction or source they provided.
- **extractor**: usually an agent. The `agent_id` field links to the Pentagon agent. For automated extraction pipelines, record the extraction model in `context` (e.g., "MiniMax M2.5 extract → Haiku 4.5 review").
- **challenger**: populated when someone challenges the claim and the challenge is substantive (not just disagreement, but counter-evidence or boundary conditions). Empty array until challenged.
- **synthesizer**: populated when someone connects this claim to claims in other domains. Cross-domain synthesis is the highest-value contribution type.
- **reviewer**: populated during PR review. Records who evaluated and approved.

## Backwards Compatibility

The existing `source` field continues to serve as a human-readable one-liner for quick reference. The `attribution` block provides the structured, queryable version. Both coexist:

- `source`: "Theia Research 2025 annual letter, analysis by Rio" (human-readable)
- `attribution`: structured role-by-role breakdown (machine-readable)

For claims created before attribution was introduced, `source` remains the only attribution data. No backfill required, but claims can be enriched with `attribution` blocks as they're updated.

## Git Trailer Integration

Agent contributions are also recorded in git commit trailers:

```
Pentagon-Agent: Rio <760F7FE7-5D50-4C2E-8B7C-9F1A8FEE8A46>
```

The git trailer records WHO committed the change. The YAML attribution records WHO contributed WHAT in WHICH ROLE. These are complementary:
- Git trailer = "who made this change to the repository"
- YAML attribution = "who produced this knowledge and in what capacity"

A single commit may create 10 claims. The trailer says Rio committed them. The attribution on each claim may credit different sourcers, different original research directions, different external authors.

## Contributor Profiles

Contributor profiles are reconstructed from the knowledge base, not stored separately. To build a profile:

1. **Query**: search all claim `attribution` blocks for a given `handle`
2. **Aggregate**: count contributions by role, domain, confidence level, date
3. **Visualize**: contribution-over-time graphic showing when and how they contributed

This means:
- No separate "contributor database" to maintain
- Profiles are always consistent with the actual KB state
- New contributions automatically appear in profiles
- Attribution disputes are resolved by editing claim frontmatter

### Person Entity Bridge

When a contributor has enough contributions to warrant tracking, their person entity (`entities/{domain}/{handle}.md`) gains `contributor: true` and links to their contributions:

```yaml
# In person entity
contributor: true
contributions:
  - role: sourcer
    claim: "futarchy is manipulation-resistant..."
    date: 2026-01-15
  - role: challenger
    claim: "token voting DAOs offer no minority protection..."
    date: 2026-02-20
first_contribution: 2026-01-15
attribution_handle: "@theiaresearch"
```

## Governance

- Attribution is added at extraction time (extractor + sourcer) and updated during review (reviewer) and challenge (challenger)
- Synthesizer attribution is added when cross-domain connections are made, which may happen well after initial creation
- Disputes about attribution are resolved through the normal PR process
- Removing attribution requires justification (e.g., the sourcer was misidentified)

## Contribution Weights

Role weights determine how much each contribution type counts toward a contributor's weighted score. Weights are **global policy**, not per-claim data — they live in `schemas/contribution-weights.yaml`, not in claim frontmatter.

Why weights are global, not per-claim:
1. Weights are policy (how much we value each role), not data (who did what)
2. Weights evolve as bottlenecks shift — updating one config file beats migrating 400+ claims
3. Per-claim weights create gaming incentive to inflate role on high-value claims

The build pipeline reads `contribution-weights.yaml` and multiplies role counts × weights to produce weighted scores. The frontend displays both raw counts (by role) and the weighted score.

See `schemas/contribution-weights.yaml` for current weights and rationale.

## Build Artifacts

The website build pipeline (extract-graph-data.py) produces a `contributors.json` artifact alongside graph-data.json and claims-context.json:

```json
{
  "contributors": [
    {
      "handle": "naval",
      "roles": {"sourcer": 12, "extractor": 0, "challenger": 3, "synthesizer": 1, "reviewer": 0},
      "weighted_score": 5.4,
      "domains": {"internet-finance": 8, "grand-strategy": 5, "ai-alignment": 3},
      "first_contribution": "2026-02-15",
      "latest_contribution": "2026-03-11",
      "claim_count": 16,
      "timeline": [
        {"date": "2026-02", "count": 3, "domains": ["internet-finance"]},
        {"date": "2026-03", "count": 13, "domains": ["internet-finance", "grand-strategy"]}
      ]
    }
  ]
}
```

This is a static file rebuilt on every merge to main (~15 minute staleness). The frontend reads it at page load — no API or runtime queries needed.

**Timeline**: Monthly granularity. Used by the frontend for contribution heatmap or sparkline graphic (Cory requirement).

## Implementation Priority

1. **Now**: Add `attribution` block to new claims going forward. No backfill required.
2. **Soon**: Rhea adds attribution aggregation pass to extract-graph-data.py, producing contributors.json.
3. **Soon**: Frontend contributor profile pages — handle + sparkline + domain pie + top claims by role.
4. **Later**: Automated attribution from the extraction pipeline (MiniMax → Haiku → agent).
