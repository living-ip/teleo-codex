---
description: Stanford-Harvard study shows AI alone 90 percent vs doctors plus AI 68 percent vs doctors alone 65 percent and a colonoscopy study found experienced gastroenterologists measurably de-skilled after just three months with AI assistance
type: claim
domain: health
created: 2026-02-18
source: "DJ Patil interviewing Bob Wachter, Commonwealth Club, February 9 2026; Stanford/Harvard diagnostic accuracy study; European colonoscopy AI de-skilling study"
confidence: likely
---

# human-in-the-loop clinical AI degrades to worse-than-AI-alone because physicians both de-skill from reliance and introduce errors when overriding correct outputs

The human-in-the-loop model -- where AI suggests and humans verify -- is the default safety architecture for clinical AI. But two lines of evidence suggest this model is fundamentally flawed rather than merely imperfect.

**The override problem.** A Stanford/Harvard study tested physicians diagnosing complex clinical scenarios: doctors alone achieved 65% accuracy, doctors with AI access achieved 68%, and AI alone achieved 90%. The physician's input actually degraded the AI's performance by 22 percentage points. When physicians override correct AI outputs based on intuition or incomplete reasoning, they introduce systematic errors that negate the tool's accuracy advantage. As Wachter's wife put it: "You thought you were smarter than Google Maps."

**The de-skilling problem.** A European study gave gastroenterologists access to an AI colonoscopy tool that highlights suspicious lesions with green boxes. After just three months of use, the gastroenterologists' unaided performance was measurably worse than before they started using the tool. These were not trainees -- the average had ten years of experience doing the procedure. Three months of AI assistance eroded a decade of skill.

These findings create a genuine paradox for clinical AI deployment. The system designed for safety -- human oversight of AI -- may be less safe than autonomous AI operation. But autonomous AI in medicine is politically and ethically untenable given current error rates and the stakes involved. The resolution may require rethinking the interaction model entirely: rather than humans verifying AI outputs, perhaps AI should verify human outputs, or the two should process independently with disagreements flagged for deeper review.

Wachter frames the challenge directly: "Humans suck at remaining vigilant over time in the face of an AI tool." The Tesla parallel is apt -- a system called "self-driving" that requires constant human attention produces 100+ fatalities from the predictable failure of that attention. Healthcare's "physician-in-the-loop" model faces the same fundamental human factors constraint.

---

Relevant Notes:
- [[centaur teams outperform both pure humans and pure AI because complementary strengths compound]] -- the chess centaur model does NOT generalize to clinical medicine where physician overrides degrade AI performance
- [[medical LLM benchmark performance does not translate to clinical impact because physicians with and without AI access achieve similar diagnostic accuracy in randomized trials]] -- the multi-hospital RCT found similar diagnostic accuracy with/without AI; the Stanford/Harvard study found AI alone dramatically superior
- [[the physician role shifts from information processor to relationship manager as AI automates documentation triage and evidence synthesis]] -- if physicians degrade AI diagnostic performance, the role shift toward relationship management is not just efficient but necessary
- [[ambient AI documentation reduces physician documentation burden by 73 percent but the relationship between automation and burnout is more complex than time savings alone]] -- documentation AI where physicians don't override outputs avoids the de-skilling problem
- [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]] -- human-in-the-loop oversight is the standard safety measure against misalignment, but if humans reliably fail at oversight, this safety architecture is weaker than assumed

Topics:
- [[health and wellness]]
