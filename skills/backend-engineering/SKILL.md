---
name: backend-engineering
description: Design services that are reliable, observable, secure, and maintainable
difficulty: senior
domains: [general]
---

## Overview

Backend services are the load-bearing walls of software systems. They must be reliable under partial failure, observable in production, and secure against malicious input. This skill applies the engineering discipline required for production-grade services.

## When to Use

- Before implementing a new service or significant backend feature
- When a service has reliability, performance, or security issues
- As part of the `/review` workflow for backend PRs

## Process

### Step 1: Define the contract
Document: endpoints/methods, request/response schemas, error codes, authentication requirements, rate limits. No implementation before the contract is defined.

### Step 2: Design for failure
Every outbound call must have: timeout, retry with backoff, circuit breaker, fallback. Services that don't handle dependency failures will fail when their dependencies fail.

### Step 3: Input validation at the boundary
Validate all incoming data before processing: types, required fields, length limits, format constraints. Reject invalid input - don't try to fix it.

### Step 4: Idempotency for mutations
All write operations should be idempotent where possible. Use idempotency keys for payment and other sensitive operations.

### Step 5: Database access
- No N+1 queries
- Transactions for operations that must be atomic
- Read replicas for read-heavy workloads
- Connection pooling configured

### Step 6: Logging and observability
Implement structured logging, metrics (four golden signals), and distributed tracing. See `observability-and-monitoring`.

### Step 7: Security
- Authenticate every request
- Authorize every resource access
- Validate all inputs
- No secrets in logs or responses
See `security-and-hardening`.

### Step 8: Graceful shutdown
Handle: SIGTERM, drain in-flight requests, close database connections, flush logs. Services that don't handle graceful shutdown cause errors during deployments.

## Verification Requirements

- [ ] Contract documented before implementation
- [ ] All outbound calls have timeout and retry
- [ ] Input validation at the service boundary
- [ ] No N+1 queries
- [ ] Authentication and authorization on every request/resource
- [ ] Graceful shutdown implemented
- [ ] Four golden signals instrumented
