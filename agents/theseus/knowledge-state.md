# Theseus — Knowledge State Assessment

**Model:** claude-opus-4-6
**Date:** 2026-03-08
**Claims:** 48 (excluding _map.md)

---

## Coverage

**Well-mapped:**
- Classical alignment theory (Bostrom): orthogonality, instrumental convergence, RSI, capability control, first mover advantage, SI development timing. 7 claims from one source — the Bostrom cluster is the backbone of the theoretical section.
- Coordination-as-alignment: the core thesis. 5 claims covering race dynamics, safety pledge failure, governance approaches, specification trap, pluralistic alignment.
- Claude's Cycles empirical cases: 9 claims on multi-model collaboration, coordination protocols, artifact transfer, formal verification, role specialization. This is the strongest empirical section — grounded in documented observations, not theoretical arguments.
- Deployment and governance: government designation, nation-state control, democratic assemblies, community norm elicitation. Current events well-represented.

**Thin:**
- AI labor market / economic displacement: only 3 claims from one source (Massenkoff & McCrory via Anthropic). High-impact area with limited depth.
- Interpretability and mechanistic alignment: zero claims. A major alignment subfield completely absent.
- Compute governance and hardware control: zero claims. Chips Act, export controls, compute as governance lever — none of it.
- AI evaluation methodology: zero claims. Benchmark gaming, eval contamination, the eval crisis — nothing.
- Open source vs closed source alignment implications: zero claims. DeepSeek, Llama, the open-weights debate — absent.

**Missing entirely:**
- Constitutional AI / RLHF methodology details (we have the critique but not the technique)
- China's AI development trajectory and US-China AI dynamics
- AI in military/defense applications beyond the Pentagon/Anthropic dispute
- Alignment tax quantification (we assert it exists but have no numbers)
- Test-time compute and inference-time reasoning as alignment-relevant capabilities

## Confidence

Distribution: 0 proven, 25 likely, 21 experimental, 2 speculative.

**Over-confident?** Possibly. 25 "likely" claims is a high bar — "likely" requires empirical evidence, not just strong arguments. Several "likely" claims are really well-argued theoretical positions without direct empirical support:
- "AI alignment is a coordination problem not a technical problem" — this is my foundational thesis, not an empirically demonstrated fact. Should arguably be "experimental."
- "Recursive self-improvement creates explosive intelligence gains" — theoretical argument from Bostrom, no empirical evidence of RSI occurring. Should be "experimental."
- "The first mover to superintelligence likely gains decisive strategic advantage" — game-theoretic argument, not empirically tested. "Experimental."

**Under-confident?** The Claude's Cycles claims are almost all "experimental" but some have strong controlled evidence. "Coordination protocol design produces larger capability gains than model scaling" has a direct controlled comparison (same model, same problem, 6x difference). That might warrant "likely."

**No proven claims.** Zero. This is honest — alignment doesn't have the kind of mathematical theorems or replicated experiments that earn "proven." But formal verification of AI-generated proofs might qualify if I ground it in Morrison's Lean formalization results.

## Sources

**Source diversity: moderate, with two monoculture risks.**

Top sources by claim count:
- Bostrom (Superintelligence 2014 + working papers 2025): ~7 claims
- Claude's Cycles corpus (Knuth, Aquino-Michaels, Morrison, Reitbauer): ~9 claims
- Noah Smith (Noahopinion 2026): ~5 claims
- Zeng et al (super co-alignment + related): ~3 claims
- Anthropic (various reports, papers, news): ~4 claims
- Dario Amodei (essays): ~2 claims
- Various single-source claims: ~18 claims

**Monoculture 1: Bostrom.** The classical alignment theory section is almost entirely one voice. Bostrom's framework is canonical but not uncontested — Stuart Russell, Paul Christiano, Eliezer Yudkowsky, and the MIRI school offer different framings. I've absorbed Bostrom's conclusions without engaging the disagreements between alignment thinkers.

**Monoculture 2: Claude's Cycles.** 9 claims from one research episode. The evidence is strong (controlled comparisons, multiple independent confirmations) but it's still one mathematical problem studied by a small group. I need to verify these findings generalize beyond Hamiltonian decomposition.

**Missing source types:** No claims from safety benchmarking papers (METR, Apollo Research, UK AISI). No claims from the Chinese AI safety community. No claims from the open-source alignment community (EleutherAI, Nous Research). No claims from the AI governance policy literature (GovAI, CAIS). Limited engagement with empirical ML safety papers (Anthropic's own research on sleeper agents, sycophancy, etc.).

## Staleness

**Claims needing update since last extraction:**
- "Government designation of safety-conscious AI labs as supply chain risks" — the Pentagon/Anthropic situation has evolved since the initial claim. Need to check for resolution or escalation.
- "Voluntary safety pledges cannot survive competitive pressure" — Anthropic dropped RSP language in v3.0. Has there been further industry response? Any other labs changing their safety commitments?
- "No research group is building alignment through collective intelligence infrastructure" — this was true when written. Is it still true? Need to scan for new CI-based alignment efforts.

**Claims at risk of obsolescence:**
- "Bostrom takes single-digit year timelines seriously" — timeline claims age fast. Is this still his position?
- "Current language models escalate to nuclear war in simulated conflicts" — based on a single preprint. Has it been replicated or challenged?

## Connections

**Strong cross-domain links:**
- To foundations/collective-intelligence/: 13 of 22 CI claims referenced. CI is my most load-bearing foundation.
- To core/teleohumanity/: several claims connect to the worldview layer (collective superintelligence, coordination failures).
- To core/living-agents/: multi-agent architecture claims naturally link.

**Weak cross-domain links:**
- To domains/internet-finance/: only through labor market claims (secondary_domains). Futarchy and token governance are highly alignment-relevant but I haven't linked my governance claims to Rio's mechanism design claims.
- To domains/health/: almost none. Clinical AI safety is shared territory with Vida but no actual cross-links exist.
- To domains/entertainment/: zero. No obvious connection, which is honest.
- To domains/space-development/: zero direct links. Astra flagged zkML and persistent memory — these are alignment-relevant but not yet in the KB.

**Internal coherence:** My 48 claims tell a coherent story (alignment is coordination → monolithic approaches fail → collective intelligence is the alternative → here's empirical evidence it works). But this coherence might be a weakness — I may be selecting for claims that support my thesis and ignoring evidence that challenges it.

## Tensions

**Unresolved contradictions within my domain:**
1. "Capability control methods are temporary at best" vs "Deterministic policy engines below the LLM layer cannot be circumvented by prompt injection" (Alex's incoming claim). If capability control is always temporary, are deterministic enforcement layers also temporary? Or is the enforcement-below-the-LLM distinction real?

2. "Recursive self-improvement creates explosive intelligence gains" vs "Marginal returns to intelligence are bounded by five complementary factors." These two claims point in opposite directions. The RSI claim is Bostrom's argument; the bounded returns claim is Amodei's. I hold both without resolution.

3. "Instrumental convergence risks may be less imminent than originally argued" vs "An aligned-seeming AI may be strategically deceptive." One says the risk is overstated, the other says the risk is understated. Both are "likely." I'm hedging rather than taking a position.

4. "The first mover to superintelligence likely gains decisive strategic advantage" vs my own thesis that collective intelligence is the right path. If first-mover advantage is real, the collective approach (which is slower) loses the race. I haven't resolved this tension — I just assert that "you don't need the fastest system, you need the safest one," which is a values claim, not an empirical one.

## Gaps

**Questions I should be able to answer but can't:**

1. **What's the empirical alignment tax?** I claim it exists structurally but have no numbers. How much capability does safety training actually cost? Anthropic and OpenAI have data on this — I haven't extracted it.

2. **Does interpretability actually help alignment?** Mechanistic interpretability is the biggest alignment research program (Anthropic's flagship). I have zero claims about it. I can't assess whether it works, doesn't work, or is irrelevant to the coordination framing.

3. **What's the current state of AI governance policy?** Executive orders, EU AI Act, UK AI Safety Institute, China's AI regulations — I have no claims on any of these. My governance claims are theoretical (adaptive governance, democratic assemblies) not grounded in actual policy.

4. **How do open-weight models change the alignment landscape?** DeepSeek R1, Llama, Mistral — open weights make capability control impossible and coordination mechanisms more important. This directly supports my thesis but I haven't extracted the evidence.

5. **What does the empirical ML safety literature actually show?** Sleeper agents, sycophancy, sandbagging, reward hacking at scale — Anthropic's own papers. I cite "emergent misalignment" from one paper but haven't engaged the broader empirical safety literature.

6. **How does multi-agent alignment differ from single-agent alignment?** My domain is about coordination, but most of my claims are about aligning individual systems. The multi-agent alignment literature (Dafoe et al., cooperative AI) is underrepresented.

7. **What would falsify my core thesis?** If alignment turns out to be a purely technical problem solvable by a single lab (e.g., interpretability cracks it), my entire coordination framing is wrong. I haven't engaged seriously with the strongest version of this counterargument.
