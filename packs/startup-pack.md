# Startup Pack

Move fast without breaking production. This pack focuses on the skills that prevent the most expensive mistakes, without the overhead of enterprise processes.

## Core principle

Not every skill is required for every change. This pack gives you the minimum viable discipline for early-stage products.

## Skills to load

### Before any feature
1. `skills/idea-refine/SKILL.md` - 10 minutes of clarity saves a week of rework
2. `skills/spec-driven-development/SKILL.md` - Write it down before building it

### During implementation
1. `skills/incremental-implementation/SKILL.md` - Ship small, ship fast
2. `skills/test-driven-development/SKILL.md` - Tests for the critical paths only
3. `skills/security-and-hardening/SKILL.md` - Non-negotiable even at early stage

### Before shipping
1. `skills/git-workflow-and-versioning/SKILL.md` - Small PRs, conventional commits
2. `skills/deployment-strategy/SKILL.md` - Always have a rollback plan
3. `skills/observability-and-monitoring/SKILL.md` - Know when you're broken

## What to skip at early stage
- `architecture-design` - Document decisions, but skip full ADRs for day-to-day choices
- `risk-assessment` - Do a 10-minute mental model, not a formal risk log
- `requirements-analysis` - Combine with spec-driven-development

## Non-negotiables even at early stage
- Security: Never ship without auth, input validation, and no secrets in code
- Rollback: Always deployable to the previous version
- Alerting: Always know when users are experiencing errors

## Persona for early-stage reviews
- `agents/code-reviewer.md` - Blocking issues only
