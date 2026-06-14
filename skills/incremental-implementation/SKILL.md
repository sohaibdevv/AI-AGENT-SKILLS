---
name: incremental-implementation
description: Ship working vertical slices instead of big-bang implementations
difficulty: senior
domains: [general]
---

## Overview

Incremental implementation is the practice of delivering working software in the smallest useful increments. Each increment is deployable, testable, and provides value or learning. The goal is to eliminate the "everything works or nothing works" state that characterizes big-bang development.

## When to Use

- For any feature that will take more than 1 day to implement
- When you feel the urge to implement "the whole thing" before shipping any of it
- When designing a refactor that touches many files

## Process

### Step 1: Identify the minimum slice
Ask: what is the smallest version of this feature that proves the core hypothesis or delivers the core value? That is your first increment.

### Step 2: Draw the vertical slice
A vertical slice cuts through all layers: UI → API → service → database → response. Implement all layers for the minimal slice before moving to the next feature.

### Step 3: Build the walking skeleton
Implement the thinnest possible end-to-end version: returns hardcoded data, has no error handling, no edge cases. Make it work end-to-end first.

### Step 4: Add tests for the skeleton
Write tests that cover the happy path of the walking skeleton. These tests will protect you as you add flesh to the skeleton.

### Step 5: Flesh out the implementation
Add real data, error handling, and edge cases incrementally. Run tests after each addition.

### Step 6: Keep each increment deployable
Every commit should leave the system in a deployable state. Use feature flags if necessary to hide incomplete work from end users.

### Step 7: Review and ship each increment
Don't accumulate increments. Ship each one. Unreleased code is risk, not progress.

## Anti-Rationalizations

**"I need to build the whole thing before I can test it"**
This is the wrong architecture. If you can't test a slice without the whole system, redesign so you can.

**"It's faster to build it all at once"**
It is faster to write code all at once. It is not faster to debug, review, and deploy code all at once.

**"Feature flags add complexity"**
Less complexity than a multi-week branch merge. Feature flags are incremental delivery infrastructure.

## Red Flags

- PRs with 50+ files changed
- Branches open for more than 5 days
- "I'll clean it up before I merge"
- Tests written only after full implementation

## Verification Requirements

- [ ] Feature decomposed into vertical slices
- [ ] Each slice is independently deployable
- [ ] Walking skeleton implemented before adding edge cases
- [ ] Tests exist before fleshing out implementation
- [ ] No PR with more than 2 days of accumulated work
