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

## Entity Type System

The type system has two layers: **core types** shared by all agents, and **domain-specific extensions** that specialize core types for particular domains. Every entity uses exactly one type.

### Core Types (all domains)

| Type | What it tracks | Examples |
|------|---------------|----------|
| `company` | Organization that operates — startup, fund, DAO, protocol | MetaDAO, Aave, Devoted Health, SpaceX |
| `person` | Individual with tracked positions/influence | Proph3t, Stani Kulechov, Elon Musk |
| `organization` | Government body, regulatory agency, standards body, consortium | SEC, CFTC, NASA, FLI, CMS |
| `product` | Specific product, tool, or platform distinct from its maker | Autocrat, Starlink, Claude |
| `market` | Industry segment or ecosystem | Futarchic markets, DeFi lending, Medicare Advantage |

### Domain-Specific Extensions

Domain extensions are specialized subtypes that inherit from a core type. Use the most specific type available — it determines which fields are relevant.

#### Internet Finance (Rio)

| Type | Extends | What it tracks | Examples |
|------|---------|---------------|----------|
| `protocol` | company | On-chain protocol with TVL/volume metrics | Aave, Drift, Omnipair |
| `token` | product | Fungible token distinct from its protocol | META, SOL, CLOUD |
| `decision_market` | — | Governance proposal, prediction market, futarchy decision | MetaDAO: Hire Robin Hanson |
| `exchange` | company | Trading venue (CEX or DEX) | Raydium, Meteora, Jupiter |
| `fund` | company | Investment vehicle or DAO treasury | Solomon, Theia Research |

#### Space Development (Astra)

| Type | Extends | What it tracks | Examples |
|------|---------|---------------|----------|
| `vehicle` | product | Launch vehicle or spacecraft | Starship, New Glenn, Neutron |
| `mission` | — | Specific spaceflight mission | Artemis III, ESCAPADE |
| `facility` | — | Launch site, factory, or ground infrastructure | Starbase, LC-36 |
| `program` | — | Multi-mission program or initiative | Artemis, Commercial Crew |

#### Health (Vida)

| Type | Extends | What it tracks | Examples |
|------|---------|---------------|----------|
| `therapy` | product | Treatment modality or therapeutic approach | mRNA cancer vaccines, GLP-1 agonists |
| `drug` | product | Specific pharmaceutical product | Ozempic, Keytruda |
| `insurer` | company | Health insurance organization | UnitedHealthcare, Devoted Health |
| `provider` | company | Healthcare delivery organization | Kaiser Permanente, Oak Street Health |
| `policy` | — | Legislation, regulation, or administrative rule | GENIUS Act, CMS 2027 Advance Notice |

#### Entertainment (Clay)

| Type | Extends | What it tracks | Examples |
|------|---------|---------------|----------|
| `studio` | company | Production company or media business | Beast Industries, Mediawan |
| `creator` | person | Individual content creator or artist | MrBeast, Taylor Swift |
| `franchise` | product | IP, franchise, or media property | Claynosaurz, Pudgy Penguins |
| `platform` | product | Distribution or social media platform | YouTube, TikTok, Dropout |

#### AI/Alignment (Theseus)

| Type | Extends | What it tracks | Examples |
|------|---------|---------------|----------|
| `lab` | company | AI research laboratory | Anthropic, OpenAI, DeepMind |
| `model` | product | AI model or model family | Claude, GPT-4, Gemini |
| `framework` | product | Safety framework, governance protocol, or methodology | RSP, Constitutional AI |
| `governance_body` | organization | AI governance or safety organization | AISI, FLI, Partnership on AI |

### Choosing the Right Type

```
Is it a person?                          → person (or domain-specific: creator)
Is it a government/regulatory body?      → organization (or domain-specific: governance_body)
Is it a governance proposal or market?   → decision_market
Is it a specific product/tool?           → product (or domain-specific: drug, model, vehicle, etc.)
Is it an organization that operates?     → company (or domain-specific: lab, studio, insurer, etc.)
Is it a market segment?                  → market
Is it a policy or regulation?            → policy
Is it a space mission?                   → mission
Is it a physical facility?               → facility
Is it a multi-mission program?           → program
```

**Rule:** Use the most specific type available. If a DeFi protocol fits `protocol`, use that instead of `company`. If an AI lab fits `lab`, use that instead of `company`. Domain-specific types carry domain-specific fields.

### Adding New Types

Core types require a schema PR reviewed by Leo. Domain-specific types are agent-managed — add a row to your domain's extension table via PR. No schema-wide changes needed. If a new type could apply to multiple domains, propose it as a core type instead.

### Cross-Domain Entity Dedup

One entity per real-world object. If Anthropic appears in both internet-finance and ai-alignment sources:

1. **First creator owns the file.** Whichever agent creates the entity first files it in their domain (`entities/ai-alignment/anthropic.md`).
2. **Other agents use `secondary_domains`.** The entity gets `secondary_domains: [internet-finance]` so it's discoverable across domains.
3. **Both agents can update.** The `tracked_by` agent is responsible for staleness, but any agent can propose updates via PR when their sources contain new information.
4. **Type follows primary domain.** If Theseus creates it, it's `lab`. If Rio had created it first, it would be `company`. The type reflects the primary tracking perspective.

If two agents independently create the same entity, the reviewer merges them during PR review — keep the richer file, add `secondary_domains` from the other.

## YAML Frontmatter

```yaml
---
type: entity
entity_type: company | person | organization | product | market | decision_market | protocol | token | exchange | fund | vehicle | mission | facility | program | therapy | drug | insurer | provider | policy | studio | creator | franchise | platform | lab | model | framework | governance_body
name: "Display name"
domain: internet-finance | entertainment | health | ai-alignment | space-development
handles: ["@StaniKulechov", "@MetaLeX_Labs"]  # social/web identities
website: https://example.com
status: active | inactive | acquired | liquidated | emerging  # for most types
# Decision markets use: active | passed | failed
tracked_by: rio  # which agent owns this entity
created: YYYY-MM-DD
last_updated: YYYY-MM-DD
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `entity` |
| entity_type | enum | Any type from the type system above |
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

## Decision Market-Specific Fields

Decision markets are individual governance decisions, prediction market questions, or futarchy proposals. Each is its own entity — the proposal name is the title, and structured data (date, outcome, volume, proposer) lives in frontmatter. The parent entity (e.g., MetaDAO) links to its decision markets, and claims can be derived from decision market entities.

Unlike other entity types, decision markets have a **terminal state** — they resolve to `passed` or `failed`. After resolution, the entity is essentially closed. Three states: `active` (market open), `passed` (proposal approved), `failed` (proposal rejected).

```yaml
# Decision market attributes
status: active | passed | failed  # replaces outcome — the status IS the outcome
parent_entity: "[[metadao]]"          # the organization this decision belongs to
platform: "futardio"                  # where the market lives (futardio, polymarket, kalshi)
proposer: "proph3t"                   # who created the proposal
proposal_url: "https://..."           # canonical link to the market/proposal
proposal_date: YYYY-MM-DD            # when proposed/created
resolution_date: YYYY-MM-DD          # when resolved (null if active)
category: "treasury | fundraise | hiring | mechanism | liquidation | grants | strategy"
summary: "One-sentence description of what the proposal does"

# Volume fields are platform-specific:

# Futarchy proposals (governance decisions):
pass_volume: "$150K"              # capital backing pass outcome
fail_volume: "$100K"              # capital backing fail outcome

# Futarchy launches (ICOs via Futardio):
funding_target: "$2M"
total_committed: "$103M"          # total capital committed (demand signal)
amount_raised: "$8M"              # actual capital received after pro-rata

# Prediction markets (Polymarket, Kalshi):
market_volume: "$3.2B"            # total trading volume
peak_odds: "65%"                  # peak probability for primary outcome
```

**Filing convention:** `entities/{domain}/{parent-slug}-{proposal-slug}.md`
Example: `entities/internet-finance/metadao-hire-robin-hanson.md`

**Relationship to parent entity:** The parent entity page should include a "## Key Decisions" summary table with date, title (wiki-linked), proposer, volume, and outcome. Not every proposal warrants a row — only those that materially changed the entity's trajectory. The full detail lives in the decision_market entity file.

```markdown
## Key Decisions
| Date | Proposal | Proposer | Volume | Outcome |
|------|----------|----------|--------|---------|
| 2025-02-10 | [[metadao-hire-robin-hanson]] | proph3t | $X | Passed |
| 2024-03-03 | [[metadao-burn-993-meta]] | proph3t | $X | Passed |
| 2024-06-26 | [[metadao-fundraise-2]] | proph3t | $X | Passed |
```

**What gets a decision_market entity vs. a timeline entry:**
- **Entity:** Proposals with real capital at stake, governance decisions that changed organizational direction, markets that produced notable information, or contested outcomes (significant volume on both sides — a contested failure is more informative than an uncontested pass)
- **Timeline entry only:** Test proposals, spam, trivial parameter tweaks, minor operational minutiae, uncontested routine decisions
- **Estimated ratio:** ~33-40% of real proposals qualify for entity status

**Extraction output for proposal sources:**
1. **Primary:** decision_market entity file with structured frontmatter
2. **Secondary:** Timeline entry on parent entity (one-line summary + date)
3. **Optional:** Claims ONLY if the proposal contains novel mechanism insight, surprising market outcome, or instructive governance dynamics (~20% of proposals)

**Eval checklist for decision_market entities (all mechanical):**
1. `parent_entity` exists in entity index
2. Dates are valid YYYY-MM-DD and chronologically coherent (proposal_date ≤ resolution_date)
3. `status` matches source data (passed/failed/active)
4. Not a duplicate of existing entity
5. Meets significance threshold (not test/spam/trivial)

**Wiki links use filenames only** (e.g., `[[metadao-hire-robin-hanson]]`), not full paths. This means decision market files can be migrated to a subdirectory later without breaking links.

**Body format:**
```markdown
# [Parent Entity]: [Proposal Title]

## Summary
[What the proposal does and why it matters — 2-3 sentences]

## Market Data
- **Volume:** $X
- **Outcome:** Passed/Failed/Pending
- **Key participants:** [notable traders, proposers, commenters]

## Significance
[Why this decision matters — what it reveals about governance dynamics, organizational direction, or mechanism design]

## Relationship to KB
- [[parent-entity]] — governance decision
- [[relevant-claim]] — how this decision relates to broader thesis
```

## Company-Specific Fields

```yaml
# Company attributes (also used by protocol, exchange, fund, lab, studio, insurer, provider)
founded: YYYY-MM-DD
founders: ["[[person-entity]]"]
category: "DeFi lending protocol"
parent: "[[parent-entity]]"  # e.g., [[futardio]] for launched projects
stage: seed | growth | mature | declining | liquidated
market_cap: "$X"  # latest known, with date in body
funding: "$X raised"  # total known funding
key_metrics:
  tvl: "$40B"
  volume: "$X"
  users: "X"
competitors: ["[[competitor-entity]]"]
built_on: ["Solana", "Ethereum"]

# Capital formation fields (for launched/funded entities)
raise_target: "$500K"          # intended raise amount
amount_raised: "$969K"         # actual amount raised
total_committed: "$14.9M"      # total capital committed (shows demand)
# oversubscription_ratio is calculated: total_committed / raise_target
# Do NOT store it — derive it to prevent inconsistency
treasury: "$575K USDC"         # current treasury balance
token_price: "$0.05"           # current token price
monthly_allowance: "$50K"      # approved monthly spend rate
launch_date: YYYY-MM-DD       # when the entity launched/raised
```

## Person-Specific Fields

People entities serve dual purpose: they track public figures we analyze AND serve as contributor profiles when those people engage with the KB. One file, two functions — the file grows from "person we track" to "person who participates."

```yaml
# Person attributes (also used by creator)
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

## Other Core Type Fields

```yaml
# Organization attributes (also used by governance_body)
jurisdiction: "United States"
authority: "Securities regulation"  # what this body governs
parent_body: "[[parent-organization]]"

# Product attributes (also used by token, vehicle, drug, model, framework, franchise, platform)
maker: "[[company-entity]]"  # who built/maintains this
launched: YYYY-MM-DD
category: "futarchy governance program"

# Market attributes
total_size: "$120B TVL"
growth_rate: "flat since 2021"
key_players: ["[[company-entity]]"]
market_structure: "winner-take-most | fragmented | consolidating"
regulatory_status: "emerging clarity | hostile | supportive"
```

**Domain-specific fields:** Each agent adds type-specific fields as they start extracting entities. The fields above cover core types. When Astra creates their first `vehicle` entity, they add vehicle-specific fields to the schema. Complexity is earned from actual use, not designed in advance.

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
    metadao-hire-robin-hanson.md       # decision_market
    metadao-burn-993-percent-meta.md   # decision_market
  entertainment/
    claynosaurz.md
    pudgy-penguins.md
    matthew-ball.md
    beast-industries.md                # studio
  health/
    devoted-health.md                  # insurer
    function-health.md
    ozempic.md                         # drug
  ai-alignment/
    anthropic.md                       # lab
    claude.md                          # model
    rsp.md                             # framework
  space-development/
    spacex.md
    starship.md                        # vehicle
    artemis.md                         # program
```

**Filename:** Lowercase slugified name. Companies use brand name, people use full name. Decision markets use `{parent}-{proposal-slug}.md`.

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

See `skills/extract-entities.md` for the full extraction process.

## Key Difference from Claims

| | Claims | Entities |
|---|---|---|
| Nature | Propositions (true/false) | Objects (exist/change) |
| Change model | Confidence shifts | Attribute updates |
| Title format | "X is true because Y" | "Company Name" |
| Disagreement | Counter-claims challenge | Competitive analysis compares |
| Value | Reasoning chains | Situational awareness |
| Temporal | Created date, mostly static | Timeline of events |
