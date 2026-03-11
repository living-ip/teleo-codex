---
type: claim
claim: Futarchy execution groups use multisig escrow with discretionary distribution authority after proposal passage
confidence: experimental
domains:
  - internet-finance
created: 2024-12-10
processed_date: 2024-12-10
---

In Drift Futarchy's implementation, execution groups operate through a multisig escrow structure where allocated tokens are held in escrow and distributed at the discretion of the execution group after a proposal passes.

This creates a governance model where:
- Proposal passage authorizes token allocation but doesn't automatically distribute funds
- A designated execution group (multisig) controls actual distribution decisions
- The execution group has discretionary authority to determine individual allocations within the approved total

This structure separates the decision to allocate resources (made through futarchy markets) from the decision of how to distribute those resources among recipients (made by the execution group).

## Evidence

### Supporting Evidence

- **Drift Futarchy Proposal #1** (2024-05-30, Futardio): The proposal states "The tokens will be held in escrow by the execution group (a multisig)" and "distributed at the discretion of the execution group." This establishes the multisig escrow pattern for at least this proposal. Added: 2024-12-10

### Conflicting Evidence

None identified.

## Scratchpad

Confidence is "experimental" because this is based on a single proposal's structure. We don't yet know if this is a standard pattern across all Drift Futarchy proposals or specific to this inaugural proposal. The multisig structure itself is clearly documented, but whether this represents a general pattern requires more evidence.