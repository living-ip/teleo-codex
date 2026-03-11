---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "RLCF delegates generation to AI while preserving human evaluation authority, but this only works if human rater throughput can match AI content volume"
confidence: experimental
source: "Li et al. 2025, capacity overwhelm identified as deployment risk"
created: 2025-06-30
---

# Human rating authority as alignment mechanism assumes rater capacity scales with AI generation volume

The RLCF architecture preserves human authority over what content surfaces by requiring human ratings to determine "helpfulness enough to show." This creates a bottleneck: human rating capacity must scale with AI generation volume, or the system degrades to either (1) unrated AI content surfacing by default, or (2) AI-generated content never surfacing due to rating backlog.

Li et al. identify "rater capacity overwhelmed by LLM volume" as a key risk but provide no scaling solution. If AI can generate 100x more candidate notes than humans can rate, the system either abandons human oversight (defeating the alignment mechanism) or throttles AI generation (defeating the efficiency gain).

Community Notes currently relies on volunteer raters whose participation is intrinsically motivated. As AI generation scales, this creates three failure modes:
1. **Rating fatigue**: volunteers burn out from increased volume
2. **Quality degradation**: rushed ratings to clear backlog reduce evaluation quality
3. **Selection bias**: only the most engaged (potentially unrepresentative) raters persist

The architecture assumes human rating is the scarce resource worth preserving, but does not address whether that resource can scale to match AI capability growth. This is an instance of the broader economic principle that human-in-the-loop mechanisms are structurally vulnerable to cost pressures in competitive environments.

## Evidence
- Li et al. (2025) explicitly flag rater capacity as a risk in RLCF deployment
- Community Notes relies on volunteer raters with no guaranteed throughput
- AI generation scales with compute; human rating scales with volunteer availability
- No mechanism proposed to balance generation volume with rating capacity

## Limitations
- Sampling strategies (rating subset of AI-generated notes) may provide sufficient signal
- Rater recruitment may scale with platform growth, maintaining balance
- AI-assisted rating (AI summarizes, humans judge) could increase throughput while preserving authority
- Single source; requires independent validation

---

Relevant Notes:
- [[economic forces push humans out of every cognitive loop where output quality is independently verifiable because human-in-the-loop is a cost that competitive markets eliminate]]
- [[collective intelligence requires diversity as a structural precondition not a moral preference]]

Topics:
- [[domains/ai-alignment/_map]]
- [[foundations/collective-intelligence/_map]]
