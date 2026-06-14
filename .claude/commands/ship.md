Load skills/deployment-strategy/SKILL.md, skills/git-workflow-and-versioning/SKILL.md, and skills/documentation-and-adrs/SKILL.md.

Prepare for deployment. Before proceeding, verify:

1. **Rollback procedure** - Write it now. How do you revert if this fails?
2. **Deployment stages** - Define: which stages, bake time at each
3. **Success criteria** - What metrics must hold for this to be "successful"?
4. **Database migrations** - Are they backward compatible?
5. **Feature flags** - Is new functionality behind a flag?
6. **Documentation** - Is it updated?
7. **Monitoring** - Are alerts in place for the new behavior?

Do not deploy until the rollback procedure is written and success criteria are defined.
