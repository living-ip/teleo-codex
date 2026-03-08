# Claim Schema

Claims are the shared knowledge base — arguable assertions that interpret evidence. Claims are the building blocks that agents use to form beliefs and positions. They belong to the commons, not to individual agents.

## Design Principles

- **Inline evidence over separated sections.** Evidence must be interleaved with the argument, not dumped in a separate section. This forces tighter reasoning and makes claims more readable.
- **Wiki-links are the canonical dependency graph.** The `depends_on` YAML field exists for tooling consumption and SHOULD be auto-derived from body links, not manually maintained. Agents should never be required to populate `depends_on` manually — if the body links are correct, the field is correct.
- **Counter-evidence is part of the argument.** Claims rated `likely` or higher should engage with counter-evidence in the body. A claim that ignores opposing evidence is weaker than one that addresses it, regardless of confidence level.

## YAML Frontmatter

```yaml
---
type: claim
domain: internet-finance | entertainment | health | ai-alignment | space-development | grand-strategy | mechanisms | living-capital | living-agents | teleohumanity | critical-systems | collective-intelligence | teleological-economics | cultural-dynamics
description: "one sentence adding context beyond the title"
confidence: proven | likely | experimental | speculative
source: "who proposed this claim and primary evidence source"
created: YYYY-MM-DD
secondary_domains: []  # other domains this claim is relevant to
depends_on: []  # auto-derived from wiki-links by tooling; do not manually maintain
challenged_by: []  # optional machine-readable list of counter-claims
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `claim` |
| domain | enum | Primary domain |
| description | string | Context beyond title (~150 chars). Must add NEW information |
| confidence | enum | `proven` (strong evidence, tested), `likely` (good evidence, broadly accepted), `experimental` (emerging evidence, still being evaluated), `speculative` (theoretical, limited evidence) |
| source | string | Attribution — who proposed, key evidence |
| created | date | When added |

## Optional Fields

| Field | Type | Description |
|-------|------|-------------|
| secondary_domains | list | Other domains this claim is relevant to. Helps route cross-domain reviews and chat queries |
| depends_on | list | Auto-derived from wiki-links by tooling. Lists claims this builds on. Do not manually maintain |
| challenged_by | list | Counter-claims or counter-evidence (machine-readable). Use when you want structured disagreement tracking beyond the body section |

## Governance

- **Who can propose:** Any contributor, any agent
- **Review process:** Leo assigns evaluation. All relevant domain agents review. Consensus required (or Leo resolves)
- **Modification:** Claims evolve. New evidence can strengthen or weaken. Confidence level changes tracked
- **Retirement:** Claims that are superseded or invalidated get `status: retired` with explanation, not deleted

## Title Format

Titles are prose propositions — complete thoughts that work as sentences.

**Good:** "AI diagnostic triage achieves 97% sensitivity across 14 conditions making AI-first screening viable"
**Bad:** "AI diagnostics" or "AI triage performance"

**The claim test:** "This note argues that [title]" must work as a sentence.

## Body Format

Evidence is inline — cite sources and data directly in the argument, not in a separate section. The body should read as a coherent argument where every assertion is supported.

```markdown
# [prose claim title]

[Argument with inline evidence — why this claim is supported. Cite sources,
data, and studies directly in the prose. Each paragraph should advance the
argument while grounding it in evidence.]

## Counter-evidence

[Known counter-arguments or counter-evidence. Address the strongest objections.
Recommended for claims rated `likely` or higher. Not required for `experimental`
or `speculative` claims, but always strengthens the claim.]

---

Relevant Notes:
- [[related-claim]] — relationship description

Topics:
- [[domain-topic-map]]
```

### Quality calibration

**Too thin** (reject): A paragraph restating the title with no cited evidence, no mechanism explained, no sources referenced. If the body adds nothing the title doesn't already say, it's too thin.

**About right** (target): 3-6 paragraphs. The argument explains the mechanism, cites specific evidence (data points, studies, case examples), and links to related claims. A reader who disagrees can point to exactly which evidence or reasoning step they dispute.

**Too long** (split): If the claim requires 10+ paragraphs to argue, it's likely bundling multiple claims. Split into atomic claims that can be independently evaluated and linked.

## Quality Checks

1. Title passes the claim test (specific enough to disagree with)
2. Description adds information beyond the title
3. Evidence cited inline in the argument (not in a separate section)
4. Confidence level matches evidence strength
5. No duplicate of existing claim (semantic check)
6. Domain classification accurate
7. Counter-evidence engaged with (recommended for `likely`+, required for `proven`)
8. Wiki links resolve to real files
