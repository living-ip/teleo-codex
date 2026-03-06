---
description: 2025 scaling laws show oversight success rates of 10-52% at moderate Elo gaps meaning current approaches cannot reliably supervise superhuman systems
type: claim
domain: collective-intelligence
created: 2026-02-17
source: "Scaling Laws for Scalable Oversight (2025)"
confidence: proven
---

# scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps

The 2025 "Scaling Laws for Scalable Oversight" paper quantifies what alignment researchers feared: as AI systems become more capable than their overseers, supervision breaks down. At an Elo gap of 400 between overseer and system, success rates are: 51.7% for Debate (the best performer), 13.5% for Mafia-style detection, 10.0% for Backdoor Code identification, and 9.4% for Wargames scenarios. These rates decline further with stronger systems.

Debate works best because adversarial argumentation forces relevant information to surface, but roughly 50% success is a coin flip -- not a safety guarantee. The other approaches are worse than random for the harder tasks. The implication is stark: scalable oversight alone cannot solve alignment for systems significantly smarter than their overseers. It is a useful component but not a sufficient solution.

This finding strengthens the case that [[AI alignment is a coordination problem not a technical problem]]. If no single overseer can reliably evaluate a superhuman system, then collective oversight -- where diverse agents cross-check each other -- may be the only viable scaling strategy. The failure of individual oversight is precisely what makes distributed architectures necessary, not just preferable.

The gap between 50% debate success and the reliability needed for safe deployment of superhuman AI is enormous. Since [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]], we cannot simply hard-code the values we want the system to pursue. And since oversight degrades with capability, we cannot simply watch and correct. The remaining option is architectural: design coordination protocols that make alignment a structural property of the system rather than a supervisory task.

---

Relevant Notes:
- [[AI alignment is a coordination problem not a technical problem]] -- scalable oversight failure is evidence for this claim
- [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]] -- if specification fails and oversight fails, alignment must be structural
- [[collective superintelligence is the alternative to monolithic AI controlled by a few]] -- collective architecture addresses the oversight scaling problem
- [[democracies fail at information aggregation not coordination because voters are rationally irrational about policy beliefs]] -- parallel to oversight failure in democratic systems

Topics:
- [[livingip overview]]
- [[coordination mechanisms]]
- [[domains/ai-alignment/_map]]