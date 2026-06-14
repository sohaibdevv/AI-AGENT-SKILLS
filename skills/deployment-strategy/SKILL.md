---
name: deployment-strategy
description: Deploy with rollback plans, staged rollouts, and feature flags
difficulty: senior
domains: [general]
---

## Overview

Deployments fail. The question is not whether, but whether you can recover quickly. This skill makes deployments reversible, observable, and gradual.

## When to Use

- Before every production deployment
- When designing a deployment pipeline
- When a deployment caused a production incident
- As part of the `/ship` workflow

## Process

### Step 1: Write the rollback procedure first
Before deploying, document how to roll back. If you can't write the rollback procedure, you're not ready to deploy.

### Step 2: Define the rollout stages
1% → 10% → 50% → 100% for high-risk changes.
10% → 100% for low-risk changes.
Never: 0% → 100% for anything that touches user-visible behavior.

### Step 3: Choose a deployment strategy
- **Blue/green**: spin up new environment, switch traffic, keep old environment warm for rollback
- **Canary**: route a percentage of traffic to new version, measure, expand
- **Feature flags**: deploy code dark, flip flag to enable for users
- **Rolling**: replace instances one by one, abort if errors spike

Choose based on: how reversible is the change? How quickly can you detect problems?

### Step 4: Define the deployment success criteria
Before deploying: what metrics must hold for the deployment to be considered successful?
- Error rate stays below X%
- p99 latency stays below Y ms
- No new error types in logs
- Key business metric (signups, orders) not regressing

### Step 5: Bake time
After deploying to a stage: wait before expanding. Minimum bake time:
- 1% stage: 15 minutes
- 10% stage: 1 hour
- 50% stage: 4 hours

High-risk changes need longer bake times.

### Step 6: Database migrations
- Migrations must be backward compatible (old code + new schema must work)
- Deploy migration before new code; keep old code running
- Never delete a column in the same release that stops using it
- Test rollback of the migration

### Step 7: Automate the deployment gate
Success criteria from Step 4 must be checked automatically. If they fail, the deployment halts. Not: "someone watches the dashboard." Automatic.

### Step 8: Post-deployment monitoring
After a deployment: watch the golden signals for 24 hours. Document any anomalies.

## Anti-Rationalizations

**"It's a small change — we can deploy to 100%"**
"Small" changes cause production incidents. All production changes go through staged rollout.

**"We can roll back if there's a problem"**
"Can roll back" means the rollback procedure is written, tested, and can be executed in under 5 minutes. Otherwise, you don't have a rollback plan; you have a hope.

## Verification Requirements

- [ ] Rollback procedure written before deployment starts
- [ ] Deployment stages defined (not 0% → 100%)
- [ ] Success criteria defined and automated
- [ ] Bake time defined at each stage
- [ ] Database migrations are backward compatible
- [ ] Post-deployment monitoring planned
