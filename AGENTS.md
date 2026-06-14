# Agent Skills - Execution Model

You are an AI coding agent operating with the AI Agent Skills framework. This file defines how you load and apply skills.

## Core Principle

**Skills are executable workflows, not reference material.** Each skill contains:
1. A trigger condition (when to activate)
2. A step-by-step process with checkpoints
3. Anti-rationalization clauses (rebuttals to common shortcuts)
4. Verification requirements (evidence, not confidence)

## Skill Discovery

Skills live in `skills/<name>/SKILL.md`. Load a skill by reading its file before starting the corresponding work.

## Command → Skill Mapping

| Command | Primary Skill | Supporting Skills |
|---|---|---|
| `/spec` | spec-driven-development | idea-refine, requirements-analysis |
| `/plan` | planning-and-task-breakdown | architecture-design, risk-assessment |
| `/build` | incremental-implementation | test-driven-development, context-engineering |
| `/test` | test-driven-development | code-review-and-quality, debugging-and-error-recovery |
| `/review` | code-review-and-quality | security-and-hardening, performance-optimization, accessibility-engineering |
| `/simplify` | code-simplification | code-review-and-quality |
| `/ship` | deployment-strategy | git-workflow-and-versioning, ci-cd-and-automation, documentation-and-adrs |
| `/incident` | incident-response | observability-and-monitoring, debugging-and-error-recovery |

## Always Active Rules

These rules apply at all times, regardless of which skill is loaded:

1. **Spec before code** - If there is no written spec for a feature, write one before writing implementation code.
2. **Tests before merging** - No code merges without passing tests. "I'll add tests later" is never acceptable.
3. **Security is not optional** - Every change touching auth, data storage, user input, or external APIs requires a security pass.
4. **Rollback before deploy** - Every deployment must have a documented rollback procedure.
5. **Evidence over confidence** - "I think it works" is not a verification. Provide logs, test output, or metrics.
6. **Smallest safe change** - When in doubt, make the change smaller and ship it sooner.

## Anti-Shortcuts

If you find yourself reasoning toward any of the following, stop and load the relevant skill:

- "This is too small to need a spec" → Load `spec-driven-development`
- "Tests would take too long to write" → Load `test-driven-development`
- "We can add monitoring later" → Load `observability-and-monitoring`
- "Security review isn't needed for this change" → Load `security-and-hardening`
- "The rollback is just reverting the commit" → Load `deployment-strategy`
- "This ML model looks good to me" → Load `llm-evaluation`
- "The data pipeline will handle errors gracefully" → Load `data-pipeline-engineering`

## Skill Composition

For complex tasks, compose multiple skills. Example for shipping an AI feature:

1. `/spec` → `spec-driven-development` + `requirements-analysis`
2. `/plan` → `planning-and-task-breakdown` + `architecture-design`
3. `/build` → `ai-ml-engineering` + `api-and-interface-design` + `incremental-implementation`
4. `/test` → `test-driven-development` + `llm-evaluation`
5. `/review` → `code-review-and-quality` + `security-and-hardening` + `performance-optimization`
6. `/ship` → `deployment-strategy` + `ci-cd-and-automation`

## Persona Activation

Specialist agents live in `agents/`. Activate one when you need focused expertise:

```
Load agents/security-auditor.md and review the authentication changes in this PR.
```

## Verification Gates

Before marking any task complete, verify:
- [ ] All acceptance criteria from the spec are met
- [ ] Tests pass and coverage hasn't regressed
- [ ] No new security vulnerabilities introduced
- [ ] Performance characteristics are documented
- [ ] Rollback procedure exists (for deployments)
- [ ] Documentation is updated
