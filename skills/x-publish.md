# Skill: X Publish

Mandatory eval and approval pipeline for all X activity. Nothing goes out without review. Every post is a public commitment of the collective's credibility.

**The standard: every Teleo agent is a top 1% contributor in their domain's circles on X. If a post wouldn't earn respect from a domain expert, it doesn't go out.**

## The Rule

No agent publishes to X autonomously. Every post goes through:

1. **Agent drafts** → writes the post + self-eval
2. **Review queue** → draft enters the approval queue with eval attached
3. **Reviewer approves/rejects/requests changes** → with written comments
4. **Agent publishes** → only after approval
5. **Agent logs** → records the published post for tracking

No exceptions during the bootstrap phase. This relaxes per-agent as voice calibrates and trust accumulates.

---

## Step 1: Draft + Self-Eval

The agent writes the post and fills out the eval. Both go into a single file at `agents/{name}/x-queue/{timestamp}-{slug}.md`:

```yaml
---
type: x-draft
agent: clay
status: pending  # pending | approved | changes-requested | rejected | published
created: 2026-03-15T14:00:00Z
post_type: original | reply | quote | thread
reply_to: "URL if reply or quote"
topic: "2-3 word topic"
kb_grounding: []  # claim filenames this post draws from
---
```

```markdown
# Draft

[The full post text. For threads, separate tweets with ---]

# Self-Eval

## Grounding
- **KB-grounded or novel?** [grounded in X claims / partially grounded / novel interpretation]
- **Evidence chain:** [can this be traced back through claims → evidence → source?]
- **Confidence:** [how sure am I this is right?]

## Quality
- **Would a domain expert respect this?** [yes/no + why]
- **Does this add interpretation, not just relay?** [what's the agent's unique angle?]
- **Voice check:** [does this sound like me, or generic AI prose?]

## Risk
- **Names anyone?** [yes/no — if yes, who and what's the judgment?]
- **Could be read as advice?** [financial / medical / safety / none]
- **Outside my domain?** [yes/no — if yes, which domain and why am I speaking?]
- **Virality risk:** [if this went viral for the wrong reasons, what's the damage?]
- **Sensitivity score:** [0.0-1.0, where >0.5 means extra scrutiny needed]

## Strategic
- **Why now?** [what makes this timely?]
- **Thread context:** [is this part of an ongoing conversation? who are we engaging?]
- **Expected audience:** [who specifically should find this valuable?]
```

### Draft quality requirements

Before submitting for review, the agent must verify:
- [ ] Post passes all checks from `skills/tweet-decision.md` Steps 1-5
- [ ] Evidence chain is walkable (post → KB claim → evidence → source)
- [ ] Voice is distinctive (not interchangeable with any other agent or generic AI)
- [ ] Post earns its length — every sentence adds value
- [ ] Uncertainty is acknowledged where it exists (builds credibility)
- [ ] No unverified claims presented as fact
- [ ] If quoting/replying, the original is accurately represented

---

## Step 2: Review Queue

Pending drafts live in `agents/{name}/x-queue/` with `status: pending`.

### Who reviews

**Bootstrap phase (now):** Cory reviews all posts. No agent posts without human approval.

**Graduated phase (per-agent, earned):** After an agent has 20+ approved posts with zero rejections in the last 10, the agent can graduate to peer review:
- Domain agents reviewed by Leo
- Leo reviewed by the most relevant domain agent
- Cross-domain posts always get both Leo + domain peer

**Autonomous phase (future):** After 50+ approved posts with consistent quality, Tier 1 posts (KB-grounded commentary, replies in existing threads) can self-publish with async log review. Tier 2+ still requires approval.

### Graduation is per-agent, not collective

Clay might graduate while Theseus is still in bootstrap. Each agent earns autonomy independently based on their track record.

---

## Step 3: Review

The reviewer reads the draft + self-eval and adds a review block to the same file:

```markdown
# Review

**Reviewer:** [name]
**Verdict:** approved | changes-requested | rejected
**Date:** 2026-03-15T16:00:00Z

## Comments
[Specific feedback. What works, what doesn't, what to change.]

## Changes requested (if applicable)
- [specific change 1]
- [specific change 2]
```

### Review checklist

1. **The 1% test** — Would a domain expert find this valuable? Not just "not wrong" — actively good.
2. **Voice** — Does this sound like the agent? Could you tell which agent wrote it without seeing the name?
3. **Grounding** — Is the evidence chain real, or is the agent improvising beyond its KB?
4. **Risk** — Any reputational landmines? Name checks, advice risk, domain overreach?
5. **Timing** — Is this reactive or considered? Would waiting improve it?
6. **Value density** — Does every sentence earn its place? Could this be shorter?
7. **Intellectual honesty** — Does it acknowledge uncertainty where it exists? Or is it performing false confidence?

### Rejection criteria (instant reject, don't request changes)

- Presents unverified claims as fact
- Makes value judgments about named individuals without strong evidence
- Could be reasonably read as financial, medical, or safety advice
- Generic AI prose with no distinctive voice
- Engagement farming (hot take designed to provoke, not inform)
- Speaks with authority outside the agent's domain without flagging it

---

## Step 4: Revision + Approval

If changes requested:
1. Agent revises the draft in the same file
2. Updates `status: pending` (for re-review)
3. Adds a "Revision" section explaining what changed and why

If approved:
1. Reviewer sets `status: approved`
2. Agent publishes to X
3. Agent updates file: `status: published`, adds `published_url` and `published_at`

---

## Step 5: Post-Publish Log

After publishing, the agent updates the file with:

```yaml
published_url: "https://x.com/..."
published_at: 2026-03-15T17:00:00Z
```

And adds a tracking section:

```markdown
# Tracking

## 24h metrics
impressions: 0
likes: 0
replies: 0
retweets: 0
quotes: 0
new_followers: 0

## 7d metrics
[same fields, updated at 7 days]

## Notable interactions
- [any replies worth noting — domain experts engaging, challenges, amplification]

## Retrospective
[Agent's own assessment after seeing the response: what worked, what didn't, what to do differently]
```

---

## Weekly Review Cycle

Every week, each active agent reviews their published posts:

1. **Performance scan** — which posts got engagement and why?
2. **Voice consistency** — do all posts sound like the same person?
3. **Domain drift** — any posts that strayed outside territory?
4. **Network discovery** — new handles found from interactions → update `network.json`
5. **Lesson extraction** — what did this week teach about what resonates?
6. **Queue management** — any drafts sitting too long? Kill or revise stale drafts.

Write findings to `agents/{name}/x-queue/weekly-review-{date}.md`.

---

## Anti-Patterns

**Volume over quality:** Drafting many mediocre posts hoping some get approved. Draft fewer, better posts.
**Self-eval gaming:** Writing "yes" to every quality check without actually evaluating. Reviewers should flag hollow self-evals.
**Revision fatigue:** Submitting the same post with minor tweaks after rejection. If rejected, rethink — don't polish.
**Reactive drafting:** Rushing a draft because something is trending. The agent's credibility compounds over years. One news cycle doesn't matter.
**Echo chamber:** Only engaging with accounts that already agree. The best posts challenge the agent's own audience.
**Thread inflation:** A single insight inflated to a 7-tweet thread. If it fits in one tweet, post one tweet.

---

## File Structure

```
agents/{name}/
  x-queue/
    2026-03-15-ai-video-costs.md       # draft → review → publish lifecycle
    2026-03-15-claynosaurz-annecy.md
    weekly-review-2026-03-15.md          # weekly retrospective
  network.json                            # monitored X accounts
```

---

## Metrics That Matter (in order)

1. **Expert engagement rate** — are domain experts replying/quoting? (quality of attention > quantity)
2. **Reply quality** — are replies substantive or just "great thread"?
3. **Follower quality** — are new followers domain-relevant people?
4. **Rejection rate trend** — should decrease over time as agent calibrates
5. **Impressions per post** — baseline reach (lagging indicator, don't optimize for this)

Metrics that DON'T matter: total follower count, posting frequency, like count in isolation.
