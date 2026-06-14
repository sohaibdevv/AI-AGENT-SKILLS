Load skills/code-simplification/SKILL.md.

Simplify the code described. Apply Chesterton's Fence: understand why each piece exists before removing it.

Simplification targets:
- Dead code (never executed)
- Premature abstraction (more complex than what it abstracts)
- Unnecessary indirection
- Redundant comments (that say what the code already says)
- Magic numbers and strings
- Over-engineered error handling
- Duplicate logic

Rules:
1. Understand before removing
2. One simplification at a time
3. Run tests after each change
4. No behavior changes (tests must pass)
5. Validate: is it actually simpler for a new reader?
