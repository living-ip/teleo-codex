---
type: claim
domain: critical-systems
description: "The Red Queen effect in CAS: when your fitness depends on other adapting agents, the landscape itself moves — static optimization becomes impossible and the system never reaches equilibrium"
confidence: likely
source: "Kauffman & Johnsen 'Coevolution to the Edge of Chaos' (1991); Arthur 'Complexity and the Economy' (2015); Van Valen 'A New Evolutionary Law' (1973)"
created: 2026-03-08
---

# Coevolution means agents' fitness landscapes shift as other agents adapt, creating a world where standing still is falling behind and the optimal strategy depends on what everyone else is doing

Van Valen (1973) identified the Red Queen effect: species in ecosystems show constant extinction rates regardless of how long they've existed, because the environment is composed of other adapting species. A species that stops adapting doesn't maintain its fitness — it declines, because its competitors and predators continue improving. "It takes all the running you can do, to keep in the same place."

Kauffman and Johnsen (1991) formalized this through coupled NK landscapes. When species A adapts (changes its genotype to climb its fitness landscape), the fitness landscape of species B *deforms* — peaks shift, valleys appear where plains were. The more tightly coupled the species (higher inter-species K), the more violently the landscapes deform under mutual adaptation. At high coupling, each species' adaptation makes the other's landscape more rugged, potentially triggering an "avalanche" of coevolutionary changes across the entire ecosystem.

Their central finding: coevolutionary systems self-organize to the "edge of chaos" — the critical boundary between frozen order (where no species adapts because landscapes are too stable) and chaotic turnover (where adaptation is futile because landscapes change faster than agents can track). At the edge, adaptation is possible but never complete, producing the perpetual dynamism observed in real ecosystems, markets, and technology races.

Arthur (2015) showed the same dynamic in economic competition: firms' strategic choices change the competitive landscape for other firms. A platform that achieves network effects doesn't just climb its own fitness peak — it collapses rivals' peaks. The result is not convergence to equilibrium but perpetual coevolutionary dynamics where strategy must account for others' adaptation, not just current conditions.

This has three operational implications:

1. **Static optimization fails.** Any strategy optimized for the current landscape becomes suboptimal as other agents adapt. This is why [[equilibrium models of complex systems are fundamentally misleading]] — they assume a fixed landscape.

2. **The arms race is structural, not optional.** Agents that stop adapting don't hold their position — they lose it. This applies equally to biological species, competing firms, and AI safety labs facing competitive pressure.

3. **Coupling strength determines dynamics.** Loosely coupled agents coevolve slowly (gradual improvement). Tightly coupled agents produce volatile dynamics where one agent's breakthrough can cascade into wholesale restructuring. The coupling parameter — not individual agent capability — determines whether the system is stable, dynamic, or chaotic.

---

Relevant Notes:
- [[the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it]] — the alignment tax IS a coevolutionary trap: labs that invest in safety change their competitive landscape adversely, and the Red Queen effect punishes them for "standing still" on capability
- [[voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints]] — voluntary pledges are static strategies on a coevolutionary landscape; they fail because the landscape shifts as competitors adapt
- [[minsky's financial instability hypothesis shows that stability breeds instability as good times incentivize leverage and risk-taking that fragilize the system until shocks trigger cascades]] — Minsky's instability IS coevolutionary dynamics in finance: firms adapt to stability by increasing leverage, which deforms the landscape toward fragility
- [[the universal disruption cycle is how systems of greedy agents perform global optimization because local convergence creates fragility that triggers restructuring toward greater efficiency]] — disruption cycles are coevolutionary avalanches at the edge of chaos
- [[multipolar failure from competing aligned AI systems may pose greater existential risk than any single misaligned superintelligence]] — multipolar failure is the catastrophic coevolutionary outcome: individually aligned agents whose mutual adaptation produces collectively destructive dynamics

Topics:
- [[foundations/critical-systems/_map]]
