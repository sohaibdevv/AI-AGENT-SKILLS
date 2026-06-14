---
name: documentation-and-adrs
description: Write documentation that stays accurate and decisions that stay recorded
difficulty: junior
domains: [general]
---

## Overview

Documentation that is wrong is worse than no documentation - it confidently misleads. This skill writes documentation that is minimal, accurate, and maintained. It also captures architectural decisions (ADRs) so future engineers understand why the system is the way it is.

## When to Use

- Before shipping a new feature or API
- When changing a public interface
- When making an architectural decision that is hard to reverse
- When documenting a non-obvious system behavior

## Process

### Step 1: Audience-first
Before writing: who is the reader? What do they already know? What do they need to do after reading this? Write for that person, not for yourself.

### Step 2: Document the why, not just the what
The code describes what. The documentation must describe: why this design, what was rejected, what trade-offs were made. This is what prevents future engineers from "improving" something that can't be improved.

### Step 3: README structure
Good README:
1. What is this? (one sentence)
2. Why does it exist? (one paragraph)
3. Quick start (the first 5 minutes)
4. Core concepts (only what's non-obvious)
5. Reference (exhaustive, machine-readable if possible)
6. Contributing (link to CONTRIBUTING.md)

### Step 4: API documentation
For every public API endpoint or function:
- Purpose (one sentence)
- Parameters: name, type, constraints, required/optional
- Return value: type, shape, possible values
- Error cases: what errors can occur and when
- Example: one complete working example

### Step 5: Architecture Decision Records (ADRs)
Write an ADR for every decision that is:
- Hard to reverse
- Non-obvious in its rationale
- Likely to be questioned by a future engineer

ADR format:
```markdown
# ADR-NNN: [Short Title]

## Status
[Proposed | Accepted | Deprecated | Superseded by ADR-NNN]

## Context
[What situation led to this decision?]

## Decision
[What was decided?]

## Alternatives Considered
[What else was evaluated and why was it rejected?]

## Consequences
[What becomes easier or harder as a result?]
```

### Step 6: Keep documentation close to the code
Documentation in a separate wiki will drift. Prefer: inline docstrings for functions, README.md in each directory, ADRs in a `docs/decisions/` folder.

### Step 7: Test your documentation
Have someone unfamiliar with the system follow the quick start. If they get stuck, the documentation is wrong.

## Anti-Rationalizations

**"The code is self-documenting"**
Code says what. Documentation says why. No code is self-documenting for the why.

**"No one reads ADRs"**
No one reads ADRs until they need to. That moment always comes.

## Verification Requirements

- [ ] README has: what, why, quick start, contributing
- [ ] All public APIs documented with parameters, returns, and examples
- [ ] ADR written for hard-to-reverse decisions
- [ ] Documentation reviewed by someone unfamiliar with the system
- [ ] Docs live close to the code they describe
