---
name: ai-ml-engineering
description: Build ML systems with disciplined training, evaluation, deployment, and safety practices
difficulty: staff
domains: [ai-ml]
---

## Overview

ML engineering failures are silent and delayed. A model that scores well on the benchmark can fail badly in production. This skill enforces the practices that catch these failures before they reach users: proper evaluation harnesses, data leakage detection, distribution shift monitoring, and safety checks.

## When to Use

- Before training or fine-tuning a model
- Before deploying a model to production
- When integrating a third-party LLM API
- When evaluating model quality
- When debugging unexpected model behavior

## Process

### Step 1: Define the task and success metric precisely
Before any code: what is the exact prediction task? What metric proves the model is good enough? What metric proves it is safe enough? Document these as your evaluation contract.

### Step 2: Establish the baseline
Compute a simple baseline (majority class, rule-based system, GPT-4 zero-shot). Your model must beat this baseline by a meaningful margin to justify the complexity.

### Step 3: Audit the training data
- Check for data leakage (test set information in training set)
- Check for label quality (sample 100 examples manually)
- Check for demographic skew (does the dataset represent production distribution?)
- Check for PII that should not be in training data
- Document the data provenance and version

### Step 4: Implement a reproducible training pipeline
- Pin all dependency versions
- Set all random seeds
- Version the dataset (not just the model)
- Store training hyperparameters with model artifacts
- Confirm: can you reproduce this exact model from scratch?

### Step 5: Build the evaluation harness before training
Write your evaluation pipeline before training. Evaluations should be:
- Automatic (run in CI)
- Deterministic (same inputs → same scores)
- Multi-dimensional (accuracy, latency, cost, safety, fairness)
- Comprehensive (held-out test set + edge case suite)

### Step 6: Train with monitoring
Track: training loss, validation loss, gradient norms. Flag: loss spikes, NaN gradients, overfitting (train loss << val loss), underfitting.

### Step 7: Run the full evaluation suite
Compare against: baseline, previous model version, human performance (if applicable). Document every dimension. Declare the threshold required for deployment.

### Step 8: Safety evaluation
For LLM applications:
- Test for prompt injection
- Test for jailbreak attempts
- Test for harmful output generation
- Test for PII leakage in outputs
- Test for hallucination in factual claims

### Step 9: Production readiness
- [ ] Latency profiled at p50, p95, p99
- [ ] Cost per inference calculated
- [ ] Graceful degradation defined (what happens when the model is unavailable?)
- [ ] Output validation implemented (reject malformed outputs)
- [ ] Monitoring in place for distribution shift
- [ ] Feedback loop defined for collecting production labels

### Step 10: Staged rollout
Deploy to 1% of traffic. Monitor key metrics for 24 hours. Roll out to 10%, then 100%. Have a rollback procedure.

## Anti-Rationalizations

**"The eval numbers look good"**
Eval numbers on a curated test set are necessary but not sufficient. Production distribution ≠ test distribution.

**"We'll add safety checks after launch"**
Safety issues discovered after launch are incidents. Safety checks added before launch are requirements.

**"The model improved so we should ship it"**
Improved on which metric? Under which conditions? Improvements in accuracy can come with regressions in latency, fairness, or safety.

## Red Flags

- No baseline comparison
- Evaluation dataset overlaps with training data
- Evaluation written after training (to justify the result)
- No monitoring for distribution shift
- Model deployed without latency profiling
- No rollback procedure

## Verification Requirements

- [ ] Task and success metric defined before training
- [ ] Baseline computed and documented
- [ ] Training data audited for leakage and PII
- [ ] Training is reproducible from version-pinned code + versioned dataset
- [ ] Evaluation harness built before training
- [ ] Safety evaluation completed
- [ ] Latency profiled at p95
- [ ] Staged rollout plan documented
- [ ] Distribution shift monitoring in place
