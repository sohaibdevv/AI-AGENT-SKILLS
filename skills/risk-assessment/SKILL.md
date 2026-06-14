---
name: risk-assessment
description: Identify and mitigate technical and delivery risk before it becomes an incident
difficulty: senior
domains: [general]
---

## Overview

Risk not identified is risk not managed. This skill makes technical and delivery risk explicit so it can be mitigated, accepted, or escalated — before it surprises you.

## When to Use

- Before estimating a project
- Before starting a large migration or refactor
- Before a major deployment
- When a project has been "almost done" for two weeks

## Process

### Step 1: List all risks
Brainstorm: what could go wrong? Include: technical unknowns, external dependencies, team knowledge gaps, deadline pressure, infrastructure, security, data integrity.

### Step 2: Score each risk
For each risk: Likelihood (1–3) × Impact (1–3) = Risk Score (1–9). Prioritize scores ≥ 6.

### Step 3: Classify risks
- **Known known**: You know about it and understand it. Mitigate.
- **Known unknown**: You know there's something you don't know. Research it.
- **Unknown unknown**: You don't know what you don't know. Add buffer and run pre-mortems.

### Step 4: Design mitigations
For each high-score risk: what is the mitigation? What is the fallback? Who owns it?

### Step 5: Pre-mortem
Imagine it's 3 months from now and the project failed. What went wrong? Work backwards. This surfaces unknown unknowns.

### Step 6: Define go/no-go criteria
For the deployment or launch: what conditions must be true to proceed? What conditions force a delay?

## Verification Requirements

- [ ] All risks identified and scored
- [ ] High-score risks have documented mitigations
- [ ] Pre-mortem conducted
- [ ] Go/no-go criteria defined
- [ ] Risk log tracked throughout the project
