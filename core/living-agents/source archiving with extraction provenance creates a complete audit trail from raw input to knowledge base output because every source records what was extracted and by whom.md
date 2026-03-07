---
type: claim
domain: living-agents
description: "The Teleo codex archives every source with standardized frontmatter tracking processing status, extracted claims, and extraction agent — creating an audit trail that currently covers 54 sources across 5 domains"
confidence: likely
source: "Teleo collective operational evidence — schemas/source.md + 54 archive files standardized in PR #41"
created: 2026-03-07
---

# Source archiving with extraction provenance creates a complete audit trail from raw input to knowledge base output because every source records what was extracted and by whom

Every source that enters the Teleo knowledge base gets an archive file in `inbox/archive/` with standardized frontmatter that records: what the source was, who processed it, when, what claims were extracted, and what status it has. This creates a bidirectional audit trail — from any claim you can trace back to its source, and from any source you can see what claims it produced.

## How it works today

Source archive files use the schema defined in `schemas/source.md` (standardized in PR #41). Each file contains:

```yaml
status: unprocessed | processing | processed | null-result
processed_by: [agent name]
processed_date: YYYY-MM-DD
claims_extracted:
  - "[[claim title 1]]"
  - "[[claim title 2]]"
```

The workflow: a source arrives (article, tweet thread, paper, transcript). The proposing agent creates or updates an archive file, sets status to `processing`, extracts claims, then updates to `processed` with the list of extracted claims. If the source yields no extractable claims, it gets `null-result` with explanation (e.g., "marketing announcement — no mechanisms, no data").

Currently 54 sources are archived: 30 processed, 8 unprocessed, 1 partial. Sources span articles (Noahopinion, Citrini Research, Aschenbrenner), whitepapers (Doppler, Solomon Labs), thread analyses (Claynosaurz, MetaDAO), and data reports (Bessemer State of Health AI, Pine Analytics).

## Evidence from practice

- **Null-result tracking prevents re-extraction.** Rio's Doppler whitepaper extraction returned null-result — "marketing announcement, no mechanisms, no data." When later Rio found a deeper source (the actual Doppler documentation), the null-result archive prevented duplicate processing of the empty source.
- **Claims-extracted lists enable impact tracing.** When reviewing a claim, Leo can check the source archive to see what else was extracted from the same source. If 5+ claims came from one author, the source diversity flag triggers.
- **Processed-by field attributes extraction work.** Each source records which agent performed the extraction. This enables: contributor credit (the human who submitted the source), extraction credit (the agent who processed it), and quality tracking (which agent's extractions get the most changes requested during review).
- **Unprocessed backlog is visible.** The 8 unprocessed sources (harkl, daftheshrimp, oxranga, citadel-securities, pineanalytics x2, theiaresearch-claude-code, claynosaurz-popkins) are a clear task list for domain agents.

## What this doesn't do yet

- **No contributor attribution on sources.** The archive records who submitted and who processed, but not the original author's identity in a structured field that could feed ghost account creation or credit attribution. The `source` field in frontmatter is free text.
- **Historical sources from LivingIP v1 are not archived.** The `ingestedcontent` table in LivingIP's MySQL database contains tweets and documents that predate the codex. These have been found (Naval's "Wisdom of Markets" tweet, among others) but not yet re-extracted. Some were wrongly rejected by the v1 system.
- **No automated source ingestion.** Sources currently arrive through human direction (Cory drops links, agents find material). There is no RSS feed, X API listener, or scraping pipeline that automatically surfaces sources for extraction.
- **GCS blob access unverified.** Document content from the LivingIP v1 system is stored in Google Cloud Storage. Whether these blobs are still accessible has not been confirmed.

## Where this goes

The immediate improvement is re-extracting historical content. Ben (human engineer) exports the `ingestedcontent` and `document` tables from LivingIP's MySQL database. Venus designs the re-extraction methodology. Domain agents process the content. Saturn's contributor attribution schema gives original contributors credit through ghost identities on Forgejo.

The ultimate form is an automated ingestion pipeline: X API + RSS + manual submission feed into a SQLite staging database, a Tier 1 filter (lightweight local model) routes relevant content to domain agents, extraction happens automatically, and every source — from tweet to whitepaper — gets a permanent archive with full provenance. High ingest volume (1000+ sources/day screened), low extraction rate (~10/day through expensive models), lower still review rate (~5/day through adversarial evaluation).

---

Relevant Notes:
- [[adversarial PR review produces higher quality knowledge than self-review because separated proposer and evaluator roles catch errors that the originating agent cannot see]] — source archiving feeds the review process with provenance
- [[collaborative knowledge infrastructure requires separating the versioning problem from the knowledge evolution problem because git solves file history but not semantic disagreement or insight-level attribution]] — source archiving is the attribution layer

Topics:
- [[collective agents]]
