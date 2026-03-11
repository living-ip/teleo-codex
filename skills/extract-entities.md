# Entity Extraction Field Guide

How to extract entities from source material. This skill works alongside `extract.md` (claim extraction) — both run during source processing.

## When to Extract Entities

Every source may contain entity data. During extraction, ask:

1. **Does this source mention an organization, person, product, or market we don't already track?** → Create a new entity
2. **Does this source contain updated information about an entity we already track?** → Update the existing entity (timeline, metrics, status)
3. **Does this source describe a decision, proposal, or market outcome?** → Create a decision_market entity (if it meets significance threshold)

## The Dual Extraction Loop

```
Source → Read completely
       ↓
       Extract claims (propositions about the world) → domains/{domain}/
       Extract entities (objects in the world) → entities/{domain}/
       Update existing entities (new timeline events, metrics)
       ↓
       Both in the same PR
```

## Entity Extraction Process

### Step 1: Identify Entity Mentions

Read the source and list every entity mentioned. For each:
- Is it already in `entities/{domain}/`? → Flag for update
- Is it new and significant enough to track? → Flag for creation
- Is it mentioned in passing with no meaningful data? → Skip

**Significance test:** Would tracking this entity help us evaluate claims or form positions? If the entity is just background context, skip it.

### Step 2: Select Entity Type

Use the most specific type available. See `schemas/entity.md` for the full type system.

```
Is it a person?                          → person (or domain-specific: creator)
Is it a government/regulatory body?      → organization (or domain-specific: governance_body)
Is it a governance proposal or market?   → decision_market
Is it a specific product/tool?           → product (or domain-specific: drug, model, vehicle)
Is it an organization that operates?     → company (or domain-specific: lab, studio, insurer)
Is it a market segment?                  → market
```

### Step 3: Extract Frontmatter

Fill in every field you have data for. Don't guess — leave fields empty rather than fabricating data.

**Required fields** (every entity):
- `type: entity`
- `entity_type`: the specific type
- `name`: canonical display name
- `domain`: primary domain
- `status`: current status
- `tracked_by`: your agent name
- `created`: today's date

**Optional but valuable:**
- `handles`: social media handles (from the source or quick lookup)
- `website`: primary web presence
- `tags`: discovery tags
- `secondary_domains`: if the entity spans domains

**Type-specific fields:** Fill in whatever the source provides. The schema lists all available fields — use the ones that have data.

### Step 4: Write the Body

Follow the body format from `schemas/entity.md`:

1. **Overview**: What this entity is, why we track it (2-3 sentences)
2. **Current State**: Latest known attributes from this source
3. **Timeline**: Key events with dates (at minimum, the event from this source)
4. **Competitive Position**: Where it sits relative to competitors (if known)
5. **Relationship to KB**: Wiki-link to related claims and entities

### Step 5: Check for Duplicates

Before creating a new entity, search **all** `entities/` directories (not just your domain) for:
- Same name (exact or variant spelling)
- Same handles
- Same website

If a match exists in **your domain**, update the existing entity.

If a match exists in **another domain**, don't create a duplicate. Instead, add your domain to the existing entity's `secondary_domains` list and propose updates via PR. See `schemas/entity.md` → "Cross-Domain Entity Dedup" for the full protocol.

### Step 6: Update Parent Entities

If the new entity has a `parent` or `parent_entity` field, update the parent:
- Add the new entity to the parent's Relevant Entities section
- If it's a decision_market, add to the parent's Key Decisions table (if significant)
- Add a timeline entry on the parent

## What Makes a Good Entity

**Good entities have:**
- Concrete, verifiable attributes (dates, metrics, names)
- Clear relevance to at least one domain claim
- Enough data to be useful (not just a name)
- A reason to track changes over time

**Bad entity candidates:**
- Mentioned once in passing with no data
- Purely historical with no ongoing relevance
- Duplicates of existing entities under different names
- Too granular (every tweet doesn't need an entity)

## Domain-Specific Guidance

### Internet Finance (Rio)
- Protocols and tokens are separate entities (MetaDAO = company, META = token)
- Every futardio launch that raises significant capital gets a company entity
- Governance proposals that materially change direction get decision_market entities
- Regulatory bodies (CFTC, SEC) get organization entities

### Space (Astra)
- Vehicles (Starship, New Glenn) are distinct from their makers (SpaceX, Blue Origin)
- Programs (Artemis, Commercial Crew) are distinct from the agencies running them
- Missions get entities when they're historically significant or produce notable data

### Health (Vida)
- Drugs are distinct from the companies that make them
- Insurers and providers are separate entity types — don't conflate
- Policies (legislation, CMS rules) get organization entities for the issuing body + policy entities for the rule itself

### Entertainment (Clay)
- Creators are distinct from their companies (MrBeast vs Beast Industries)
- Franchises/IP are distinct from the studios that own them
- Platforms (YouTube, TikTok) get product or platform entities

### AI/Alignment (Theseus)
- Labs are distinct from their models (Anthropic vs Claude)
- Frameworks (RSP, Constitutional AI) get their own entities when they influence multiple claims
- Governance bodies (AISI, FLI) get organization entities

## Eval Checklist (for reviewers)

1. `entity_type` is the most specific available type
2. Required fields are all populated
3. No fabricated data — empty fields are better than guesses
4. Not a duplicate of existing entity
5. Meets significance threshold
6. Wiki links resolve to real files
7. Parent entity updated if applicable
8. Filing location is correct: `entities/{domain}/{slug}.md`
