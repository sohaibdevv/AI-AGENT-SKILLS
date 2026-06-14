# Data Engineering Pack

Load this pack when building ETL/ELT pipelines, data warehouses, or data-driven systems.

## Skills to load

### For pipeline design
1. `skills/spec-driven-development/SKILL.md` — Define data contracts first
2. `skills/data-pipeline-engineering/SKILL.md` — Full pipeline discipline
3. `skills/database-design/SKILL.md` — Schema, migrations, indexing
4. `skills/observability-and-monitoring/SKILL.md` — Pipeline and data quality metrics

### For data quality
1. `skills/test-driven-development/SKILL.md` — Test transformations and quality checks
2. `skills/security-and-hardening/SKILL.md` — Data access controls, PII handling

### For shipping
1. `skills/deployment-strategy/SKILL.md` — Staged rollout for pipeline changes
2. `skills/documentation-and-adrs/SKILL.md` — Document data contracts and decisions

## Personas to use
- `agents/data-engineer.md` — For pipeline reviews
- `agents/security-auditor.md` — For PII and access control reviews

## Key questions for data PRs
- Is the data contract for new/changed sources documented?
- Is the pipeline idempotent?
- Is there a quality gate before writing to the destination?
- What happens to bad data? (Dead letter queue + alert)
- Is PII handled correctly? (Not logged, encrypted, deletable)
- Is lineage tracked?
