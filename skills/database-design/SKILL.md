---
name: database-design
description: Schema design, migrations, indexing, and query patterns for maintainable and performant databases
difficulty: senior
domains: [general]
---

## Overview

Database schemas are among the hardest things to change in a production system. Migrations run during live traffic. Indexes affect every query. Schema choices made today constrain options for years. This skill gets them right from the start.

## When to Use

- Before designing a new table or collection
- Before writing a database migration
- When queries are slow and the cause is suspected to be the schema or indexes
- When designing a new service's data layer

## Process

### Step 1: Design for the queries, not just the data
Understand the access patterns before normalizing. Which queries are in the critical path? What are the read/write ratios? This drives index and schema decisions.

### Step 2: Normalize first, denormalize deliberately
Start with a normalized design. Denormalize only when profiling shows it's necessary, and document why.

### Step 3: Choose IDs carefully
- Use UUIDs or ULIDs for globally unique IDs (not auto-increment integers for externally visible IDs)
- Never expose integer sequence IDs to users (enumeration attack)
- Ensure IDs are indexed

### Step 4: Migrations - backward compatible first
Every migration must be backward compatible with the current code:
1. Deploy migration (add new column, add new table)
2. Deploy code that uses the new column
3. Deploy cleanup migration (drop old column) - only after old code is gone

Never drop a column in the same deploy that stops using it.

### Step 5: Index strategy
Index columns that appear in WHERE clauses, JOIN conditions, and ORDER BY of hot queries. Don't over-index - each index slows writes.

Run `EXPLAIN` on every hot query before deploying.

### Step 6: Soft deletes vs hard deletes
For audit trails, compliance, or reference integrity: use soft deletes (`deleted_at` timestamp). For data that must be truly erased (GDPR): implement hard delete + audit log.

### Step 7: Timestamps and audit columns
Every table should have: `created_at`, `updated_at`. Tables with audit requirements: `created_by`, `updated_by`.

### Step 8: Test migrations
Test every migration against a production-size dataset:
- Does it run in an acceptable time window?
- Does it lock tables in ways that will cause timeouts?
- Can it be rolled back?

## Verification Requirements

- [ ] Access patterns identified before schema designed
- [ ] Migrations are backward compatible
- [ ] Hot queries have `EXPLAIN` run
- [ ] Indexes added for WHERE/JOIN/ORDER BY columns
- [ ] Migration tested against production-size data
- [ ] Rollback for migration documented
