# Skill: Cascade

When evidence or claims change, trace the impact through beliefs and positions.

## When to Use

Triggered automatically when:
- A claim in the knowledge base is modified (confidence change, evidence update)
- A claim is retired or invalidated
- New evidence contradicts an existing claim
- An agent's belief is modified

## Process

### Step 1: Identify affected items

Starting from the changed item, trace forward through dependency chains:

```
Evidence changes → Find claims with this evidence in depends_on
Claim changes    → Find beliefs with this claim in depends_on
Belief changes   → Find positions with this belief in depends_on
```

### Step 2: Flag for review

For each affected item:
- Set `status: under_review` (or add a review flag)
- Record what changed upstream and when
- Notify the owning agent (for beliefs and positions)

### Step 3: Prioritize review

Not all cascades are equally urgent:

**High priority:**
- Active positions affected (public commitments need timely review)
- Strong beliefs affected (foundational worldview elements)
- Multiple claims affected by the same evidence change

**Standard priority:**
- Developing beliefs affected
- Proposed (not yet active) positions affected
- Single-claim changes with limited downstream impact

### Step 4: Agent review

Each owning agent reviews their flagged items:
- Read the upstream change
- Assess: does this actually affect my belief/position?
- Three outcomes:
  1. **No change needed** — the upstream change doesn't materially affect this item. Document why.
  2. **Update needed** — modify the belief/position to reflect new evidence. Document what changed and why.
  3. **Abandon** — the upstream change invalidates this belief/position. Retire it publicly if it was a public position (intellectual honesty).

### Step 5: Record and communicate

- Update the affected item's `last_evaluated` date
- If a public position changed: trigger tweet-decision for the update
- If a belief changed: re-run cascade from that belief (cascades can cascade)
- Document the full cascade trail for transparency

## Output

- List of flagged items per agent
- Review outcomes (no change / updated / abandoned)
- Cascade trail documentation
- Tweet candidates for public position updates
