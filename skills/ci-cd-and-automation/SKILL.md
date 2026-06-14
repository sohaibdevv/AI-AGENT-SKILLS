---
name: ci-cd-and-automation
description: Design CI/CD pipelines with fast feedback, quality gates, and reliable deployments
difficulty: senior
domains: [general]
---

## Overview

A slow CI pipeline is a productivity killer. A CI pipeline that lets bad code through is worse than no pipeline. This skill designs pipelines that are fast enough to not be skipped, and thorough enough to catch real problems.

## When to Use

- When setting up CI/CD for a new project
- When the CI pipeline is slow (>10 minutes)
- When CI is consistently failing for reasons unrelated to code quality
- Before adding a new automated gate to CI

## Process

### Step 1: Define the pipeline stages
Standard stages:
1. **Fast checks** (<2 min): lint, type check, compile
2. **Unit tests** (<5 min): isolated, no network, no database
3. **Integration tests** (<10 min): with real dependencies
4. **Security scan**: dependency audit, SAST
5. **Build**: Docker image, artifact
6. **Deploy to staging**
7. **E2E tests against staging**
8. **Deploy to production** (gated by manual approval or automated checks)

### Step 2: Optimize for speed
- Run stages in parallel where possible
- Cache aggressively: dependencies, build artifacts, Docker layers
- Fail fast: put the fastest checks first
- Target: full pipeline under 15 minutes

### Step 3: Required gates before merge
Minimum required to merge a PR:
- [ ] All tests pass
- [ ] No new high/critical security vulnerabilities (dependency audit)
- [ ] Code coverage hasn't regressed (enforced threshold, not aspirational)
- [ ] Linting passes (no new lint errors)

### Step 4: Required gates before deploy to production
- [ ] Staging deploy succeeded
- [ ] E2E tests on staging passed
- [ ] Performance tests within SLO (for perf-sensitive changes)
- [ ] Rollback procedure documented

### Step 5: Branch protection
- Main/master branch requires PR (no direct pushes)
- PR requires CI pass + at least 1 review
- Stale approvals invalidated on new commits

### Step 6: Environment variable management
- Secrets stored in CI environment variables, not code
- Different secrets per environment (dev/staging/prod never share production secrets)
- Rotate secrets on schedule, not just on breach

### Step 7: Monitor the pipeline
Track: build success rate, build duration trends, flaky test rate. A flaky test that is retried silently is a reliability problem.

## Verification Requirements

- [ ] Pipeline stages defined with clear purpose for each
- [ ] Full pipeline runs under 15 minutes
- [ ] Required gates enforce: tests, security, linting
- [ ] Branch protection enabled
- [ ] No secrets in pipeline code
- [ ] Flaky test rate < 1%
