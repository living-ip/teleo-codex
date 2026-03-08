---
type: claim
domain: critical-systems
description: "Kauffman's NK model formalizes the intuition that some problems are navigable by incremental improvement while others require leaps — the tunable parameter K (epistatic interactions) controls landscape ruggedness and therefore the effectiveness of local search"
confidence: likely
source: "Kauffman 'The Origins of Order' (1993), 'At Home in the Universe' (1995); Levinthal 'Adaptation on Rugged Landscapes' (1997); Page 'The Difference' (2007)"
created: 2026-03-08
---

# Fitness landscape ruggedness determines whether adaptive systems find good solutions because smooth landscapes reward hill-climbing while rugged landscapes trap agents in local optima and require exploration or recombination to escape

Kauffman's NK model (1993) provides the formal framework for understanding why some optimization problems yield to incremental improvement while others resist it. The model has two parameters: N (number of components) and K (epistatic interactions — how many other components each component's contribution depends on).

When K = 0, each component's fitness contribution is independent. The landscape is smooth with a single global peak — hill-climbing works perfectly. When K = N-1 (maximum interaction), every component's contribution depends on every other component. The landscape becomes maximally rugged — essentially random — with an exponential number of local optima. Hill-climbing fails catastrophically because almost every peak is mediocre.

The critical insight is that **real-world systems occupy the middle range**. Kauffman showed that at intermediate K values, landscapes have structure: correlated peaks clustered by quality, with navigable ridges connecting good solutions. This is where adaptation is hardest but most consequential — local search finds decent solutions but can't reach the best ones without some form of exploration beyond nearest neighbors.

Levinthal (1997) applied this directly to organizational adaptation: firms that search only locally (incremental innovation) perform well on smooth landscapes but get trapped on mediocre peaks in rugged ones. Firms that occasionally make "long jumps" (radical innovation, recombination) sacrifice short-term performance but discover better peaks. The optimal search strategy depends on landscape ruggedness — which the searcher cannot directly observe.

Page (2007) extended this to group problem-solving: diverse agents with different heuristics collectively explore more of a rugged landscape than homogeneous experts, because their different starting perspectives correspond to different search trajectories. This is why diversity outperforms individual excellence on hard problems — it's a landscape coverage argument, not a moral one.

The framework explains several patterns across domains:
- **Why modularity helps**: Reducing K through modular design smooths the landscape, making local search effective within modules while recombination happens between them
- **Why diversity matters**: On rugged landscapes, the best single searcher is dominated by a diverse collection of mediocre searchers covering more territory
- **Why exploration and exploitation must be balanced**: Pure exploitation (hill-climbing) gets trapped; pure exploration (random search) wastes effort on bad regions

---

Relevant Notes:
- [[companies and people are greedy algorithms that hill-climb toward local optima and require external perturbation to escape suboptimal equilibria]] — this claim IS the greedy hill-climbing failure mode; the NK model explains precisely when and why it fails (high K)
- [[partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity]] — partial connectivity preserves diverse search trajectories on rugged landscapes, exactly as Page's framework predicts
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] — the NK model provides the formal mechanism: diversity covers more of the rugged landscape
- [[the self-organized critical state is the most efficient state dynamically achievable even though a perfectly engineered state would perform better]] — the critical state lives on a rugged landscape where global optima are inaccessible to local search

Topics:
- [[foundations/critical-systems/_map]]
