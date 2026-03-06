---
description: Quadratic voting requires preventing both Sybil attacks and collusion which is likely impossible in practice for blockchain systems
type: claim
domain: mechanisms
created: 2026-02-16
source: "Heavey, Futarchy as Trustless Joint Ownership (2024)"
confidence: likely
tradition: "futarchy, mechanism design, DAO governance, quadratic voting"
---

Quadratic voting is popular in certain blockchain communities but poorly suited to crypto governance because it requires preventing both Sybil attacks and collusion—problems that are likely impossible to solve in practice for decentralized systems. The standard discussions treat proof of humanity as the main obstacle, which is true "in the same way that rocket technology is the main obstacle to humans living on the surface of the sun—the first problem on the path is already quite difficult, and the problems get much harder after that."

Even if proof of humanity were solved, collusion remains intractable. While difficult in physical elections with paper ballots (especially if voters cannot prove their vote with photos), any digital voting system allowing remote participation is susceptible to collusion through the ease of proving one's vote and coordinating with others. Preventing collusion relies on NOT using blockchain or cryptography at all—the transparency and verifiability that make blockchains useful are exactly what enable provable vote-selling.

Beyond these practical obstacles, quadratic voting doesn't unlock joint ownership anyway—it doesn't give minority holders rights, just different voting weights. This makes it fundamentally unsuitable for addressing the problem that [[token voting DAOs offer no minority protection beyond majority goodwill]]. The mechanism needs to prevent majority theft, not just reweight majority decisions.

The contrast with [[decision markets make majority theft unprofitable through conditional token arbitrage]] is instructive: futarchy sidesteps the Sybil and collusion problems by making them irrelevant. In decision markets, anyone can participate with any amount of capital through any number of identities—the arbitrage mechanism works regardless. This connects to why [[coin price is the fairest objective function for asset futarchy]]: the shared financial objective aligns all participants without needing to verify or limit their participation.

---

Relevant Notes:
- [[token voting DAOs offer no minority protection beyond majority goodwill]] -- the problem quadratic voting fails to solve
- [[decision markets make majority theft unprofitable through conditional token arbitrage]] -- mechanism that sidesteps Sybil and collusion entirely
- [[coin price is the fairest objective function for asset futarchy]] -- shows how shared objectives avoid identity-dependent mechanisms
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]] -- suggests quadratic voting might work for non-asset decisions with different properties
- [[futarchy solves trustless joint ownership not just better decision-making]] -- the deeper innovation that quadratic voting cannot replicate
- [[MetaDAO empirical results show smaller participants gaining influence through futarchy]] -- empirical evidence that futarchy achieves the egalitarian goal quadratic voting promises but cannot deliver

Topics:
- [[livingip overview]]