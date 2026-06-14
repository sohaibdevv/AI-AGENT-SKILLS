---
name: infrastructure-as-code
description: Manage infrastructure with version-controlled, reviewed, and tested IaC
difficulty: senior
domains: [infrastructure]
---

## Overview

Infrastructure defined by hand is infrastructure that drifts, that can't be reviewed, and that can't be reproduced. This skill enforces that all infrastructure is version-controlled code with the same discipline as application code: specs, reviews, tests, and staged deployment.

## When to Use

- Before provisioning any cloud resource
- Before modifying production infrastructure
- When investigating a drift between expected and actual infrastructure state

## Process

### Step 1: Define the desired state first
Write the IaC code that represents the desired state before applying it. Terraform plan / Pulumi preview / CloudFormation change set must be reviewed before apply.

### Step 2: Review the plan output
The plan is the diff for infrastructure changes. Review it as carefully as a code diff:
- Are only expected resources being created/modified/destroyed?
- Are any resources being replaced (destroy + create) that should only be modified?
- Are sensitive values being exposed in the plan output?

### Step 3: Blast radius analysis
Before applying:
- What is the maximum impact if this change fails?
- Does this change affect production traffic?
- Does this change touch the database, auth system, or network layer?
- Is the rollback procedure documented?

High blast radius changes require explicit approval from a second engineer.

### Step 4: State management
- Use remote state with locking (never local state for team environments)
- Never manually modify state files
- Version state file changes
- Test: can you destroy and recreate from scratch?

### Step 5: Drift detection
Run drift detection on a schedule. If the actual state diverges from the IaC state, investigate and resolve - don't let drift accumulate.

### Step 6: Secrets management
- No secrets in IaC code or state files
- Use: Vault, AWS Secrets Manager, GCP Secret Manager, or similar
- Rotate secrets via IaC, not manually

### Step 7: Test the IaC
- Unit tests for modules (Terratest, Pulumi testing)
- Integration tests: deploy to a non-prod environment and verify
- Destroy test: can you tear it down and recreate it?

### Step 8: Staged apply
Apply to: development → staging → production.
Wait for validation at each stage before proceeding.

## Anti-Rationalizations

**"It's a small change - I'll do it in the console"**
Console changes become invisible drift. IaC is the only source of truth. No exceptions.

**"We don't need to test infrastructure"**
Untested IaC fails at the worst moment: during an incident when you need to provision fast.

## Verification Requirements

- [ ] Plan/preview reviewed before apply
- [ ] Blast radius analyzed
- [ ] Rollback procedure documented
- [ ] State stored remotely with locking
- [ ] No secrets in code or state
- [ ] Applied to non-prod first
- [ ] Drift detection in place
