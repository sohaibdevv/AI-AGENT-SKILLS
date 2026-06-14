# AI/ML Engineering Pack

Load this pack when building machine learning systems, LLM-powered features, or AI agents.

## Skills to load

### For ML/training systems
1. `skills/spec-driven-development/SKILL.md` - Define task, metric, and success criteria first
2. `skills/ai-ml-engineering/SKILL.md` - Training, evaluation, deployment, safety
3. `skills/llm-evaluation/SKILL.md` - Evaluate outputs and prevent regressions
4. `skills/observability-and-monitoring/SKILL.md` - Monitor distribution shift in production
5. `skills/deployment-strategy/SKILL.md` - Staged rollout with rollback

### For LLM/RAG applications
1. `skills/spec-driven-development/SKILL.md`
2. `skills/prompt-engineering/SKILL.md` - Reliable, testable, versioned prompts
3. `skills/rag-system-design/SKILL.md` - Retrieval-augmented generation
4. `skills/llm-evaluation/SKILL.md`
5. `skills/security-and-hardening/SKILL.md` - Prompt injection, jailbreak
6. `skills/context-engineering/SKILL.md` - Manage what goes in the context window

### For AI agents
1. `skills/spec-driven-development/SKILL.md`
2. `skills/agent-orchestration/SKILL.md` - Multi-agent design, tool interfaces
3. `skills/prompt-engineering/SKILL.md`
4. `skills/security-and-hardening/SKILL.md`
5. `skills/observability-and-monitoring/SKILL.md`

## Personas to use
- `agents/ml-engineer.md` - For training/evaluation reviews
- `agents/security-auditor.md` - For prompt injection and safety reviews

## Key questions for AI/ML PRs
- What is the evaluation baseline?
- What does failure look like in production?
- Is safety evaluation done (for user-facing LLM features)?
- Is distribution shift monitoring in place?
- What is the rollback procedure if the model degrades?
