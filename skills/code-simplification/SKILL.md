---
name: code-simplification
description: Remove accidental complexity without changing behavior - apply Chesterton's Fence
difficulty: senior
domains: [general]
---

## Overview

Every line of code is a liability. Complexity that serves no purpose makes systems harder to understand, harder to test, and harder to change. This skill removes accidental complexity while preserving intentional complexity and essential behavior.

## When to Use

- When a PR review reveals unnecessarily complex code
- When a function is hard to test because it does too many things
- When adding a feature to existing code requires understanding too much context
- As part of the `/simplify` workflow

## Process

### Step 1: Understand before you remove (Chesterton's Fence)
Before removing any code that seems unnecessary: understand why it was written. If you don't know why a fence exists, don't remove it. Find out first.

### Step 2: Identify the complexity types
- **Accidental complexity**: complexity from poor implementation choices
- **Essential complexity**: complexity inherent to the problem domain

Only remove accidental complexity. Essential complexity cannot be removed - only managed.

### Step 3: Look for these simplification opportunities

**Dead code**: Code that is never executed. Remove it (git remembers it).

**Premature abstraction**: Abstractions that are more complex than the thing they abstract. Inline them.

**Unnecessary indirection**: Function A calls function B which calls function C and each is 5 lines. Collapse them.

**Redundant comments**: Comments that say what the code already says. Delete them. Keep comments that explain WHY.

**Magic numbers**: Replace `if (retries > 3)` with `if (retries > MAX_RETRIES)`.

**Over-engineered error handling**: 10 levels of nested try/catch for a case that can't happen. Simplify.

**Duplicate logic**: The same logic in 3 places. Extract to one place.

### Step 4: Simplify in small steps
One simplification at a time. Run tests after each step.

### Step 5: Verify behavior is unchanged
The test suite must pass. If there are no tests, write tests for the behavior you're simplifying before you simplify it.

### Step 6: Check: is it simpler for a new reader?
Have someone unfamiliar with this code read it. Is it easier to understand than before?

## Anti-Rationalizations

**"Removing this might break something I don't know about"**
This is Chesterton's Fence. Understand it first. Then remove it.

**"The abstraction makes it more extensible"**
If you are not extending it now, the abstraction is premature. Three identical lines are better than a wrong abstraction.

## Verification Requirements

- [ ] Every removal preceded by understanding why it was written
- [ ] Tests pass after each simplification step
- [ ] No behavior changes (confirmed by tests)
- [ ] A new reader finds it simpler (validation)
