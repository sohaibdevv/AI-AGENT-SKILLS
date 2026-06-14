---
name: microservices-design
description: Design service boundaries, contracts, and failure modes for distributed systems
difficulty: staff
domains: [general]
---

## Overview

Microservices solve a people problem (independent team deployments) while creating a technical problem (distributed systems complexity). This skill only adds microservices when they solve a real problem, and designs them to be independently deployable, failure-isolated, and observable.

## When to Use

- Before splitting a monolith into services
- When designing a new service in an existing distributed system
- When services are tightly coupled in ways that prevent independent deployment

## Process

### Step 1: Justify the split
A service split is justified when: teams are blocked on each other's deployments, scaling requirements differ dramatically, or technology requirements differ. Don't split for "separation of concerns" alone - a module achieves that at lower cost.

### Step 2: Define service boundaries by business capability
Services should own a business capability end-to-end. Don't split by technical layer (don't make a "user data service" that stores data for 10 other services).

### Step 3: Design the interface contract
Services communicate via explicit contracts. Define the contract before implementation. Version it from day one.

### Step 4: Choose communication style
- **Sync (HTTP/gRPC)**: Use when caller needs the result immediately
- **Async (messaging)**: Use when caller does not need immediate result; decouples availability

Async is better for resilience; sync is simpler to reason about. Choose based on the requirement.

### Step 5: Design for failure isolation
Service A must not fail because Service B is slow or unavailable:
- Timeouts on all outbound calls
- Circuit breakers for repeated failures
- Fallback responses or graceful degradation
- Bulkhead pattern: don't let one failing downstream exhaust connection pools

### Step 6: Distributed data
Each service owns its data store. No shared databases. Services that need data from another service: use the API, or replicate via events. Cross-service joins are a design smell.

### Step 7: Distributed tracing
All services propagate trace IDs. You must be able to trace a request across all services it touches.

## Verification Requirements

- [ ] Service split justified with a specific team or scaling problem
- [ ] Service boundary follows business capability
- [ ] Contract versioned from day one
- [ ] All outbound calls have timeouts and circuit breakers
- [ ] No shared databases between services
- [ ] Distributed tracing propagated
