---
name: planning-and-task-breakdown
description: Decompose work into atomic, independently verifiable tasks
difficulty: senior
domains: [general]
---

## Overview

Good task breakdown is the difference between a project that ships incrementally and one that delivers a big-bang surprise at the deadline. Tasks must be atomic (one logical unit), verifiable (you can prove it's done), and independent (completable without blocking on other tasks).

## When to Use

- After writing a spec, before starting implementation
- When estimating a project
- When coordinating work across multiple engineers
- When a task has been "in progress" for more than 2 days

## Process

### Step 1: Identify vertical slices
A vertical slice delivers end-to-end value: from input to storage to output. Prefer slices over horizontal layers (don't plan "do all the models, then all the controllers, then all the views").

### Step 2: Write tasks in the format: [Verb] [Object] [Constraint]
Good: "Add rate limiting to the /api/search endpoint (max 100 req/min per user)"
Bad: "Rate limiting"

### Step 3: Apply the two-day rule
No task should take more than 2 days. If it does, break it down further. If it genuinely can't be broken down, flag it as a risk.

### Step 4: Define done for each task
Each task must have a clear, observable "done" state: test passes, endpoint returns 200, UI renders without error, migration runs cleanly.

### Step 5: Identify dependencies
Draw or list which tasks must complete before others can start. Minimize dependencies - they are schedule risk.

### Step 6: Identify the critical path
The longest chain of dependent tasks sets the minimum delivery time. Optimize this chain first.

### Step 7: Add a buffer
Add 20% time to estimates for unknowns. If you've never done something before, add 50%.

### Step 8: Sequence for early learning
Put the riskiest tasks first. You want to discover impossible requirements on day 2, not day 20.

## Anti-Rationalizations

**"These tasks are too small to track"**
If it's too small to track, it's too small to lose track of - which means it will be forgotten. Track it.

**"I'll figure out the subtasks as I go"**
Figuring out subtasks during execution means context-switching between planning mode and execution mode. Do the planning upfront.

**"The spec is clear enough - I don't need to break it down"**
A spec describes the destination. A task breakdown is the map. You need both.

## Red Flags

- Tasks without acceptance criteria
- Tasks estimated at "a few hours" that have been open for a week
- All tasks blocked on one person
- No buffer in the plan

## Verification Requirements

- [ ] Every task has a verb-object-constraint format
- [ ] No task is estimated over 2 days
- [ ] Every task has a measurable "done" state
- [ ] Dependencies are mapped
- [ ] Critical path is identified
- [ ] 20% buffer included
- [ ] Riskiest tasks are sequenced first
