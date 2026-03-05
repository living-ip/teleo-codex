---
description: The futarchy mechanism forces would-be attackers to either buy worthless pass tokens above fair value or sell fail tokens below fair value
type: framework
domain: livingip
created: 2026-02-16
source: "Heavey, Futarchy as Trustless Joint Ownership (2024)"
confidence: proven
tradition: "futarchy, mechanism design, DAO governance"
---

Decision markets create a mechanism where attempting to steal from minority holders becomes a losing trade. The four conditional tokens (fABC, pABC, pUSD, fUSD) establish a constraint: for a treasury-raiding proposal to pass, pABC/pUSD must trade higher than fABC/fUSD. But from any rational perspective, 1 fABC is worth 1 ABC (DAO continues normally) while 1 pABC is worth 0 (DAO becomes empty after raid).

This creates an impossible situation for attackers. To pass the proposal, they must buy worthless pABC above spot price and sell fABC below fair value. If they try to manipulate with small positions, defenders keep selling pABC at a premium until running out of tokens—the attacker ends up buying all defender tokens above fair value. If they focus on pushing down fABC price, any defender with capital buys discounted fABC until the proposal fails AND the attacker loses money selling ABC below its worth.

The mechanism works at any ownership threshold, not just above 50%. MetaDAO proposal 6 provided empirical validation: Ben Hawkins failed to make the DAO sell him tokens at a discount despite spending significant capital to manipulate the market. As he noted, "the potential gains from the proposal's passage were outweighed by the sheer cost of acquiring the necessary META."

This mechanism proof connects to [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]]—the arbitrage protection is strongest for clear-cut value transfers, making futarchy ideal for treasury decisions even when other mechanisms suit different decision types.

**Bidirectional protection (Mar 2026 evidence).** The Ranger Finance liquidation demonstrates that the mechanism works not only to protect minorities from majority theft, but also to protect investors from team extraction. Tokenholders alleged material misrepresentation ($5B volume/$2M revenue claimed vs $2B/$500K actual), and the conditional market priced liquidation at 97% pass with $581K in volume. The team had no viable path to prevent liquidation through market manipulation — the same arbitrage dynamics that protect against majority raids also prevent teams from blocking investor-initiated liquidation. Since [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]], the conditional token arbitrage mechanism is the enforcement layer for the entire "unruggable ICO" thesis.

---

Relevant Notes:
- [[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]] — general principle this mechanism implements
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]] — explains when this protection is most valuable
- [[token economics replacing management fees and carried interest creates natural meritocracy in investment governance]] — shows how mechanism-enforced fairness enables new organizational forms
- [[mechanism design changes the game itself to produce better equilibria rather than expecting players to find optimal strategies]] -- conditional token arbitrage IS mechanism design: the market structure transforms a game where majority theft is rational into one where it is unprofitable
- [[the Vickrey auction makes honesty the dominant strategy by paying winners the second-highest bid rather than their own]] -- decision markets achieve a Vickrey-like property: honest pricing becomes dominant because manipulation creates arbitrage opportunities that informed defenders exploit

Topics:
- [[livingip overview]]