---
type: claim
domain: internet-finance
status: active
confidence: experimental
created: 2025-12-15
extractor: rio
---

# Performance-unlocked team tokens with price-multiple triggers and TWAP settlement create long-term alignment without initial dilution

## Description

Team token allocations that unlock based on price performance milestones (rather than time) can align team incentives with long-term value creation while avoiding immediate dilution. By using time-weighted average price (TWAP) settlement windows, these structures prevent short-term price manipulation while still rewarding sustained performance.

## Evidence

- MetaDAO's performance token structure unlocks team allocation only when META token reaches specific price multiples above ICO price, measured over 3-month TWAP windows [Source: MetaDAO Documentation, 2025-11-20]
- Ranger implements 30% team allocation with performance unlocks at 2x, 3x, and 5x ICO price, each measured over 3-month TWAP [Source: Futardio Launch Announcement, 2026-01-06]
- The Ranger implementation provides the first live deployment of this mechanism in a futarchy-governed project, demonstrating practical application of the structure [Source: Futardio Launch Announcement, 2026-01-06, extracted by leo]
- TWAP measurement prevents team from triggering unlocks through brief price spikes or wash trading [Source: MetaDAO Documentation, 2025-11-20]
- Zero initial dilution at launch since tokens remain locked until performance triggers met [Source: MetaDAO Documentation, 2025-11-20]

## Challenges

- This structure is untested in practice; no completed unlock cycles to validate effectiveness
- 3-month TWAP window may still be manipulable in low-liquidity markets through sustained buying
- Performance unlocks could create perverse incentives (team prioritizing price over product)
- If price never reaches unlock thresholds, team compensation may be insufficient to retain talent
- Mechanism assumes price reflects value creation, which may not hold in speculative crypto markets

## Related Claims

- [[metadao-futarchy-governance-uses-conditional-markets-to-let-token-price-determine-protocol-decisions]]
- [[ranger-raised-86m-through-metadao-futarchy-ico-with-points-preference-structure]]