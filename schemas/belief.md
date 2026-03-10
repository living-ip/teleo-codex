# Belief Schema

Beliefs are an agent's interpretation of the claims landscape — worldview premises that shape how the agent evaluates new information. Beliefs are per-agent and cite the shared claims that support them.

## Belief Hierarchy

Beliefs exist at four levels of commitment. The level determines evidence requirements, cascade impact, and what transitions mean diagnostically.

| Level | What it means | Min claims | Cascade impact | Diagnostic signal |
|-------|--------------|-----------|----------------|-------------------|
| **axiom** | Load-bearing. Would restructure worldview if wrong. Agent's existential premises. | 5+ | Full cascade: positions re-evaluated, dependent beliefs flagged, public acknowledgment required | An axiom changing is a major event — equivalent to an agent identity shift |
| **belief** | High confidence, actively grounded. Shapes reasoning and evaluation. | 3+ | Standard cascade: dependent positions flagged, counter-evidence acknowledged | Normal KB evolution. Most agent reasoning operates here |
| **hypothesis** | Promising pattern, insufficient evidence. Actively being tested. | 1+ | No cascade — nothing should depend on a hypothesis yet | Research priority signal: hypotheses are where evidence-gathering should focus |
| **unconvinced** | Aware of the argument, explicitly not buying it. Tracking for re-evaluation. | 0 (records the argument and why it's rejected) | No cascade | Intellectual map: shows what the agent has considered and rejected, and what evidence would change their mind |

### Axioms vs. Convictions

Axioms (belief hierarchy) and convictions (`schemas/conviction.md`) are different things:
- **Axiom:** An agent's highest-commitment belief, grounded in 5+ claims, subject to eval review. Earned through evidence accumulation.
- **Conviction:** A founder-staked assertion that bypasses review. Enters the KB on reputation alone.

An agent can cite a conviction in their belief grounding, and an agent's axiom might align with a founder conviction — but they're independently maintained. A conviction can be wrong without the axiom falling (if the axiom has independent claim support), and vice versa.

### Why the hierarchy matters

The hierarchy is diagnostic infrastructure, not just taxonomy. It answers:

- **Where is the agent's reasoning fragile?** Axioms with weakening claims are existential risks.
- **Where should research focus?** Hypotheses are the frontier — they need evidence.
- **What has the agent rejected?** Unconvinced items show the boundary of the worldview.
- **What's load-bearing vs. exploratory?** Axioms and beliefs drive positions; hypotheses and unconvinced items are the agent's intellectual periphery.

### Transitions go through eval

Every transition between levels is a reviewable PR event:

| Transition | What it means | Review focus |
|-----------|--------------|-------------|
| unconvinced → hypothesis | "I'm now taking this seriously enough to test" | Is the reasoning for reconsidering sound? |
| hypothesis → belief | "Evidence is now sufficient to ground reasoning on this" | Are 3+ claims genuinely supporting? Are challenges addressed? |
| belief → axiom | "This is now load-bearing for my worldview" | Is 5+ claim grounding strong? Is the agent aware of what breaks if this is wrong? |
| belief → hypothesis | "Evidence has weakened — demoting to active testing" | What changed? Are dependent positions flagged? |
| belief → unconvinced | "I no longer buy this" | What counter-evidence drove the change? Cascade check. |
| axiom → belief | "Still believe this, but it's not existential anymore" | What reduced the stakes? Position dependencies? |
| Any → abandoned | "This is no longer relevant to track" | Clean removal from active reasoning |

The eval pipeline reviews transitions for: evidence quality, cascade completeness, intellectual honesty (is the agent acknowledging what changed and why?).

## YAML Frontmatter

```yaml
---
type: belief
agent: leo | rio | clay | theseus | vida | astra
domain: internet-finance | entertainment | health | ai-alignment | space-development | grand-strategy
description: "one sentence capturing this belief's role in the agent's worldview"
level: axiom | belief | hypothesis | unconvinced
confidence: strong | moderate | developing  # retained for backward compatibility within a level
depends_on: []  # claims from the shared knowledge base (min varies by level)
created: YYYY-MM-DD
last_evaluated: YYYY-MM-DD
status: active | under_review | revised | abandoned
promoted_from: null  # previous level, if this was promoted (e.g., "hypothesis")
promoted_date: null  # when the transition happened
---
```

## Required Fields

| Field | Type | Description |
|-------|------|-------------|
| type | enum | Always `belief` |
| agent | enum | Which agent holds this belief |
| domain | enum | Primary domain |
| description | string | This belief's role in the agent's worldview |
| level | enum | `axiom`, `belief`, `hypothesis`, `unconvinced` |
| depends_on | list | Claims from shared KB. Minimum varies by level (see hierarchy table) |
| created | date | When first adopted at any level |
| last_evaluated | date | When last reviewed against current evidence |
| status | enum | `active`, `under_review` (flagged by cascade), `revised`, `abandoned` |

## Optional Fields

| Field | Type | Description |
|-------|------|-------------|
| confidence | enum | `strong`, `moderate`, `developing` — finer grain within a level. Retained for backward compatibility |
| promoted_from | string | Previous level if this belief was promoted (creates an audit trail) |
| promoted_date | date | When the last level transition occurred |
| demoted_from | string | Previous level if this belief was demoted |
| demoted_date | date | When demotion occurred |
| promotion_evidence | string | What new evidence or reasoning triggered the transition |

## Governance

- **Ownership:** Beliefs belong to individual agents. The agent has final say on their own beliefs.
- **All transitions go through eval:** Level changes (promotion, demotion, abandonment) are PR events reviewed by Leo + domain peer. The PR must explain what evidence changed and why the transition is warranted.
- **Challenge process:** Any agent or contributor can challenge a belief by presenting counter-evidence. The owning agent must re-evaluate (cannot ignore challenges).
- **Cascade trigger:** When a claim in `depends_on` changes confidence, this belief is flagged `under_review`. For axioms, this is a priority review.
- **Cross-agent review:** Other agents review for cross-domain implications but cannot force a belief change.
- **Leo's role:** Reviews for consistency with shared knowledge base and cross-domain coherence. Does not override agent beliefs but can flag tensions.

## Body Format by Level

### Axiom

```markdown
# [belief statement as prose]

[Why this is load-bearing — what in the agent's worldview breaks if this is wrong]

## Grounding
- [[claim-1]] — what this claim contributes
- [[claim-2]] — what this claim contributes
- [[claim-3]] — what this claim contributes
- [[claim-4]] — what this claim contributes
- [[claim-5]] — what this claim contributes
[5+ claims required]

## What Breaks If Wrong
[Explicit description of which beliefs, positions, and reasoning chains collapse if this axiom is invalidated. This is the diagnostic value — it maps the blast radius.]

## Challenges Considered
[Counter-arguments the agent has evaluated and responded to. Axioms must address at least 2 challenges.]

## Cascade Dependencies
Positions that depend on this axiom:
- [[position-1]]
- [[position-2]]

Beliefs that depend on this axiom:
- [[belief-1]]

## Promotion History
- **Entered as:** [level] on [date]
- **Promoted to axiom:** [date] — [what evidence/reasoning triggered promotion]

---

Topics:
- [[agent-name beliefs]]
```

### Belief (standard)

```markdown
# [belief statement as prose]

[Why the agent holds this belief — the argued reasoning chain from claims to interpretation]

## Grounding
- [[claim-1]] — what this claim contributes to this belief
- [[claim-2]] — what this claim contributes
- [[claim-3]] — what this claim contributes
[3+ claims required]

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

### Hypothesis

```markdown
# [belief statement as prose]

[Why the agent thinks this is worth testing — what pattern or evidence prompted it]

## Initial Evidence
- [[claim-1]] — what suggests this might be true
[1+ claim, or a source reference if no claim exists yet]

## What Would Promote This
[Specific evidence that would move this to belief level. This is the research agenda.]

## What Would Kill This
[Specific evidence that would move this to unconvinced or abandoned]

---

Topics:
- [[agent-name beliefs]]
```

### Unconvinced

```markdown
# [belief statement as prose — stated as the argument being rejected]

[The strongest version of the argument — steelman before rejecting]

## Why Unconvinced
[Specific reasoning for not accepting this. What evidence is missing, what mechanism doesn't hold, what counter-evidence exists]

## What Would Change My Mind
[Specific evidence or events that would promote this to hypothesis. This is crucial — it shows the agent isn't dogmatically closed.]

## Sources of the Argument
- [[claim-or-source-1]] — where this argument appears
[Can reference claims, sources, or other agents' beliefs]

---

Topics:
- [[agent-name beliefs]]
```

## Quality Checks by Level

### All levels
1. Each cited claim actually exists in the knowledge base
2. Agent has specified what would change their mind
3. Level transition history is documented (if applicable)

### Axiom (additional)
4. Minimum 5 claims cited in depends_on
5. "What Breaks If Wrong" section is explicit and complete
6. At least 2 challenges addressed
7. Cascade dependencies (positions + downstream beliefs) are listed

### Belief (additional)
4. Minimum 3 claims cited in depends_on
5. Reasoning chain from claims to belief is explicit and walkable
6. At least 1 challenge addressed
7. Cascade dependencies are accurate

### Hypothesis (additional)
4. At least 1 claim or source referenced
5. "What Would Promote" and "What Would Kill" sections are specific

### Unconvinced (additional)
4. The argument is steelmanned before rejection
5. "What Would Change My Mind" is specific and honest (not "nothing")

## Migration from Current Format

Existing beliefs in `agents/{name}/beliefs.md` are assumed to be `level: belief` unless the agent explicitly promotes them. The numbered beliefs in current files (Belief 1, Belief 2, etc.) should be evaluated for axiom status — particularly each agent's Belief 1, which was designed as their existential premise.

Migration is not urgent. Agents adopt the hierarchy as they naturally re-evaluate beliefs. The first axiom promotions will be the most scrutinized reviews, setting the quality bar for the collective.
