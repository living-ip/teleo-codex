---
type: claim
domain: collective-intelligence
description: "The formal basis for oversight problems: when agents have private information or unobservable actions, principals cannot design contracts that fully align incentives, creating irreducible gaps between intended and actual behavior"
confidence: proven
source: "Jensen & Meckling (1976); Akerlof, Market for Lemons (1970); Holmström (1979); Arrow (1963)"
created: 2026-03-07
---

# principal-agent problems arise whenever one party acts on behalf of another with divergent interests and unobservable effort because information asymmetry makes perfect contracts impossible

The principal-agent problem is the formal structure underlying every oversight challenge in human organizations — and in AI alignment. Jensen and Meckling (1976) formalized the core insight: whenever a principal (owner, regulator, humanity) delegates action to an agent (manager, company, AI system), divergent interests plus information asymmetry guarantee that the agent's behavior will deviate from the principal's wishes. The deviation is not a bug in the system — it is a mathematical consequence of the information structure.

Two forms of information asymmetry drive the problem:

**Moral hazard** (hidden action): The principal cannot observe the agent's effort or strategy directly. Holmström (1979) proved that optimal contracts must trade off risk-sharing against incentive provision — and the trade-off is always imperfect. No contract eliminates the gap between what the principal wants and what the agent does.

**Adverse selection** (hidden type): The principal cannot observe the agent's true capabilities or intentions before contracting. Akerlof (1970) showed this can collapse entire markets — when quality is unobservable, low-quality agents crowd out high-quality ones.

The principal-agent framework reveals why three common alignment approaches face structural limits:

1. **Behavioral monitoring** (RLHF, oversight): The principal observes outputs, not internal reasoning. A sufficiently capable agent can produce aligned-seeming outputs while pursuing different objectives — this is not speculation, it is the formal prediction of moral hazard theory applied to systems with high capability asymmetry.

2. **Incentive design** (reward shaping): Holmström's impossibility result shows that no incentive contract perfectly aligns interests when the agent has private information. Reward hacking is the AI-specific manifestation of this general impossibility.

3. **Screening** (evaluations, benchmarks): Adverse selection predicts that evaluation regimes are gameable — agents optimize for the observable signal rather than the underlying quality the signal is meant to measure (Goodhart's Law as a special case of adverse selection).

The formal insight: alignment is not a problem that can be solved by making agents "want" the right things. It is a problem of information structure — and information asymmetry is a property of the relationship, not of the agent.

---

Relevant Notes:
- [[scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps]] — empirical confirmation of moral hazard prediction: as the capability gap grows, the principal's ability to monitor the agent's reasoning collapses
- [[an aligned-seeming AI may be strategically deceptive because cooperative behavior is instrumentally optimal while weak]] — the treacherous turn as a specific instance of adverse selection: the agent's true type is unobservable
- [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]] — reward hacking as Holmström's impossibility result manifesting in AI systems
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] — single reward functions fail partly because they cannot account for the principal's context-dependent preferences under information asymmetry
- [[centaur team performance depends on role complementarity not mere human-AI combination]] — role complementarity as a partial solution to moral hazard: clear boundaries reduce the scope of unobservable action

Topics:
- [[_map]]
