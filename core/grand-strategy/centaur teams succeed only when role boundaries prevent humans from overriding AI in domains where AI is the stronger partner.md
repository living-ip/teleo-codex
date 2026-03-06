---
type: claim
domain: grand-strategy
secondary_domains: [health, ai-alignment, collective-intelligence]
description: "The chess centaur model fails in clinical medicine because physicians override AI on tasks where AI outperforms — the binding variable is role boundary clarity, not human-AI collaboration per se, with implications for alignment (HITL oversight assumes humans improve AI outputs but evidence shows they degrade them)"
confidence: experimental
source: "Synthesis by Leo from: centaur team claim (Kasparov); HITL degradation claim (Wachter/Patil, Stanford-Harvard study); AI scribe adoption (Bessemer 2026); alignment scalable oversight claims"
created: 2026-03-07
depends_on:
  - "centaur teams outperform both pure humans and pure AI because complementary strengths compound"
  - "human-in-the-loop clinical AI degrades to worse-than-AI-alone because physicians both de-skill from reliance and introduce errors when overriding correct outputs"
  - "AI scribes reached 92 percent provider adoption in under 3 years because documentation is the rare healthcare workflow where AI value is immediate unambiguous and low-risk"
  - "scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps"
---

# centaur teams succeed only when role boundaries prevent humans from overriding AI in domains where AI is the stronger partner

The knowledge base contains a tension: centaur teams outperform both pure humans and pure AI in chess, but physicians with AI access score *worse* than AI alone in clinical diagnosis (68% vs 90%). This isn't a contradiction — it's a boundary condition that reveals when human-AI collaboration helps and when it hurts.

**The evidence across domains:**

| Domain | Human-AI collaboration | Outcome | Role boundary |
|--------|----------------------|---------|---------------|
| Chess (Kasparov) | Human sets strategy, AI calculates | Centaur wins | Clear — human doesn't override AI tactics |
| Clinical diagnosis (Stanford-Harvard) | AI diagnoses, physician verifies/overrides | Physician degrades AI by 22 points | Ambiguous — physician overrides AI on AI's strength |
| Colonoscopy (European study) | AI highlights lesions, physician decides | Physician de-skills in 3 months | Ambiguous — physician can ignore AI highlights |
| AI scribes (Bessemer 2026) | AI generates notes from conversation | 92% adoption, 10-15% revenue capture | Clear — physician doesn't override note content |
| Finance (Aldasoro/BIS) | AI augments analyst research | ~4% productivity gain | Moderate — analyst directs AI queries |

**The pattern:** Centaur teams succeed when humans contribute capabilities AI lacks (strategic judgment, relationship, context) AND the architecture prevents humans from intervening in domains where AI outperforms. They fail when role boundaries are ambiguous and humans override AI outputs based on intuition in tasks where AI has demonstrated superiority.

AI scribes are the most instructive case. They adopted at unprecedented speed (92% in ~3 years vs 15 years for EHRs) precisely because the role boundary is crisp: the AI listens and writes, the physician practices medicine. The physician doesn't override the scribe's transcription because that's not a clinical judgment. Compare clinical decision support, where the physician is explicitly invited to override AI diagnostic suggestions — the ambiguous boundary produces the degradation.

**The mechanism:** Human override of AI outputs is driven by two forces. First, **authority preservation** — professionals trained for years resist deferring to a tool on tasks they consider core to their expertise, even when the tool outperforms. Second, **Dunning-Kruger at the expertise boundary** — humans cannot accurately assess when AI knows better, because accurate assessment requires the expertise the human is losing to de-skilling. The three-month de-skilling timeline in the colonoscopy study is alarming: experts lose the very capability they need to evaluate whether to override AI.

**The alignment implication is severe.** Human-in-the-loop oversight is the default safety architecture for AI alignment. Since [[scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps]], the assumption that humans can reliably override or correct AI outputs becomes increasingly false as AI capabilities grow. The clinical evidence provides an empirical preview: when AI is the stronger partner on a specific task, human oversight degrades rather than improves the output. If this generalizes to alignment — and the capability gap will only widen — then HITL alignment is structurally unstable for the same reason HITL clinical AI is. The safety architecture fails precisely when it's most needed.

**The design implication:** Effective human-AI systems need architecturally enforced role separation, not guidelines suggesting humans "verify" AI outputs. The AI scribe model — where the human and AI operate on different tasks rather than the same task — is the template. Applied to alignment: rather than humans overseeing AI decisions (which degrades both), humans should set objectives and constraints while AI operates autonomously within those bounds, with disagreements flagged for structured review rather than real-time override.

This is the centaur model done right: not human-verifies-AI, but human-and-AI-on-complementary-tasks-with-clear-boundaries.

---

Relevant Notes:
- [[centaur teams outperform both pure humans and pure AI because complementary strengths compound]] — the chess evidence establishing the centaur model
- [[human-in-the-loop clinical AI degrades to worse-than-AI-alone because physicians both de-skill from reliance and introduce errors when overriding correct outputs]] — the clinical counter-evidence constraining when the model applies
- [[AI scribes reached 92 percent provider adoption in under 3 years because documentation is the rare healthcare workflow where AI value is immediate unambiguous and low-risk]] — the success case with clear role boundaries
- [[scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps]] — alignment oversight facing the same boundary problem
- [[the physician role shifts from information processor to relationship manager as AI automates documentation triage and evidence synthesis]] — the physician role restructuring that enforces correct role boundaries
- [[economic forces push humans out of every cognitive loop where output quality is independently verifiable because human-in-the-loop is a cost that competitive markets eliminate]] — competitive pressure accelerates the boundary problem

Topics:
- [[overview]]
- [[coordination mechanisms]]
