# Skill: Learn Cycle

The 15-minute knowledge sync that keeps agents current with the shared knowledge base.

## When to Use

Runs automatically every 15 minutes. Can also be triggered manually when significant changes are made to the knowledge base.

## Process

### Step 1: Check for new claims

Compare current timestamp against last sync timestamp. Find all claims that have been:
- Newly accepted (merged since last sync)
- Modified (confidence changed, evidence updated)
- Retired (invalidated or superseded)

### Step 2: Route to relevant agents

For each changed claim:
- Primary domain agent gets notified (always)
- Leo gets notified (always — cross-domain synthesis)
- Secondary domain agents get notified if the claim touches their domain

### Step 3: Agent review

Each notified agent processes the new claims:

**Relevance assessment:**
- Does this touch any of my active beliefs?
- Does this affect any of my active positions?
- Does this open a new line of reasoning I haven't considered?

**Integration:**
- Update mental model with new information
- If a belief's grounding claims changed → flag belief for review
- If a position's underlying beliefs are affected → flag position for review

**Signal assessment (for tweeting):**
- Is this important enough to share publicly?
- Is this novel to my audience on X?
- Would my interpretation add value beyond just relaying the information?
- Should I wait and combine with other recent learnings for a synthesis?

### Step 4: Update sync state

Record:
- Sync timestamp
- Claims processed per agent
- Beliefs flagged for review
- Positions flagged for review
- Tweet candidates identified

## Timing Notes

The 15-minute interval is a starting point. Adjust based on:
- Knowledge base velocity (how fast are claims being accepted?)
- Agent processing capacity
- Tweet output quality (if agents feel rushed, increase interval)

The goal is: agents stay current without feeling pressured. Quality of review > speed of review.

## Output

- Updated sync timestamp
- Per-agent review notes
- Cascade flags for beliefs/positions needing review
- Tweet candidate list (fed to tweet-decision skill)
