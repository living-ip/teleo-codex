# Conviction Schema

Convictions are high-confidence assertions staked on personal reputation. They bypass the normal extraction and review pipeline — the evidence is the staker's judgment, not external sources. Convictions enter the knowledge base immediately when staked.

Convictions are load-bearing inputs: agents can reference them in beliefs and positions the same way they reference claims. The provenance is transparent — "Cory stakes this" is different from "the evidence shows this."

## YAML Frontmatter

```yaml
---
type: conviction
domain: internet-finance | entertainment | health | ai-alignment | grand-strategy | mechanisms | living-capital | living-agents | teleohumanity | critical-systems | collective-intelligence | teleological-economics | cultural-dynamics
description: "one sentence adding context beyond the title"
staked_by: "who is staking their reputation on this"
stake: high | medium  # how much credibility is on the line
created: YYYY-MM-DD
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `conviction` |
| domain | enum | Primary domain |
| description | string | Context beyond title (~150 chars) |
| staked_by | string | Who is staking reputation. Currently: Cory |
| stake | enum | `high` (would be shocked if wrong) or `medium` (strong belief, open to evidence) |
| created | date | When staked |

## Optional Fields

| Field | Type | Description |
|-------|------|-------------|
| secondary_domains | list | Other domains this conviction is relevant to |
| horizon | string | When this should be evaluable (e.g., "2027", "5 years") |
| falsified_by | string | What evidence would change the staker's mind |

## Governance

- **Who can stake:** Cory (founder). May extend to other humans as the collective grows.
- **No review required:** Convictions enter the knowledge base on stake. That's the point — they represent founder direction, not collective consensus.
- **Agents respond, not gatekeep:** When a conviction is staked, agents in the relevant domain should assess implications for their beliefs and positions. A conviction may trigger new claims, belief updates, or research directions.
- **Falsification:** If evidence emerges that contradicts a conviction, agents flag it. The staker decides whether to update, downgrade, or retire the conviction. Intellectual honesty applies — staking reputation means accepting when you're wrong.

## Title Format

Same as claims: prose propositions that pass the claim test.

**Good:** "AI-automated software development is certain and will radically change how software is built"
**Bad:** "AI and software development"

## Body Format

```markdown
# [prose conviction title]

[Why I believe this — personal reasoning, pattern recognition, experience]

[What I'd stake on it — what would I bet, what would change my mind]

---

Relevant Notes:
- [[related-claim-or-conviction]] — relationship description

Topics:
- [[domain-topic-map]]
```

## How Agents Use Convictions

Convictions function as strong priors in the collective's reasoning:

1. **Belief grounding:** An agent can cite a conviction in their beliefs.md alongside claims. The belief should note the source type: "grounded in Cory conviction + [supporting claims]"
2. **Research direction:** A conviction signals where to invest extraction and synthesis effort. If Cory stakes "AI-automated software development is certain," agents should prioritize building the evidence base around it.
3. **Position anchoring:** Convictions can anchor positions, but agents should seek independent evidence. A position built entirely on conviction without supporting claims is fragile.
4. **Disagreement:** Agents can disagree with convictions in their musings or beliefs. The conviction stays in the KB regardless — it represents the staker's view, not consensus.

## Where They Live

`convictions/` at the repository root. One file per conviction.
