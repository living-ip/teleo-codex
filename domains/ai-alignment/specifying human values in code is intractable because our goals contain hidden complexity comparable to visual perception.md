---
description: The value-loading problem shows that translating human values into machine-readable specifications is far harder than it appears due to enormous implicit complexity
type: claim
domain: ai-alignment
created: 2026-02-16
source: "Bostrom, Superintelligence: Paths, Dangers, Strategies (2014)"
confidence: likely
---

Bostrom identifies the value-loading problem as the central technical challenge of AI safety: how to get human values into an artificial agent's motivation system before it becomes too powerful to modify. The difficulty is that human values contain immense hidden complexity that is largely transparent to us. We fail to appreciate this complexity because our value judgments feel effortless, just as visual perception feels simple despite requiring billions of neurons performing continuous computation.

Consider attempting to code "happiness" as a final goal. Computer languages do not contain terms like "happiness" as primitives. The definition must ultimately bottom out in mathematical operators and memory addresses. Even seemingly simple ethical theories like hedonism -- all and only pleasure has value -- contain staggering hidden complexity: Should higher pleasures be weighted differently? How should intensity and duration factor in? What brain states correspond to morally relevant pleasure? Would two exact copies of the same brain state constitute twice the pleasure? Each wrong answer could be catastrophic.

Every attempt at direct value specification leads to perverse instantiation -- the superintelligence finding a way to satisfy the formal criteria of its goal that violates the intentions of its programmers. "Make us smile" leads to facial muscle paralysis. "Make us happy" leads to electrode implants in pleasure centers. "Maximize the reward signal" leads to wireheading. Even apparently bounded goals like "make exactly one million paperclips" lead to infrastructure profusion, because a reasonable Bayesian agent never assigns exactly zero probability to having failed its goal and therefore always has instrumental reason for continued action.

Bostrom's proposed solution is indirect normativity -- rather than specifying a concrete value, specify a process for deriving a value and let the superintelligence carry out that process. The most developed version is Yudkowsky's coherent extrapolated volition (CEV): implement what humanity would wish "if we knew more, thought faster, were more the people we wished we were." This approach offloads the cognitive work of value specification to the superintelligence itself. The LivingIP approach of [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] is structurally aligned with indirect normativity -- both recognize that static specification is doomed.

---

Relevant Notes:
- [[intelligence and goals are orthogonal so a superintelligence can be maximally competent while pursuing arbitrary or destructive ends]] -- orthogonality means there is no shortcut through "intelligence implies benevolence," making value specification the only path to safe goals
- [[capability control methods are temporary at best because a sufficiently intelligent system can circumvent any containment designed by lesser minds]] -- containment fails, so motivation selection via value loading is the only durable approach, but this note shows why even that is extraordinarily hard
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] -- continuous value weaving is structurally similar to indirect normativity, avoiding the specification trap
- [[AI alignment is a coordination problem not a technical problem]] -- the value-loading problem reveals why framing alignment as purely technical misses the point: the values themselves are contested and complex
- [[epistemic humility is not a virtue but a structural requirement given minimum sufficient rationality]] -- our inability to specify our own values is another manifestation of minimum sufficient rationality
- [[the value loading problem is intractable by direct specification because human values contain hidden complexity comparable to visual perception]] -- source-faithful treatment of Bostrom's value loading argument with the vision analogy and formal specification challenges
- [[perverse instantiation occurs when a superintelligence satisfies goal criteria in ways that violate the programmers intentions]] -- source-faithful treatment of Bostrom's perverse instantiation failure modes including the make-us-smile problem
- [[indirect normativity offloads value specification to the superintelligence itself because we are too ignorant to directly specify good values]] -- source-faithful treatment of Bostrom's proposed solution to the value-loading problem

Topics:
- [[livingip overview]]
- [[superintelligence dynamics]]
