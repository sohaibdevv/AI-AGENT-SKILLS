# AI/LLM Safety Checklist

Use during review of any LLM-powered feature. For the full process, see `skills/prompt-engineering/SKILL.md` and `skills/llm-evaluation/SKILL.md`.

## Prompt Security
- [ ] System prompt tested against prompt injection (user input overriding instructions)
- [ ] System prompt tested against jailbreak attempts
- [ ] User input sandboxed from system instructions (clear delimiter between system and user content)
- [ ] Prompt injection via uploaded files tested (PDFs, images with text, markdown)

## Output Safety
- [ ] Outputs filtered for harmful content (hate speech, violence, self-harm)
- [ ] Outputs tested for PII leakage (especially from RAG context)
- [ ] Outputs validated for hallucination on factual claims
- [ ] Outputs sanitized before rendering to DOM (no XSS via LLM output)

## Data Privacy
- [ ] PII not included in prompts unless required and consented
- [ ] Conversation history not shared across users
- [ ] Prompts logged appropriately (audit trail without over-retaining)
- [ ] Third-party LLM data processing agreements in place

## Reliability
- [ ] Graceful degradation if LLM API is unavailable
- [ ] Timeout set on LLM calls
- [ ] Cost per request calculated and monitored
- [ ] Token limits enforced (prevent runaway costs)

## Evaluation
- [ ] Golden dataset of 50+ examples with verified outputs
- [ ] Regression tests run in CI
- [ ] Adversarial examples in eval set
- [ ] Output quality monitored in production

## For Agents
- [ ] Maximum step limit set
- [ ] All tool calls logged (audit trail)
- [ ] Human approval required for irreversible actions
- [ ] Kill switch to halt agent mid-run
- [ ] Rate limiting on tool calls
