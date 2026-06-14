---
name: doubt-driven-development
description: Challenge assumptions and hidden dependencies before they become bugs
difficulty: senior
domains: [general]
---

## Overview

Every "I'm sure this is fine" is a future incident. This skill applies systematic skepticism to assumptions in requirements, implementations, and integrations before they ship.

## When to Use

- When something "seems obvious" but hasn't been verified
- When implementing code that depends on external behavior
- When code review reveals an implicit assumption
- When debugging a "that's impossible" bug

## Process

### Step 1: List your assumptions
For every non-trivial implementation, write down all the things that must be true for it to work. Make implicit assumptions explicit.

### Step 2: Classify by risk
For each assumption: what is the cost if it's wrong? High-cost assumptions must be verified before shipping.

### Step 3: Verify high-cost assumptions
How to verify:
- Write a test that fails if the assumption is wrong
- Find the source of truth (spec, documentation)
- Measure it (add a log, run a query)
- Ask someone who knows

### Step 4: Make remaining assumptions visible
For assumptions you can't verify before shipping: document them as known assumptions. Future engineers must be able to find them.

## Verification Requirements

- [ ] All non-trivial assumptions listed
- [ ] High-cost assumptions verified before shipping
- [ ] Remaining assumptions documented in code
