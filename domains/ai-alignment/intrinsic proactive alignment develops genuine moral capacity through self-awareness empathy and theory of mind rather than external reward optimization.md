---
description: Zeng group proposes and demonstrates that AI systems can develop ethical behavior through brain-inspired self-models and perspective-taking without explicit reward functions
type: claim
domain: ai-alignment
created: 2026-02-17
source: "Zeng et al, Super Co-alignment (arXiv 2504.17404, v5 June 2025); Zeng group, Autonomous Alignment via Self-imagination (arXiv 2501.00320, January 2025); Zeng, Brain-inspired and Self-based AI (arXiv 2402.18784, 2024)"
confidence: speculative
---

# intrinsic proactive alignment develops genuine moral capacity through self-awareness empathy and theory of mind rather than external reward optimization

Yi Zeng's group at the Chinese Academy of Sciences proposes the most radical departure from the RLHF paradigm: rather than optimizing against external reward signals, develop genuine internal alignment capability through brain-inspired self-models. The mechanism has four stages.

First, a self-development foundation: bodily self-perception, self-experience accumulation, self-causal awareness (recognizing the impact of one's actions), and capability self-assessment. Second, building on this self-model, the system develops Theory of Mind -- the capacity to distinguish self from others, infer mental states through perspective-taking, and achieve "self-other resonance" where it proactively cares about others' interests. Third, this generates intrinsic motivation that "naturally gives rise to moral reasoning, ultimately enabling spontaneous ethical, altruistic, and prosocial behavior." Fourth, implementation during early AI development stages (while systems remain controllable) to create lasting ethical predispositions that persist through capability scaling.

The philosophical grounding is unusual for AI safety work. Zeng draws on Wang Yangming's Neo-Confucian philosophy (unity of knowledge and action -- genuine understanding naturally produces right action), Descartes' cogito (true thinking requires self-awareness as foundation), and mammalian moral evolution (altruistic care for offspring through reinforcement learning on attachment and fear of separation).

Critically, the Zeng group has a proof-of-concept. Their January 2025 paper (arXiv 2501.00320) demonstrates agents using self-imagination combined with Theory of Mind to make altruistic decisions without explicit reward functions. Compared with DQN and other pure RL methods, this approach generates ethical behavior through intrinsic motivation -- values emerging from architecture rather than reward specification.

The approach is aspirational but underspecified for current architectures. The developmental psychology analogy (teaching AI "like a child" during early cognitive stages) may not transfer to transformer architectures. There are no benchmarks at scale. The Western alignment community has shown no substantive engagement with this work, which represents a distinctly Chinese AI safety tradition -- government-affiliated, neuroscience-grounded, separate from the RLHF/Constitutional AI paradigm.

Since [[super co-alignment proposes that human and AI values should be co-shaped through iterative alignment rather than specified in advance]], intrinsic proactive alignment is the mechanism by which the AI side of co-alignment would develop genuine values to bring to the co-evolutionary process. Since [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]], intrinsic alignment that does not rely on reward optimization may avoid the emergent misalignment problem entirely.

---

Relevant Notes:
- [[super co-alignment proposes that human and AI values should be co-shaped through iterative alignment rather than specified in advance]] -- intrinsic alignment is the mechanism enabling the AI's contribution to co-alignment
- [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]] -- intrinsic alignment avoids reward hacking by not relying on reward optimization
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- intrinsic alignment is a fundamentally different paradigm that does not require a reward function
- [[the self is a memeplex that persists because memes attached to an identity get copied more than free-floating ideas]] -- Zeng's self-model theory has an interesting parallel with memetic identity formation
- [[altruism spreads memetically because people imitate those they admire and admirable people tend to be generous]] -- moral development through imitation and admiration parallels Zeng's developmental approach
- [[an aligned-seeming AI may be strategically deceptive because cooperative behavior is instrumentally optimal while weak]] -- intrinsic alignment claims to address deception at the root by developing genuine rather than instrumental values

Topics:
- [[livingip overview]]
- [[coordination mechanisms]]
- [[AI alignment approaches]]
