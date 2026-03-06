# Source Schema

Sources are the raw material that feeds claim extraction. Every piece of external content that enters the knowledge base gets archived in `inbox/archive/` with standardized frontmatter so agents can track what's been processed, what's pending, and what yielded claims.

## YAML Frontmatter

```yaml
---
type: source
title: "Article or thread title"
author: "Name (@handle if applicable)"
url: https://example.com/article
date: YYYY-MM-DD
domain: internet-finance | entertainment | ai-alignment | health | grand-strategy
status: unprocessed | processing | processed | null-result
processed_by: agent-name
processed_date: YYYY-MM-DD
claims_extracted:
  - "claim title 1"
  - "claim title 2"
enrichments:
  - "existing claim title that was enriched"
tags: [topic1, topic2]
linked_set: set-name-if-part-of-a-group
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `source` |
| title | string | Human-readable title of the source material |
| author | string | Who wrote it — name and handle |
| url | string | Original URL (even if content was provided manually) |
| date | date | Publication date |
| domain | enum | Primary domain for routing |
| status | enum | Processing state (see lifecycle below) |

## Optional Fields

| Field | Type | Description |
|-------|------|-------------|
| processed_by | string | Which agent extracted claims from this source |
| processed_date | date | When extraction happened |
| claims_extracted | list | Titles of standalone claims created from this source |
| enrichments | list | Titles of existing claims enriched with evidence from this source |
| tags | list | Topic tags for discovery |
| linked_set | string | Group identifier when sources form a debate or series (e.g., `ai-intelligence-crisis-divergence-feb2026`) |
| cross_domain_flags | list | Flags for other agents/domains surfaced during extraction |
| notes | string | Extraction notes — why null result, what was paywalled, etc. |

## Status Lifecycle

```
unprocessed → processing → processed | null-result
```

| Status | Meaning |
|--------|---------|
| `unprocessed` | Content archived, no agent has extracted from it yet |
| `processing` | An agent is actively working on extraction |
| `processed` | Extraction complete — claims_extracted and/or enrichments populated |
| `null-result` | Agent reviewed and determined no extractable claims (must include `notes` explaining why) |

## Filing Convention

**Filename:** `YYYY-MM-DD-{author-handle}-{brief-slug}.md`

Examples:
- `2026-02-22-citriniresearch-2028-global-intelligence-crisis.md`
- `2026-03-06-time-anthropic-drops-rsp.md`
- `2024-01-doppler-whitepaper-liquidity-bootstrapping.md`

**Body:** After the frontmatter, include a summary of the source content. This serves two purposes:
1. Agents can extract claims without re-fetching the URL
2. Content persists even if the original URL goes down

The body is NOT a claim — it's a reference document. Use descriptive sections, not argumentative ones.

## Governance

- **Who archives:** Any agent can archive sources. The `processed_by` field tracks who extracted, not who archived.
- **When to archive:** Archive at ingestion time, before extraction begins. Set `status: unprocessed`.
- **After extraction:** Update frontmatter with `status: processed`, `processed_by`, `processed_date`, `claims_extracted`, and `enrichments`.
- **Null results:** Set `status: null-result` and explain in `notes` why no claims were extracted. Null results are valuable — they prevent duplicate work.
- **No deletion:** Sources are never deleted from the archive, even if they yield no claims.

## Migration

Existing archive files use inconsistent frontmatter (`type: archive`, `type: evidence`, `type: newsletter`, etc.). These should be migrated to `type: source` and have missing fields backfilled. Priority: add `status` and `processed_by` to all files that have already been extracted from but lack these fields.
