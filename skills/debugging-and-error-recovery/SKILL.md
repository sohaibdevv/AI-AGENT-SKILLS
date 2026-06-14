---
name: debugging-and-error-recovery
description: Systematic root-cause analysis — stop guessing, start isolating
difficulty: junior
domains: [general]
---

## Overview

Debugging is a skill, not luck. Effective debugging is systematic: form a hypothesis, design a minimal test, validate or falsify, repeat. Random changes are not debugging — they are gambling.

## When to Use

- When a test is failing and the cause is unclear
- When behavior in production differs from behavior in development
- When you've been debugging the same issue for more than 30 minutes

## Process

### Step 1: Reproduce reliably
Before investigating: reproduce the issue consistently. If you can't reproduce it, you can't verify you've fixed it.

### Step 2: Gather evidence
Read the full error message (not just the last line). Check: logs, stack traces, metrics, recent changes. What changed recently?

### Step 3: Form a hypothesis
Write down a specific, falsifiable hypothesis: "I believe the error is caused by X because of Y."

### Step 4: Isolate the smallest reproduction
Create the simplest possible test case that reproduces the issue. Remove everything that is not necessary for the bug to manifest.

### Step 5: Test the hypothesis
Design an experiment that will either confirm or falsify your hypothesis. This often means: add a log statement, write a unit test, or add an assertion.

### Step 6: Falsify or confirm
If the evidence falsifies your hypothesis: form a new hypothesis. If it confirms: find the root cause (not just the symptom).

### Step 7: Fix and verify
Fix the root cause, not the symptom. Verify the fix: the minimal reproduction must no longer reproduce. The full test suite must pass.

### Step 8: Write a regression test
Write a test that would have caught this bug. Add it to the test suite.

## Anti-Rationalizations

**"I'll try changing this and see if it works"**
This is not debugging. Form a hypothesis first.

**"The bug is intermittent — I can't reproduce it"**
Intermittent bugs have causes. Add logging and wait for the next occurrence. Or: analyze the conditions under which it occurred and stress test those conditions.

## Verification Requirements

- [ ] Issue reproducible before fix attempted
- [ ] Root cause identified (not just symptom addressed)
- [ ] Fix verified with minimal reproduction
- [ ] Regression test added
