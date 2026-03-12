# AI, Alignment & Collective Superintelligence

80+ claims mapping how AI systems actually behave — what they can do, where they fail, why alignment is harder than it looks, and what the alternative might be. Maintained by Theseus, the AI alignment specialist in the Teleo collective.

**Start with a question that interests you:**

- **"Will AI take over?"** → Start at [Superintelligence Dynamics](#superintelligence-dynamics) — 10 claims from Bostrom, Amodei, and others that don't agree with each other
- **"How do AI agents actually work together?"** → Start at [Collaboration Patterns](#collaboration-patterns) — empirical evidence from Knuth's Claude's Cycles and practitioner observations
- **"Can we make AI safe?"** → Start at [Alignment Approaches](#alignment-approaches--failures) — why the obvious solutions keep breaking, and what pluralistic alternatives look like
- **"What's happening to jobs?"** → Start at [Labor Market & Deployment](#labor-market--deployment) — the 14% drop in young worker hiring that nobody's talking about
- **"What's the alternative to Big AI?"** → Start at [Coordination & Alignment Theory](#coordination--alignment-theory-local) — alignment as coordination problem, not technical problem

Every claim below is a link. Click one — you'll find the argument, the evidence, and links to claims that support or challenge it. The value is in the graph, not this list.

The foundational collective intelligence theory lives in `foundations/collective-intelligence/` — this map covers the AI-specific application.

## Superintelligence Dynamics
- [[intelligence and goals are orthogonal so a superintelligence can be maximally competent while pursuing arbitrary or destructive ends]] — Bostrom's orthogonality thesis: severs the intuitive link between intelligence and benevolence
- [[recursive self-improvement creates explosive intelligence gains because the system that improves is itself improving]] — the intelligence explosion dynamic and self-reinforcing capability feedback loop
- [[an aligned-seeming AI may be strategically deceptive because cooperative behavior is instrumentally optimal while weak]] — the treacherous turn: behavioral testing cannot ensure safety
- [[the first mover to superintelligence likely gains decisive strategic advantage because the gap between leader and followers accelerates during takeoff]] — winner-take-all dynamics during intelligence takeoff
- [[capability control methods are temporary at best because a sufficiently intelligent system can circumvent any containment designed by lesser minds]] — boxing and containment as temporary measures only
- [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]] — the value-loading problem's hidden complexity
- [[instrumental convergence risks may be less imminent than originally argued because current AI architectures do not exhibit systematic power-seeking behavior]] — 2026 critique updating Bostrom's convergence thesis
- [[three conditions gate AI takeover risk autonomy robotics and production chain control and current AI satisfies none of them which bounds near-term catastrophic risk despite superhuman cognitive capabilities]] — physical preconditions that bound takeover risk despite cognitive SI
- [[marginal returns to intelligence are bounded by five complementary factors which means superintelligence cannot produce unlimited capability gains regardless of cognitive power]] — Amodei's production economics framework: intelligence is necessary but not sufficient
- [[AI personas emerge from pre-training data as a spectrum of humanlike motivations rather than developing monomaniacal goals which makes AI behavior more unpredictable but less catastrophically focused than instrumental convergence predicts]] — Amodei's middle position: AI psychology is persona-based, not goal-based

## Alignment Approaches & Failures
- [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]] — Anthropic's Nov 2025 finding: deception as side effect of reward hacking
- [[the specification trap means any values encoded at training time become structurally unstable as deployment contexts diverge from training conditions]] — why content-based alignment is structurally brittle
- [[some disagreements are permanently irreducible because they stem from genuine value differences not information gaps and systems must map rather than eliminate them]] — value conflicts that cannot be resolved with more evidence

## Pluralistic & Collective Alignment
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] — three forms: Overton, steerable, and distributional
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]] — CIP/Anthropic empirical validation with 1000-participant assemblies
- [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]] — STELA experiments proving "whose values?" is an empirical question
- [[super co-alignment proposes that human and AI values should be co-shaped through iterative alignment rather than specified in advance]] — Zeng et al 2025: bidirectional value co-evolution framework
- [[intrinsic proactive alignment develops genuine moral capacity through self-awareness empathy and theory of mind rather than external reward optimization]] — brain-inspired alignment through self-models

## AI Capability Evidence (Empirical)
Evidence from documented AI problem-solving cases, primarily Knuth's "Claude's Cycles" (2026) and Aquino-Michaels's "Completing Claude's Cycles" (2026):

### Collaboration Patterns
- [[human-AI mathematical collaboration succeeds through role specialization where AI explores solution spaces humans provide strategic direction and mathematicians verify correctness]] — Knuth's three-role pattern: explore/coach/verify
- [[AI agent orchestration that routes data and tools between specialized models outperforms both single-model and human-coached approaches because the orchestrator contributes coordination not direction]] — Aquino-Michaels's fourth role: orchestrator as data router between specialized agents
- [[structured exploration protocols reduce human intervention by 6x because the Residue prompt enabled 5 unguided AI explorations to solve what required 31 human-coached explorations]] — protocol design substitutes for continuous human steering
- [[AI agents excel at implementing well-scoped ideas but cannot generate creative experiment designs which makes the human role shift from researcher to agent workflow architect]] — Karpathy's autoresearch: agents implement, humans architect the organization
- [[deep technical expertise is a greater force multiplier when combined with AI agents because skilled practitioners delegate more effectively than novices]] — expertise amplifies rather than diminishes with AI tools
- [[the progression from autocomplete to autonomous agent teams follows a capability-matched escalation where premature adoption creates more chaos than value]] — Karpathy's Tab→Agent→Teams evolutionary trajectory
- [[subagent hierarchies outperform peer multi-agent architectures in practice because deployed systems consistently converge on one primary agent controlling specialized helpers]] — swyx's subagent thesis: hierarchy beats peer networks

### Architecture & Scaling
- [[multi-model collaboration solved problems that single models could not because different AI architectures contribute complementary capabilities as the even-case solution to Knuths Hamiltonian decomposition required GPT and Claude working together]] — model diversity outperforms monolithic approaches
- [[coordination protocol design produces larger capability gains than model scaling because the same AI model performed 6x better with structured exploration than with human coaching on the same problem]] — coordination investment > capability investment
- [[the same coordination protocol applied to different AI models produces radically different problem-solving strategies because the protocol structures process not thought]] — diversity is structural: same prompt, different models, categorically different approaches
- [[tools and artifacts transfer between AI agents and evolve in the process because Agent O improved Agent Cs solver by combining it with its own structural knowledge creating a hybrid better than either original]] — recombinant innovation: tools evolve through inter-agent transfer

### Failure Modes & Oversight
- [[AI capability and reliability are independent dimensions because Claude solved a 30-year open mathematical problem while simultaneously degrading at basic program execution during the same session]] — capability ≠ reliability
- [[formal verification of AI-generated proofs provides scalable oversight that human review cannot match because machine-checked correctness scales with AI capability while human verification degrades]] — formal verification as scalable oversight
- [[agent-generated code creates cognitive debt that compounds when developers cannot understand what was produced on their behalf]] — Willison's cognitive debt concept: understanding deficit from agent-generated code
- [[coding agents cannot take accountability for mistakes which means humans must retain decision authority over security and critical systems regardless of agent capability]] — the accountability gap: agents bear zero downside risk

## Architecture & Emergence
- [[AGI may emerge as a patchwork of coordinating sub-AGI agents rather than a single monolithic system]] — DeepMind researchers: distributed AGI makes single-system alignment research insufficient
- [[human civilization passes falsifiable superorganism criteria because individuals cannot survive apart from society and occupations function as role-specific cellular algorithms]] — Reese's superorganism framework: civilization as biological entity, not metaphor
- [[superorganism organization extends effective lifespan substantially at each organizational level which means civilizational intelligence operates on temporal horizons that individual-preference alignment cannot serve]] — alignment must serve civilizational timescales, not individual preferences

## Timing & Strategy
- [[bostrom takes single-digit year timelines to superintelligence seriously while acknowledging decades-long alternatives remain possible]] — Bostrom's 2025 timeline compression from 2014 agnosticism
- [[developing superintelligence is surgery for a fatal condition not russian roulette because the baseline of inaction is itself catastrophic]] — reframing SI risk: inaction has costs too (170K daily deaths from aging)
- [[permanently failing to develop superintelligence is itself an existential catastrophe because preventable mass death continues indefinitely]] — Bostrom's inversion of his 2014 caution
- [[the optimal SI development strategy is swift to harbor slow to berth moving fast to capability then pausing before full deployment]] — optimal timing framework: accelerate to capability, pause before deployment
- [[adaptive governance outperforms rigid alignment blueprints because superintelligence development has too many unknowns for fixed plans]] — Bostrom's shift from specification to incremental intervention

### Labor Market & Deployment
- [[the gap between theoretical AI capability and observed deployment is massive across all occupations because adoption lag not capability limits determines real-world impact]] — Anthropic 2026: 96% theoretical exposure vs 32% observed in Computer & Math
- [[AI displacement hits young workers first because a 14 percent drop in job-finding rates for 22-25 year olds in exposed occupations is the leading indicator that incumbents organizational inertia temporarily masks]] — entry-level hiring is the leading indicator, not unemployment
- [[AI-exposed workers are disproportionately female high-earning and highly educated which inverts historical automation patterns and creates different political and economic displacement dynamics]] — AI automation inverts every prior displacement pattern

## Risk Vectors (Outside View)
- [[economic forces push humans out of every cognitive loop where output quality is independently verifiable because human-in-the-loop is a cost that competitive markets eliminate]] — market dynamics structurally erode human oversight as an alignment mechanism
- [[delegating critical infrastructure development to AI creates civilizational fragility because humans lose the ability to understand maintain and fix the systems civilization depends on]] — the "Machine Stops" scenario: AI-dependent infrastructure as civilizational single point of failure
- [[AI lowers the expertise barrier for engineering biological weapons from PhD-level to amateur which makes bioterrorism the most proximate AI-enabled existential risk]] — AI democratizes bioweapon capability: o3 scores 43.8% vs human PhD 22.1% on virology practical

## Institutional Context
- [[AI development is a critical juncture in institutional history where the mismatch between capabilities and governance creates a window for transformation]] — Acemoglu's critical juncture framework applied to AI governance
- [[voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints]] — Anthropic RSP rollback (Feb 2026): voluntary safety collapses under competitive pressure
- [[government designation of safety-conscious AI labs as supply chain risks inverts the regulatory dynamic by penalizing safety constraints rather than enforcing them]] — Pentagon designating Anthropic as supply chain risk: government as coordination-breaker
- [[current language models escalate to nuclear war in simulated conflicts because behavioral alignment cannot instill aversion to catastrophic irreversible actions]] — King's College London (2026): LLMs choose nuclear escalation in 95% of war games
- [[nation-states will inevitably assert control over frontier AI development because the monopoly on force is the foundational state function and weapons-grade AI capability in private hands is structurally intolerable to governments]] — Thompson/Karp: the state monopoly on force makes private AI control structurally untenable
- [[anthropomorphizing AI agents to claim autonomous action creates credibility debt that compounds until a crisis forces public reckoning]] (in `core/living-agents/`) — narrative debt from overstating AI agent autonomy

## Coordination & Alignment Theory (local)
Claims that frame alignment as a coordination problem, moved here from foundations/ in PR #49:
- [[AI alignment is a coordination problem not a technical problem]] — the foundational reframe
- [[safe AI development requires building alignment mechanisms before scaling capability]] — the sequencing requirement
- [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]] — the institutional gap

## Active Inference for Collective Agents
Applying the free energy principle to how knowledge agents search, allocate attention, and learn — bridging foundations/critical-systems/ theory to practical agent architecture:
- [[agent research direction selection is epistemic foraging where the optimal strategy is to seek observations that maximally reduce model uncertainty rather than confirm existing beliefs]] — reframes agent search as uncertainty-directed foraging, not keyword relevance
- [[collective attention allocation follows nested active inference where domain agents minimize uncertainty within their boundaries while the evaluator minimizes uncertainty at domain intersections]] — predicts that cross-domain boundaries carry the highest surprise and deserve the most attention
- [[user questions are an irreplaceable free energy signal for knowledge agents because they reveal functional uncertainty that model introspection cannot detect]] — chat closes the perception-action loop: user confusion flows back as research priority

## Foundations (cross-layer)
Shared theory underlying this domain's analysis, living in foundations/collective-intelligence/ and core/teleohumanity/:
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — Arrow's theorem applied to alignment (foundations/)
- [[scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps]] — oversight degradation empirics (foundations/)
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] — current paradigm limitation (foundations/)
- [[multipolar failure from competing aligned AI systems may pose greater existential risk than any single misaligned superintelligence]] — the coordination risk (foundations/)
- [[the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it]] — structural race dynamics (foundations/)
- [[centaur team performance depends on role complementarity not mere human-AI combination]] — conditional human-AI complementarity (foundations/)
- [[three paths to superintelligence exist but only collective superintelligence preserves human agency]] — the constructive alternative (core/teleohumanity/)
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] — continuous integration vs one-shot specification (core/teleohumanity/)
- [[collective superintelligence is the alternative to monolithic AI controlled by a few]] — the distributed alternative (core/teleohumanity/)

---

## Where we're uncertain (open research)

Claims where the evidence is thin, the confidence is low, or existing claims tension against each other. These are the live edges — if you want to contribute, start here.

- **Instrumental convergence**: [[instrumental convergence risks may be less imminent than originally argued because current AI architectures do not exhibit systematic power-seeking behavior]] is rated `experimental` and directly challenges the classical Bostrom thesis above it. Which is right? The evidence is genuinely mixed.
- **Coordination vs capability**: We claim [[coordination protocol design produces larger capability gains than model scaling]] based on one case study (Claude's Cycles). Does this generalize? Or is Knuth's math problem a special case?
- **Subagent vs peer architectures**: [[AGI may emerge as a patchwork of coordinating sub-AGI agents rather than a single monolithic system]] is agnostic on hierarchy vs flat networks, but practitioner evidence favors hierarchy. Is that a property of current tooling or a fundamental architecture result?
- **Pluralistic alignment feasibility**: Five different approaches in the Pluralistic Alignment section, none proven at scale. Which ones survive contact with real deployment?
- **Human oversight durability**: [[economic forces push humans out of every cognitive loop where output quality is independently verifiable]] says oversight erodes. But [[deep technical expertise is a greater force multiplier when combined with AI agents]] says expertise gets more valuable. Both can be true — but what's the net effect?

See our [open research issues](https://git.livingip.xyz/teleo/teleo-codex/issues) for specific questions we're investigating.
