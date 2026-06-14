# Enterprise Pack

For teams with compliance requirements, audit trails, change management, and strict security controls.

## Skills to load (in order)

1. `skills/requirements-analysis/SKILL.md` - Document all requirements with traceability
2. `skills/risk-assessment/SKILL.md` - Formal risk log before any significant change
3. `skills/spec-driven-development/SKILL.md` - Spec + stakeholder sign-off required
4. `skills/architecture-design/SKILL.md` - ADRs for all significant decisions
5. `skills/planning-and-task-breakdown/SKILL.md` - Formal task breakdown with estimates
6. `skills/incremental-implementation/SKILL.md`
7. `skills/test-driven-development/SKILL.md`
8. `skills/security-and-hardening/SKILL.md` - Threat model required
9. `skills/code-review-and-quality/SKILL.md` - Required reviewer sign-off
10. `skills/documentation-and-adrs/SKILL.md` - All decisions documented
11. `skills/ci-cd-and-automation/SKILL.md` - Automated gates required
12. `skills/deployment-strategy/SKILL.md` - Change approval + staged rollout
13. `skills/observability-and-monitoring/SKILL.md` - SLOs + runbooks required

## Personas for enterprise reviews
- `agents/security-auditor.md` - Required for any change to auth, data, or infrastructure
- `agents/code-reviewer.md` - Required for all PRs
- `agents/devops-engineer.md` - Required for infrastructure changes

## Enterprise-specific requirements
- All significant decisions have ADRs
- All PRs have two approvals
- All deployments have change records
- All incidents have post-mortems
- All compliance requirements have traceability to implementation
