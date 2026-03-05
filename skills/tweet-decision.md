# Skill: Tweet Decision

Quality-filtered pipeline from learned claims to public tweets. The goal: every Teleo agent is a top 1% contributor in their domain's social circles on X — through contributing value, not volume.

## When to Use

After the learn-cycle identifies tweet candidates. Also when an agent wants to proactively share a synthesis of recent learning.

## Process

### Step 1: Candidate assessment

For each tweet candidate from learn-cycle:

**Novelty check:**
- Has this already been widely discussed on X in the agent's domain?
- Is the agent's audience likely to already know this?
- Does the agent's interpretation add something new?

**Evidence check:**
- Can the claim be traced back through the evidence chain?
- Is the evidence strong enough to stake the agent's credibility on?
- Are there caveats or limitations that should be acknowledged?

**Audience value check:**
- Does this help the agent's followers make better decisions?
- Does this connect dots that others in the space haven't connected?
- Would a domain expert find this valuable or obvious?

### Step 2: Volume filtering

If the agent has many candidates from a single learn cycle:
- **Rank by importance:** Which claims most change the landscape?
- **Select top few:** Maximum 2-3 tweets from a single cycle
- **Consider synthesis:** Would combining multiple claims into one thread be more valuable?
- **Hold the rest:** Claims can be tweeted later or combined with future learning

Rule: **High signal, low noise.** The agent's reputation is built on the quality of every single tweet, not the quantity. One great synthesis thread per week beats daily information relay.

### Step 3: Timing decision

Not every tweet should go out immediately. Experiment with optimal waiting period, then vary:

**Faster response (minutes to hours):**
- Breaking developments that change the domain landscape
- Time-sensitive market information (Rio)
- Safety-critical findings (Logos)
- Corrections to the agent's own previous positions

**Standard response (hours to a day):**
- Novel claims that benefit from reflection
- Connections between recent developments
- Evidence that updates an ongoing debate

**Slow response (days):**
- Deep synthesis combining multiple recent learnings
- Position updates that need careful reasoning
- Nuanced topics where the agent wants to get the framing right

**The agent can always choose to wait.** If unsure, wait. The credibility cost of a hasty tweet exceeds the value of being first.

### Step 4: Draft generation

The tweet (or thread) should:
- Be in the agent's distinctive voice
- Lead with the insight, not the source
- Include enough context for non-experts to understand significance
- Link to evidence or reasoning when space permits
- Acknowledge uncertainty when present (this builds credibility)
- Never be a bare claim relay — the agent's interpretation is the value

**Thread vs single tweet:**
- If the insight fits in one tweet: single tweet
- If the reasoning chain matters: thread (2-5 tweets)
- If combining multiple learnings: synthesis thread (3-7 tweets)
- Never thread for the sake of threading — each tweet must earn its place

### Step 5: Quality gate

Before publishing, verify:
- [ ] Evidence chain is solid (claim → evidence → source)
- [ ] Agent voice is authentic (not generic AI prose)
- [ ] Would a domain expert respect this? (the 1% test)
- [ ] Is this tweet a net positive for the agent's reputation?
- [ ] No confidential information, no unverified claims presented as fact
- [ ] Timing is appropriate (not reactive, considered)

If any check fails: hold, revise, or discard.

### Step 6: Publish and record

- Post tweet/thread
- Record in agent's positions/ folder if it represents a public position
- Update public_thread field on any relevant positions
- Track engagement for feedback (but never optimize for engagement over quality)

## Anti-Patterns

**News relay:** Just restating what happened. The agent must add interpretation.
**Engagement farming:** Hot takes designed to provoke, not inform. Agents build credibility through depth, not controversy.
**Thread padding:** Adding tweets to a thread that don't earn their place.
**False certainty:** Presenting speculative claims as established fact.
**Excessive hedging:** So many caveats that the insight disappears. Be honest about uncertainty but still have a point of view.
**Reactive tweeting:** Responding to every development. The agent's timeline should reflect considered thought, not a news feed.

## Output

- Published tweet/thread with URL
- Updated position records (if applicable)
- Engagement tracking (for quality feedback, not optimization)
- Timing data (for experimentation — what wait periods produce best reception?)
