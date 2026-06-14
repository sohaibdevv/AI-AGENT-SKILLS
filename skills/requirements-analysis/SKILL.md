---
name: requirements-analysis
description: Extract, validate, and document requirements from raw input
difficulty: senior
domains: [general]
---

## Overview

Requirements analysis converts stakeholder requests into verified, unambiguous, testable requirements. It identifies conflicts, gaps, and hidden constraints before they become expensive bugs.

## When to Use

- After gathering stakeholder input but before writing specs
- When requirements come from multiple sources that may conflict
- Before estimating effort on a project
- When the system must integrate with external systems or regulations

## Process

### Step 1: Collect all sources
Gather: tickets, meeting notes, existing docs, similar systems, regulatory requirements, user research. Document each source.

### Step 2: Extract and categorize requirements
Sort into:
- **Functional** — What the system does
- **Non-functional** — How well it does it (performance, security, availability)
- **Constraints** — What the system cannot do or cannot use
- **Assumptions** — Things believed true but not verified

### Step 3: Check for ambiguity
Flag any requirement that uses: "fast," "easy," "simple," "scalable," "secure," or any other unmeasured adjective. Replace with measurable criteria.

### Step 4: Check for conflicts
List pairs of requirements that could contradict each other. Example: "must respond in under 100ms" vs "must encrypt all data at rest and in transit." Resolve or prioritize explicitly.

### Step 5: Check for completeness
Ask: What happens when X fails? What are the edge cases for Y? What permissions are required? What should happen with invalid input?

### Step 6: Validate with stakeholders
Walk through the requirements list with at least one stakeholder. Every ambiguity you resolve costs nothing here; every ambiguity you miss costs exponentially more later.

### Step 7: Prioritize
Label each requirement: **Must Have** / **Should Have** / **Nice to Have** (MoSCoW). Scope the first version to Must Haves only.

### Step 8: Create a traceability matrix
Link each requirement to its source. This allows you to answer "why does this requirement exist?" at any point.

## Anti-Rationalizations

**"We can figure out edge cases as we go"**
Edge cases figured out during implementation become design debt. Edge cases figured out during requirements analysis become requirements.

**"The stakeholder said it clearly"**
Verbal clarity is not written clarity. What they said and what they meant often diverge when you write it down and ask them to confirm.

## Verification Requirements

- [ ] All requirements are measurable (no unmeasured adjectives)
- [ ] No unresolved conflicts between requirements
- [ ] Edge cases documented for all critical flows
- [ ] Requirements prioritized with MoSCoW
- [ ] Traceability matrix exists (requirement → source)
- [ ] Stakeholder sign-off obtained
