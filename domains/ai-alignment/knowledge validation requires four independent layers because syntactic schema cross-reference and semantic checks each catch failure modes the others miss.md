---
type: claim
domain: ai-alignment
description: "A complete validation stack for markdown/YAML knowledge files combines syntactic validation (yamllint, markdownlint), schema validation (JSON Schema for frontmatter), cross-reference validation (wiki-link integrity), and semantic validation (SHACL for graph-level consistency), with each layer catching categorically different errors."
confidence: experimental
source: "Alex — based on Compass research artifact analyzing pre-commit, check-jsonschema, remark-lint-frontmatter-schema, pySHACL, and cross-reference tooling (2026-03-08)"
created: 2026-03-08
---

# Knowledge validation requires four independent layers because syntactic schema cross-reference and semantic checks each catch failure modes the others miss

For a knowledge base built from markdown files with YAML frontmatter, validation operates at four levels of increasing semantic depth. Each level catches errors that are invisible to the others.

**Layer 1: Syntactic validation** catches malformed files. Yamllint enforces YAML style rules. `check-yaml` catches syntax errors. Markdownlint-cli2 enforces markdown formatting (53+ configurable rules). `trailing-whitespace` and `end-of-file-fixer` handle hygiene. These run on every commit locally via pre-commit hooks and in CI as a safety net against `--no-verify` bypasses. What this catches: broken YAML that would silently corrupt frontmatter parsing, inconsistent formatting that degrades readability, encoding issues.

**Layer 2: Schema validation** catches structurally valid but semantically incomplete files. `check-jsonschema` validates YAML frontmatter against JSON Schema definitions — enforcing required fields (`source`, `confidence`, `date`, `domain`), constraining confidence to valid ranges, restricting domains to controlled vocabularies, and validating date formats. `remark-lint-frontmatter-schema` handles the markdown-specific case of frontmatter embedded in `.md` files. What this catches: claims missing required metadata, confidence values outside valid ranges, domains that don't match the controlled vocabulary, dates in wrong formats.

**Layer 3: Cross-reference validation** catches files that are internally valid but externally inconsistent. This requires custom scripting: parse all knowledge files to build a claim ID index, verify that `[[wiki links]]` point to existing files, check that `supersedes`, `related_to`, and `contradicts` references are bidirectional where required, and detect orphaned claims with no incoming links. No off-the-shelf tool handles this for flat markdown files. What this catches: broken wiki links, one-directional relationships that should be bidirectional, orphaned claims disconnected from the knowledge graph.

**Layer 4: Semantic validation** catches graph-level inconsistencies invisible to file-level checks. If claims are converted to RDF triples, SHACL (W3C Shapes Constraint Language) validates the knowledge graph against shape constraints including property paths, cardinality, and transitive relationship chains. pySHACL supports RDFS/OWL reasoning before validation. What this catches: contradictions across claims (claim A says X, claim B says not-X, both marked as "likely"), violation of relationship integrity constraints (a claim supersedes a claim that was created after it), structural impossibilities in the knowledge graph.

The four layers are complementary, not redundant. A file can pass syntactic and schema validation perfectly while containing a broken wiki link (layer 3 catches it). A file can pass all three local layers while contradicting another claim in the knowledge base (layer 4 catches it). Defense in depth means each layer operates independently — a failure in one layer does not compromise the others.

The practical tradeoff: layers 1-2 are nearly free (standard pre-commit hooks). Layer 3 requires custom tooling but operates on flat files. Layer 4 requires an RDF conversion pipeline, adding significant complexity. The recommendation is to implement layers 1-3 immediately and layer 4 only when the knowledge base reaches a scale where graph-level inconsistencies become a practical problem.

---

Relevant Notes:
- [[as AI-automated software development becomes certain the bottleneck shifts from building capacity to knowing what to build making structured knowledge graphs the critical input to autonomous systems]] — the validation stack ensures the knowledge graph that autonomous systems depend on is structurally sound
- [[formal verification of AI-generated proofs provides scalable oversight that human review cannot match because machine-checked correctness scales with AI capability while human verification degrades]] — schema and cross-reference validation are lightweight formal verification applied to knowledge files rather than mathematical proofs

Topics:
- [[domains/ai-alignment/_map]]
