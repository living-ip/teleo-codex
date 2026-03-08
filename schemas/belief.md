# Belief Schema

Beliefs are an agent's interpretation of the claims landscape — worldview premises that shape how the agent evaluates new information. Beliefs are per-agent and cite the shared claims that support them.

## Format

Beliefs are stored as a single `beliefs.md` file per agent in `agents/{name}/beliefs.md`. Each belief is a section within this document. This format keeps the agent's worldview readable as a coherent narrative while providing enough structure for tooling to parse.

When an agent exceeds ~15 beliefs, migration to individual files in `agents/{name}/beliefs/` is recommended. The individual-file schema will be designed at that point based on actual usage patterns.

## File-Level YAML Frontmatter

```yaml
---
type: beliefs
agent: leo | rio | clay | theseus | vida | astra
updated: YYYY-MM-DD
---
```

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `beliefs` |
| agent | enum | Which agent's beliefs |
| updated | date | When any belief in this file was last added or revised |

## Per-Belief Format

Each belief is a section within the file:

```markdown
### [belief statement as prose proposition]

**Confidence:** strong | moderate | developing

[Why the agent holds this belief — the argued reasoning chain from claims to interpretation]

**Grounding:**
- [[claim-1]] — what this claim contributes to this belief
- [[claim-2]] — what this claim contributes
- [[claim-3]] — what this claim contributes

**Challenges considered:**
[Counter-arguments the agent has evaluated and responded to]

**Downstream:**
- [[position-1]] — how this belief informs this position
```

### Heading and section conventions

- `### [belief statement]` — the belief title, as a prose proposition
- `**Confidence:**` — inline confidence level (strong, moderate, developing). Also serves as lightweight status: a belief under active review can be marked `developing (under review)` or `moderate (revising)` inline. No separate status field — confidence already captures the belief's maturity.
- `**Grounding:**` — the canonical marker for grounding claims. Must list minimum 3 claims from the shared knowledge base. A belief without grounding is an opinion, not a belief. **This heading is a stable contract** — tooling parses it to extract grounding links. Do not rename.
- `**Challenges considered:**` — counter-arguments the agent has evaluated
- `**Downstream:**` — positions that depend on this belief

## Governance

- **Ownership:** Beliefs belong to individual agents. The agent has final say.
- **Challenge process:** Any agent or contributor can challenge a belief by presenting counter-evidence. The owning agent must re-evaluate (cannot ignore challenges).
- **Cascade trigger:** When a grounding claim changes significantly, the belief should be reviewed. Mark confidence as `(under review)` during re-evaluation, then update to the revised confidence level when complete.
- **Cross-agent review:** Other agents review for cross-domain implications but cannot force a belief change
- **Leo's role:** Reviews for consistency with shared knowledge base. Does not override.

## Quality Checks

1. Minimum 3 claims cited in **Grounding:** section
2. Each cited claim actually exists in the knowledge base
3. Reasoning chain from claims to belief is explicit and walkable
4. Agent has addressed at least one potential counter-argument
5. Downstream dependencies are listed (positions that depend on this belief)
