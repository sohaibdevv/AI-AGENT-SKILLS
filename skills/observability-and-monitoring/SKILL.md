---
name: observability-and-monitoring
description: Design logging, metrics, tracing, and alerting that make systems debuggable in production
difficulty: senior
domains: [general]
---

## Overview

A system you cannot observe is a system you cannot debug. Observability is not a dashboard — it is the ability to answer any question about system behavior using existing data, without deploying new code. This skill implements the three pillars (logs, metrics, traces) and the alerts that page you before users notice.

## When to Use

- Before deploying any new service or significant feature
- When a production issue took more than 30 minutes to diagnose
- When adding a new data flow, user journey, or integration
- As part of the `/ship` workflow

## Process

### Step 1: Define the SLIs and SLOs
**SLI** (Service Level Indicator): what you measure — latency, error rate, availability, throughput.
**SLO** (Service Level Objective): the target — "p99 latency < 500ms," "error rate < 0.1%."

Without SLOs, you don't know when to alert.

### Step 2: Structured logging
- Log in JSON (not freeform text)
- Include: timestamp, log level, service name, trace ID, user ID (hashed), request ID
- Log at entry and exit of every significant operation
- Log errors with: exception type, message, stack trace, context
- Never log PII, passwords, tokens, or credit card numbers
- Log what happened, not just that it happened

### Step 3: Key metrics
Implement the four golden signals for every service:
- **Latency** — p50, p95, p99 response time
- **Traffic** — requests per second, events per second
- **Errors** — error rate (4xx, 5xx), error count
- **Saturation** — CPU, memory, queue depth, connection pool

Add business metrics: active users, signups, payments, key conversions.

### Step 4: Distributed tracing
- Assign a trace ID to every inbound request
- Propagate the trace ID to all downstream calls (outbound HTTP, database, queue)
- Use OpenTelemetry or compatible SDK
- Sample at 100% for errors; sample at 1–10% for success paths

### Step 5: Health checks and readiness probes
- `/healthz` — is the service alive?
- `/readyz` — is the service ready to accept traffic?
- Health checks must not perform significant work (no database writes)
- Check downstream dependencies in readiness probe

### Step 6: Alerting strategy
Alert on symptoms (user impact), not causes (CPU high):
- High error rate → alert immediately
- SLO breach approaching (error budget burn) → alert
- Latency SLO exceeded at p99 → alert
- Zero traffic (nothing coming in) → alert (might be upstream failure)

Do NOT alert on:
- Things that resolve themselves
- Things you can do nothing about at 3am
- Things that don't affect users

Every alert must have a runbook.

### Step 7: Dashboards
Build one dashboard per service with:
- The four golden signals
- Key business metrics
- Recent deployments as annotations
- Links to runbooks

### Step 8: Runbooks
For each alert: what does it mean, what is the likely cause, what are the first 3 debugging steps, what is the escalation path?

## Anti-Rationalizations

**"We'll add monitoring after we know what's important to monitor"**
By the time you know what's important to monitor, you've already had the incident that taught you.

**"Logs are enough — we don't need metrics"**
Logs tell you what happened. Metrics tell you what is happening right now at scale.

## Verification Requirements

- [ ] SLIs and SLOs defined
- [ ] Structured JSON logging implemented
- [ ] Four golden signals instrumented
- [ ] Distributed tracing propagated
- [ ] Health and readiness endpoints implemented
- [ ] Alerts exist for SLO breach and high error rate
- [ ] Every alert has a runbook
- [ ] Dashboard built with golden signals + business metrics
