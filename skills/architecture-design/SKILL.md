---
name: architecture-design
description: Design systems at the right scale with explicit trade-off documentation
difficulty: staff
domains: [general]
---

## Overview

Architecture design is the discipline of making the decisions that are hard to reverse later. Good architecture is not the most elegant - it is the simplest design that satisfies constraints today and can be evolved tomorrow. Every architecture decision has costs; this skill makes them explicit.

## When to Use

- Before building any system with more than 2 components
- When adding a new service to an existing system
- When the existing architecture is causing repeated failures
- Before selecting a technology stack

## Process

### Step 1: Establish the constraints
List: scale targets, latency requirements, consistency requirements, team size, deployment environment, budget, regulatory constraints. Architecture that ignores constraints is fiction.

### Step 2: Identify the quality attributes
Rank the system's quality attributes in priority order: availability, consistency, latency, throughput, security, maintainability, cost. You cannot optimize all of them - make the trade-offs explicit.

### Step 3: Define the component boundaries
Identify the major components and their responsibilities. Apply the Single Responsibility Principle at the system level: each component should own one thing well.

### Step 4: Define the data flow
Draw how data moves through the system. Where does it originate? Where is it stored? Where is it transformed? Where does it exit? This reveals coupling and bottlenecks.

### Step 5: Choose synchronous vs async communication
For each inter-component call: does the caller need the result immediately? If no, use async. Sync calls are coupling in disguise.

### Step 6: Design for failure
For each component and connection: what happens when it fails? Design for partial failure, not just total failure. Document: retry strategy, circuit breaker, fallback, timeout.

### Step 7: Plan the data model at boundaries
Define what data crosses each boundary. Avoid sharing databases between services. Define API contracts between components.

### Step 8: Write an ADR (Architecture Decision Record)
Document: the decision, the context, the alternatives considered, the rationale, and the consequences. An architecture without ADRs cannot be maintained.

### Step 9: Review against requirements
Map each architecture component back to a requirement. If a component has no requirement, remove it.

## Anti-Rationalizations

**"We'll start simple and scale later"**
Starting simple is correct. But "we'll scale later" often means "we built an architecture that cannot scale without a rewrite." Design for 10x your current load, not 1000x.

**"Microservices are more scalable"**
Microservices are more operationally complex. Unless your team can't deploy frequently due to coupling, a monolith is simpler. Don't distribute a monolith; build a modular monolith first.

**"We don't need an ADR for this"**
Future engineers will ask why this decision was made. ADRs cost 30 minutes. Re-learning why a decision was made costs days.

## Red Flags

- No discussion of failure modes
- All components share a database
- Synchronous calls across service boundaries that don't need to be synchronous
- No ADR for decisions that are hard to reverse
- Architecture driven by technology preference, not requirements

## Verification Requirements

- [ ] Quality attributes ranked and trade-offs documented
- [ ] Component boundaries defined with single responsibilities
- [ ] Data flow diagrammed
- [ ] All synchronous calls justified
- [ ] Failure modes documented for each component
- [ ] ADR written for each non-obvious decision
- [ ] Architecture mapped back to requirements
