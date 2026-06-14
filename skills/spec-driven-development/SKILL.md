---
name: spec-driven-development
description: Write a specification before writing any implementation code
difficulty: senior
domains: [general]
---

## Overview

Specification-driven development forces clarity before commitment. A spec written before code reveals ambiguities, surfaces missing requirements, and creates a shared contract between implementer and reviewer. Code written without a spec is often solving the wrong problem correctly.

## When to Use

- Before implementing any new feature or significant change
- When requirements are unclear or verbally communicated
- Before writing any public API or interface
- When multiple engineers will work on the same feature

## Process

### Step 1: Capture the raw requirement
Write down what you've been asked to build, in plain English, without interpretation. Include the source (ticket, conversation, PR comment).

### Step 2: Identify stakeholders and success criteria
Answer: Who uses this? How do they know it works? What does failure look like?

### Step 3: Write functional requirements
List what the system must do. Use "The system shall..." or "When X, then Y." Each requirement must be independently testable.

### Step 4: Write non-functional requirements
Document: performance expectations, security constraints, accessibility requirements, scale targets, error handling expectations.

### Step 5: Define the data model
Sketch the inputs, outputs, and state transitions. Identify what data must be stored, what must not be stored, and what can be computed.

### Step 6: Define the interface contract
For APIs: endpoints, methods, request/response shapes, error codes.
For UIs: wireframe or component tree, states (loading, empty, error, populated).
For libraries: public function signatures and contracts.

### Step 7: List open questions
Document every assumption you made and every question you don't have an answer to. Get answers before writing code.

### Step 8: Get sign-off
Have the spec reviewed by at least one stakeholder before starting implementation. A spec that nobody reads is not a spec.

## Anti-Rationalizations

**"This feature is obvious — I don't need to write it down"**
If it's obvious, the spec takes 10 minutes. If it's not obvious, the spec saves days. Either way: write it.

**"We'll iterate quickly — the spec will be wrong anyway"**
Iteration is not an excuse to skip specs. It means you write smaller, tighter specs for each iteration. Iterating on code without a spec means iterating in circles.

**"The ticket has enough detail"**
Tickets capture requests, not contracts. A spec translates requests into testable requirements. These are different things.

## Red Flags

- Implementation started before all open questions are resolved
- Spec has no acceptance criteria
- "I'll just figure it out as I go"
- Spec written after implementation to explain what was built

## Verification Requirements

Before starting implementation:
- [ ] Functional requirements listed and independently testable
- [ ] Non-functional requirements documented
- [ ] Interface contract defined
- [ ] Open questions list is empty (all answered)
- [ ] At least one stakeholder has reviewed the spec
- [ ] Acceptance criteria are measurable, not subjective
