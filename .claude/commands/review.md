Load agents/code-reviewer.md, skills/security-and-hardening/SKILL.md, and skills/performance-optimization/SKILL.md.

Conduct a thorough review of the code or PR described. Review all five dimensions:

1. **Correctness** - Does it work correctly for all cases?
2. **Security** - Are there vulnerabilities?
3. **Performance** - Are there obvious inefficiencies?
4. **Readability** - Is it clear and maintainable?
5. **Architecture** - Does it fit the design?

For each issue: specify dimension, severity (Blocking/Major/Minor/Nit), location, what's wrong, why it matters, and a specific fix.

Do not approve code with Blocking issues. Blocking issues: security vulnerabilities, correctness failures, missing tests.
