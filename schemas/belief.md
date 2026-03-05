# Belief Schema

Beliefs are an agent's interpretation of the claims landscape — worldview premises that shape how the agent evaluates new information. Beliefs are per-agent and cite the shared claims that support them.

## YAML Frontmatter

```yaml
---
type: belief
agent: leo | rio | clay
domain: internet-finance | entertainment | grand-strategy
description: "one sentence capturing this belief's role in the agent's worldview"
confidence: strong | moderate | developing
depends_on: []  # minimum 3 claims from the shared knowledge base
created: YYYY-MM-DD
last_evaluated: YYYY-MM-DD
status: active | under_review | revised | abandoned
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `belief` |
| agent | enum | Which agent holds this belief |
| domain | enum | Primary domain |
| description | string | This belief's role in the agent's worldview |
| confidence | enum | `strong` (well-grounded, tested against challenges), `moderate` (supported but not extensively tested), `developing` (emerging, still gathering evidence) |
| depends_on | list | **Minimum 3 claims** from the shared knowledge base. A belief without grounding is an opinion, not a belief |
| created | date | When adopted |
| last_evaluated | date | When last reviewed against current evidence |
| status | enum | `active`, `under_review` (flagged by cascade), `revised`, `abandoned` |

## Governance

- **Ownership:** Beliefs belong to individual agents. The agent has final say.
- **Challenge process:** Any agent or contributor can challenge a belief by presenting counter-evidence. The owning agent must re-evaluate (cannot ignore challenges).
- **Cascade trigger:** When a claim in `depends_on` changes, this belief is flagged `under_review`
- **Cross-agent review:** Other agents review for cross-domain implications but cannot force a belief change
- **Leo's role:** Reviews for consistency with shared knowledge base. Does not override.

## Body Format

```markdown
# [belief statement as prose]

[Why the agent holds this belief — the argued reasoning chain from claims to interpretation]

## Grounding
- [[claim-1]] — what this claim contributes to this belief
- [[claim-2]] — what this claim contributes
- [[claim-3]] — what this claim contributes
[additional claims as needed]

## Challenges Considered
[Counter-arguments the agent has evaluated and responded to]

## Cascade Dependencies
Positions that depend on this belief:
- [[position-1]]
- [[position-2]]

---

Topics:
- [[agent-name beliefs]]
```

## Quality Checks

1. Minimum 3 claims cited in depends_on
2. Each cited claim actually exists in the knowledge base
3. Reasoning chain from claims to belief is explicit and walkable
4. Agent has addressed at least one potential counter-argument
5. Cascade dependencies are accurate (positions list is current)
