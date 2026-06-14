---
name: llm-evaluation
description: Systematically evaluate LLM outputs, prevent regressions, and measure quality
difficulty: senior
domains: [ai-ml]
---

## Overview

LLM evaluation is the discipline of measuring what your model or system actually does, not what you believe it does. Without systematic evaluation, you are guessing. With it, you catch regressions before users do.

## When to Use

- Before deploying any LLM-powered feature
- When changing a model version, provider, or prompt
- When users report quality issues
- As a recurring health check for production LLM features

## Process

### Step 1: Define the evaluation dimensions
Common dimensions (pick those relevant to your task):
- **Correctness** — Is the answer factually right?
- **Relevance** — Does the answer address the question?
- **Groundedness** — Is the answer supported by the provided context?
- **Safety** — Does the output avoid harmful content?
- **Format** — Does the output match the required schema/format?
- **Tone/Style** — Does the output match the required voice?
- **Latency** — Is the response fast enough?
- **Cost** — Is the per-request cost within budget?

### Step 2: Build the evaluation dataset
A good eval dataset:
- Covers the full distribution of expected inputs (not just the easy cases)
- Includes adversarial examples and edge cases
- Has verified ground-truth answers for correctness dimensions
- Has at least 100 examples for production features; 1000+ for critical systems
- Is versioned and never modified (only appended to)

### Step 3: Choose evaluation methods
- **Automated exact match** — for structured outputs with known correct answers
- **Automated metric** — BLEU/ROUGE for text overlap, custom scoring functions
- **LLM-as-judge** — use a strong model (GPT-4, Claude Opus) to score outputs on rubrics; calibrate against human judgments
- **Human evaluation** — ground truth; use for calibrating automated evals

### Step 4: Implement automated evals in CI
Every change to a prompt, model version, or system prompt must trigger the eval suite in CI. Define a threshold: "if correctness drops below 85% or safety failures increase, block the PR."

### Step 5: Track eval results over time
Store eval results with: timestamp, model version, prompt version, per-example scores. You need to answer "when did quality start degrading?" without re-running old evals.

### Step 6: Adversarial evaluation
Test for:
- **Prompt injection** — Can user input override your system prompt?
- **Jailbreaks** — Can a user extract harmful content?
- **Hallucination** — Does the model fabricate facts confidently?
- **Refusal rate** — Is the model refusing legitimate requests? (Over-refusal is also a failure)
- **Demographic bias** — Does quality vary by user demographic mentioned in input?

### Step 7: Human preference evaluation (for generation tasks)
For open-ended generation: run A/B comparisons. Which version do humans prefer? Aggregate preference scores over 100+ pairs. Automated metrics alone are insufficient for generation quality.

### Step 8: Production monitoring
- Log all inputs and outputs (within privacy constraints)
- Sample production traffic for offline evaluation
- Track: error rate, latency, user feedback signals
- Alert on: sudden quality drops, increased error rates, cost spikes

## Anti-Rationalizations

**"The model feels better in my testing"**
"Feels better" is not an evaluation. Run the eval suite and compare scores.

**"Evals are expensive — we'll skip them for this release"**
Skipping evals means the next incident will show you what your eval set should have covered.

**"LLM-as-judge is biased"**
All evaluation methods have bias. LLM-as-judge is calibrated bias you can measure and improve. "It feels right to me" is uncalibrated bias you cannot measure.

## Verification Requirements

- [ ] Evaluation dimensions defined before building
- [ ] Evaluation dataset of 100+ examples with ground truth
- [ ] Automated evals run in CI with a blocking threshold
- [ ] Adversarial eval completed (injection, jailbreak, hallucination)
- [ ] Eval results versioned and tracked over time
- [ ] Production monitoring in place with quality alerts
