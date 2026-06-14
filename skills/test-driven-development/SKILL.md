---
name: test-driven-development
description: Write tests before implementation to drive design and prove correctness
difficulty: senior
domains: [general]
---

## Overview

TDD is not about testing - it's about design. Writing tests first forces you to define the interface before the implementation, catches over-engineering, and creates a living specification. The test suite is proof of correctness, not evidence of effort.

## When to Use

- Before implementing any function, class, or service with business logic
- When fixing a bug (write a test that reproduces it first)
- When the implementation will be difficult to test after the fact

## Process

### Step 1: Write a failing test (Red)
Write the simplest test that captures one behavior. Run it. It must fail. If it passes without implementation, the test is wrong.

### Step 2: Write the minimum implementation (Green)
Write the least code that makes the test pass. Do not add functionality that isn't tested yet. Resist the urge to generalize.

### Step 3: Refactor (Refactor)
Now that the test passes, clean the implementation. Extract duplication, improve names, simplify logic. Run tests after each change.

### Step 4: Repeat for the next behavior
Add one behavior at a time. The test suite grows incrementally.

### Step 5: Write edge case tests
After the happy path works: test empty inputs, boundary values, error conditions, concurrent access, and failure modes.

### Step 6: Test the contract, not the implementation
Tests should describe what the function does, not how it does it. Avoid testing internal state - test inputs and outputs.

### Step 7: Keep tests fast and independent
Each test must run in isolation. No shared mutable state between tests. Tests that require a specific order are fragile.

### Step 8: Maintain the test suite
A test that is wrong is worse than no test. Delete tests that no longer represent the system. Update tests when behavior intentionally changes.

## Anti-Rationalizations

**"I'll add tests after I'm done implementing"**
Tests written after implementation test what the code does. Tests written before implementation test what the code should do. These are different.

**"TDD is too slow"**
TDD is slower in the first hour and faster in the second day. Debugging a test-free codebase is not faster - it's deferred pain.

**"This code is too simple to test"**
Code simple enough to not test is simple enough to test in 2 minutes.

**"Mocking makes the tests too complex"**
If mocking is hard, your dependencies are too tight. Use the test complexity as a design signal.

## Red Flags

- 100% of tests written after implementation
- Tests that only test happy paths
- Test names that don't describe behavior ("test1", "testMethod")
- Tests that assert on implementation details (internal state, specific function calls)
- A test suite that is slower than the SLA for a PR review

## Verification Requirements

- [ ] Tests written before or concurrent with implementation (not after)
- [ ] Failing test produced before writing implementation
- [ ] Edge cases covered: empty, boundary, error, concurrent
- [ ] Tests describe behavior in their names
- [ ] Tests are independent (order doesn't matter)
- [ ] Test suite runs in under 5 minutes for the local suite
