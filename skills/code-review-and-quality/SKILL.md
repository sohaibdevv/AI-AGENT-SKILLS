---
name: code-review-and-quality
description: Conduct staff-engineer-level code reviews across correctness, security, performance, readability, and architecture
difficulty: staff
domains: [general]
---

## Overview

Code review is the most important quality gate in software development. A good code review catches bugs, prevents security vulnerabilities, improves design, and transfers knowledge — before code reaches production. This skill runs a structured review across five dimensions.

## When to Use

- Before any PR is merged
- When reviewing AI-generated code
- As part of the `/review` workflow

## Process

### Dimension 1: Correctness

- Does the code do what the spec says?
- Are all edge cases handled? (empty inputs, null, zero, max values, concurrent access)
- Are error conditions handled? (network failure, invalid input, resource exhaustion)
- Are there off-by-one errors?
- Are there race conditions in concurrent code?
- Does the code handle partial failures?

### Dimension 2: Security

- Is all user input validated before use?
- Are all database queries parameterized?
- Is no sensitive data logged?
- Are all auth/authz checks correct?
- Are there injection vulnerabilities? (SQL, shell, LDAP, XML)
- Are there new attack surfaces (new endpoints, new data types)?
- See `security-and-hardening` for full checklist.

### Dimension 3: Performance

- Are there N+1 query patterns?
- Are there missing database indexes?
- Is expensive computation done in a hot path?
- Are large data sets loaded into memory when streaming would work?
- Are there blocking synchronous calls that should be async?
- Does the change affect the critical path? Profile it.

### Dimension 4: Readability and Maintainability

- Does the code express its intent clearly?
- Are names accurate? (Function names that lie are worse than no names)
- Is complexity necessary, or is there a simpler solution?
- Are there long functions that should be extracted?
- Is there duplicated logic that should be shared?
- Are there magic numbers or strings that should be constants?
- Will a new engineer understand this in 6 months?

### Dimension 5: Architecture

- Does this change fit the existing design?
- Does this create new coupling that will be hard to remove?
- Does this introduce a new pattern when an existing one could be used?
- Does this create a new dependency that adds risk?
- Does this make the system harder or easier to test?

### Review process

1. Read the PR description. If it's missing, ask for it.
2. Understand the spec/ticket the PR is implementing.
3. Review the tests first — they tell you what the author thinks the code should do.
4. Review the implementation against each dimension above.
5. Run the code locally for non-trivial PRs.
6. Leave specific, actionable comments. Not "this is wrong" — "this will fail when X because Y; consider Z."

## Anti-Rationalizations

**"The tests pass — it's good to go"**
Tests passing proves the code passes the tests. It does not prove the tests are correct, complete, or that the code is secure.

**"It's a small change — it doesn't need a full review"**
Small changes have caused large incidents. The review checklist is short enough to run on any change.

## Verification Requirements

- [ ] All five dimensions reviewed
- [ ] Comments are specific and actionable (not vague)
- [ ] Security dimension completed for any change touching auth, data, or external APIs
- [ ] Tests reviewed before implementation
