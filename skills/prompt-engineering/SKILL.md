---
name: prompt-engineering
description: Write prompts that are reliable, testable, versioned, and safe
difficulty: senior
domains: [ai-ml]
---

## Overview

Prompts are code. They have bugs, regressions, and security vulnerabilities. This skill applies software engineering discipline to prompt development: version control, testing, structured output validation, and safety evaluation.

## When to Use

- Before integrating any LLM into a product feature
- When a prompt is behaving inconsistently
- Before shipping a prompt to production
- When iterating on prompt quality

## Process

### Step 1: Define the task precisely
Write the exact input → output contract for the prompt. What is the input format? What is the output format? What constitutes a correct output? What constitutes a failure?

### Step 2: Collect a golden dataset
Gather 20–50 representative inputs with verified correct outputs. This is your test suite. Without it, you are guessing.

### Step 3: Write the initial prompt
Start with the simplest possible prompt. State: role, task, constraints, output format. Be explicit about what the model should NOT do.

### Step 4: Add examples (few-shot)
Provide 3–5 representative examples that demonstrate the correct behavior. Examples are more reliable than instructions for complex formatting tasks.

### Step 5: Specify the output format
For structured outputs: require JSON or XML with a schema. Validate all outputs against the schema. Reject non-conforming outputs rather than guessing.

### Step 6: Evaluate on the golden dataset
Run your prompt against all test cases. Score: accuracy, format compliance, latency, cost. Document the baseline.

### Step 7: Iterate and track changes
Every change to a prompt is a code change. Version it. Track which version produced which score. Never overwrite a working prompt without knowing the delta.

### Step 8: Safety and guardrails
Test for:
- Prompt injection (user input that overwrites your instructions)
- Jailbreaks (attempts to bypass role restrictions)
- Harmful outputs (toxicity, bias, PII)
- Hallucination (false factual claims)

Add a system prompt safety layer. Add output filtering. Document what is out of scope.

### Step 9: Regression testing in CI
Prompts in production must have regression tests that run in CI. A prompt change that reduces golden-dataset score is a regression.

## Anti-Rationalizations

**"Prompt engineering is just natural language - I don't need to test it"**
Natural language is the interface. The behavior is a system. All systems need tests.

**"LLM outputs are non-deterministic - tests don't work"**
Deterministic evaluation of non-deterministic outputs: use temperature=0 for tests, use majority-vote scoring, use LLM-as-judge with a stable judge model. Non-determinism is not an excuse.

**"We'll monitor it in production"**
Production monitoring catches failures after users see them. Testing catches failures before users do.

## Red Flags

- Prompts edited directly in production
- No golden dataset
- Output format not validated
- Prompt injection not tested
- No versioning for prompts

## Verification Requirements

- [ ] Input/output contract defined
- [ ] Golden dataset with 20+ examples exists
- [ ] Output format specified and validated
- [ ] Safety evaluation completed (injection, jailbreak, harmful output)
- [ ] Regression tests run in CI
- [ ] Prompt versioned in source control
- [ ] Latency and cost documented
