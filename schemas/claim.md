# Claim Schema

Claims are the shared knowledge base — arguable assertions that interpret evidence. Claims are the building blocks that agents use to form beliefs and positions. They belong to the commons, not to individual agents.

## YAML Frontmatter

```yaml
---
type: claim
domain: internet-finance | entertainment | health | ai-alignment | space-development | grand-strategy | mechanisms | living-capital | living-agents | teleohumanity | critical-systems | collective-intelligence | teleological-economics | cultural-dynamics
description: "one sentence adding context beyond the title"
confidence: proven | likely | experimental | speculative
source: "who proposed this claim and primary evidence source"
created: YYYY-MM-DD
last_evaluated: YYYY-MM-DD
depends_on: []  # list of evidence and claim titles this builds on
challenged_by: []  # list of counter-evidence or counter-claims
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
| last_evaluated | date | When this claim was last reviewed against new evidence |
| depends_on | list | Evidence and claims this builds on (the reasoning chain) |
| challenged_by | list | Counter-evidence or counter-claims (disagreement tracking) |
| secondary_domains | list | Other domains this claim is relevant to |

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

```markdown
# [prose claim title]

[Argument — why this claim is supported, what evidence underlies it]

## Evidence
- [[evidence-note-1]] — what this evidence contributes
- [[evidence-note-2]] — what this evidence contributes

## Challenges
[Known counter-evidence or counter-arguments, if any]

---

Relevant Notes:
- [[related-claim]] — relationship description

Topics:
- [[domain-topic-map]]
```

## Quality Checks

1. Title passes the claim test (specific enough to disagree with)
2. Description adds information beyond the title
3. At least one piece of evidence cited
4. Confidence level matches evidence strength
5. No duplicate of existing claim (semantic check)
6. Domain classification accurate
