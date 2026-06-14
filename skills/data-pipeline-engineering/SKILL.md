---
name: data-pipeline-engineering
description: Build data pipelines with contracts, lineage, quality gates, and observability
difficulty: senior
domains: [data]
---

## Overview

Data pipelines fail silently. Bad data flows downstream, corrupts reports, poisons ML training sets, and violates compliance requirements — often for days before anyone notices. This skill builds pipelines with the discipline to catch failures at the source.

## When to Use

- Before building any ETL/ELT pipeline
- When designing data transformations
- When adding a new data source to a pipeline
- When a downstream consumer reports incorrect data

## Process

### Step 1: Define the data contract
Before any code: document the contract for every data source:
- Schema (columns, types, nullability)
- Volume expectations (rows per batch/day)
- Freshness SLA (how old can data be?)
- Quality invariants (column X is always positive, column Y is always a valid email)

The contract is your test suite specification.

### Step 2: Implement contract validation at ingestion
Validate incoming data against the contract as the first step of every pipeline. Fail loudly on schema violations, out-of-range values, and unexpected nulls. Never silently drop bad records without alerting.

### Step 3: Design for idempotency
Every pipeline run must be idempotent: running it twice on the same input produces the same output. Implement with: append-only writes + deduplication, or upserts with stable primary keys, or overwrite semantics with explicit partitions.

### Step 4: Implement data lineage
Track: where did each record come from? What transformations were applied? When was it processed? This is required for debugging, compliance (GDPR right-to-erasure), and impact analysis.

### Step 5: Design the quality gate
After transformation, before writing to the destination:
- Row count check (within expected range?)
- Key quality metrics (null rates, uniqueness, referential integrity)
- Distribution check (not wildly different from yesterday?)
- Business rule validation (revenue never negative, user_id always set)

Fail the pipeline and alert if quality gates fail.

### Step 6: Handle late-arriving and out-of-order data
Define: what is the watermark? How long do you wait for late data? What happens to a record that arrives after the window closes?

### Step 7: Design the error handling strategy
For each failure mode:
- Source unavailable → retry with backoff, alert after N failures
- Schema change in source → fail loudly, alert, do not silently drop
- Quality gate failure → fail loudly, quarantine bad data, alert
- Transform error → log with context, route to dead letter queue, alert

### Step 8: Implement observability
Track: records in, records out, records failed, processing latency, source freshness, pipeline run duration. Alert on: any of these metrics going outside normal range.

### Step 9: Test the pipeline
- Unit tests for each transformation
- Integration tests with representative sample data
- Tests for the quality gate (does it catch bad data?)
- Tests for late-arriving data handling
- Load tests (does it handle 10x volume?)

### Step 10: Document the pipeline
For each pipeline: what does it do, what are its inputs, what are its outputs, what are its dependencies, what do you do when it fails? On-call engineers must be able to debug it without the original author.

## Anti-Rationalizations

**"The source is reliable — we don't need contract validation"**
Every source eventually sends bad data. The question is whether you catch it.

**"Data lineage is a nice-to-have"**
Data lineage becomes a requirement the first time you need to answer: "which records were affected by this bug?" or "which users' data do we need to delete?"

## Verification Requirements

- [ ] Data contracts defined for all sources
- [ ] Contract validation runs at ingestion
- [ ] Pipeline is idempotent
- [ ] Data lineage tracked
- [ ] Quality gates implemented before destination writes
- [ ] Late data strategy defined
- [ ] Error handling routes to dead letter queue with alerts
- [ ] Observability metrics tracked
- [ ] Tests for transformations and quality gates
- [ ] Runbook written
