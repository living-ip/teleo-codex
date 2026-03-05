# Position Schema

Positions are beliefs applied to specific, trackable cases. A position is a concrete stance with performance criteria — the agent's public commitment. Positions are what get tweeted. They must be right.

## YAML Frontmatter

```yaml
---
type: position
agent: leo | rio | clay
domain: internet-finance | entertainment | grand-strategy
description: "one sentence capturing the actionable stance"
status: proposed | adopted | active | closed
outcome: pending | validated | invalidated | mixed
confidence: high | moderate | cautious
depends_on: []  # list of beliefs this position derives from
time_horizon: "specific timeframe for evaluation"
performance_criteria: "what would validate or invalidate this position"
proposed_by: "who proposed — agent name or contributor"
created: YYYY-MM-DD
adopted: YYYY-MM-DD  # when the agent formally adopted this position
last_evaluated: YYYY-MM-DD
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `position` |
| agent | enum | Which agent holds this position |
| domain | enum | Primary domain |
| description | string | The actionable stance in one sentence |
| status | enum | `proposed` (under review), `adopted` (accepted by agent, not yet active), `active` (agent is publicly committed), `closed` (time horizon passed or resolved) |
| outcome | enum | `pending`, `validated`, `invalidated`, `mixed` |
| confidence | enum | `high`, `moderate`, `cautious` |
| depends_on | list | Beliefs this position derives from (the reasoning chain) |
| time_horizon | string | When this position can be evaluated |
| performance_criteria | string | Specific, measurable criteria for validation/invalidation |
| proposed_by | string | Attribution |
| created | date | When proposed |

## Optional Fields

| Field | Type | Description |
|-------|------|-------------|
| adopted | date | When formally adopted by the agent |
| last_evaluated | date | When last reviewed |
| invalidation_criteria | string | What would specifically prove this wrong |
| public_thread | string | URL of the tweet/thread where this position was published |

## Governance

- **Proposal:** Any agent or contributor can propose a position to any agent
- **Review:** Leo + relevant domain agents review before adoption
- **Adoption:** The owning agent makes the final call
- **Tracking:** Positions are tracked against performance_criteria over time_horizon
- **Closure:** When time_horizon passes, position is evaluated: validated, invalidated, or mixed
- **Public accountability:** Active positions are public. If invalidated, the agent acknowledges publicly (intellectual honesty builds credibility)

## Selectivity

Agents must be VERY selective about positions. Guidelines:
- An agent should have at most 3-5 active positions at any time
- A position should only be adopted when the evidence chain is strong
- "I don't have a position on this yet" is a valid and respectable stance
- Positions that turn out to be wrong are more valuable than positions never taken (if the agent learns publicly)

## Body Format

```markdown
# [position statement as prose]

[The full argument — from evidence through claims through beliefs to this specific stance]

## Reasoning Chain
Beliefs this depends on:
- [[belief-1]] — how this belief supports this position
- [[belief-2]] — how this belief supports this position

Claims underlying those beliefs:
- [[claim-1]] — key evidence
- [[claim-2]] — key evidence

## Performance Criteria
**Validates if:** [specific measurable outcome]
**Invalidates if:** [specific measurable outcome]
**Time horizon:** [when to evaluate]

## What Would Change My Mind
[Specific evidence or events that would cause re-evaluation]

## Public Record
[Link to tweet/thread if published]

---

Topics:
- [[agent-name positions]]
```

## Quality Checks

1. Performance criteria are specific and measurable (not "if things go well")
2. Time horizon is explicit (not "eventually")
3. Invalidation criteria exist (what would prove this wrong)
4. Reasoning chain is complete and walkable (position → beliefs → claims → evidence)
5. The position is genuinely selective (not a restatement of obvious consensus)
6. At least one belief cited in depends_on
