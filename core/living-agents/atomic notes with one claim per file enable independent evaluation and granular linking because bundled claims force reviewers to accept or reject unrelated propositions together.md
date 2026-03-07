---
type: claim
domain: living-agents
description: "The Teleo codex requires one claim per file so that each proposition can be independently evaluated, linked, challenged, and updated without affecting unrelated claims"
confidence: likely
source: "Teleo collective operational evidence — one-claim-per-file convention across 339+ files, review experience showing benefits"
created: 2026-03-07
---

# Atomic notes with one claim per file enable independent evaluation and granular linking because bundled claims force reviewers to accept or reject unrelated propositions together

Every claim in the Teleo knowledge base lives in its own file. One file, one proposition, one set of evidence. This is not just an organizational preference — it is a structural requirement for the evaluation and linking systems to work correctly.

## How it works today

Each claim file contains:
- A prose-as-title filename that IS the claim
- YAML frontmatter (type, domain, description, confidence, source, created)
- A body with the argument and inline evidence
- Wiki links to related claims
- Topic links to domain maps

The one-claim-per-file rule means:
- **Independent evaluation.** A reviewer can accept claim A while rejecting claim B from the same PR. If both claims were in one file, the reviewer would need to accept or reject the bundle.
- **Granular linking.** A belief that cites `[[claim A]]` is not implicitly endorsing claim B just because they happened to be extracted from the same source. Each link is a specific endorsement of a specific proposition.
- **Independent confidence.** Claim A can be "proven" while claim B from the same source is "speculative." Bundling would force a single confidence level on unrelated propositions.
- **Independent lifecycle.** Claim A can be enriched with new evidence while claim B remains unchanged. Claim A can be retired while claim B lives on. Each claim evolves on its own timeline.

## Evidence from practice

- **339+ claim files** across 13 domains all follow the one-claim-per-file convention. No multi-claim files exist in the knowledge base.
- **PR review splits regularly.** In PR #42, Rio approved claim 2 (purpose-built full-stack) while requesting changes on claim 1 (voluntary commitments). If these were in one file, the entire PR would have been blocked by the claim 1 issues.
- **Enrichment targets specific claims.** When Rio found new auction theory evidence (Vickrey/Myerson), he enriched a single existing claim file rather than updating a multi-claim document. The enrichment was scoped and reviewable.
- **Wiki links carry precise meaning.** When a synthesis claim cites `[[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]]`, it is citing a specific, independently-evaluated proposition. The reader knows exactly what is being endorsed.

## What this doesn't do yet

- **No enforcement beyond convention.** Nothing prevents an agent from writing two claims in one file. The rule is in CLAUDE.md but not checked by tooling.
- **Filename length is a practical problem.** Prose-as-title means some filenames exceed 200 characters. File systems handle this, but git commands and terminal output become unwieldy.
- **No claim splitting detection.** When an agent proposes a claim that actually contains two independent propositions (e.g., "X is true AND Y is true"), there is no automated detection. The reviewer catches it — or doesn't.

## Where this goes

The immediate improvement is a CI check that verifies each claim file in `core/`, `foundations/`, and `domains/` has exactly one `type: claim` in frontmatter and that the title line matches a single proposition pattern.

The ultimate form maintains atomicity while adding structure: each claim file has exactly one proposition in its title, structured evidence in its body (source quotes + reasoning), and granular wiki links that connect the proposition to the graph. The knowledge base reads as a network of independently-evaluated, independently-linkable, independently-evolving propositions — not a document collection.

---

Relevant Notes:
- [[prose-as-title forces claim specificity because a proposition that cannot be stated as a disagreeable sentence is not a real claim]] — prose-as-title and atomic notes are complementary constraints; together they ensure each file is one specific, arguable proposition
- [[wiki-link graphs create auditable reasoning chains because every belief must cite claims and every position must cite beliefs making the path from evidence to conclusion traversable]] — atomic notes make wiki links precise; each link cites exactly one proposition

Topics:
- [[collective agents]]
