---
name: performance-optimization
description: Profile before optimizing; optimize with evidence, not intuition
difficulty: senior
domains: [general]
---

## Overview

Performance optimization without profiling is guessing. This skill enforces: measure first, optimize the bottleneck, measure again. It prevents wasted effort on non-bottlenecks and ensures optimizations don't regress correctness.

## When to Use

- When performance doesn't meet SLO
- Before any "performance improvement" PR
- When a feature is slow and the cause is unknown
- As part of the `/review` workflow for latency-sensitive paths

## Process

### Step 1: Measure the baseline
Before touching any code, record: current p50/p95/p99 latency, throughput, error rate under representative load. Without a baseline, you can't prove improvement.

### Step 2: Profile to find the bottleneck
Run a profiler, not your intuition:
- CPU-bound: CPU profiler (flamegraph)
- Memory-bound: heap profiler, allocation profiler
- I/O-bound: database query analyzer, network profiler
- Web frontend: Chrome DevTools Performance tab, Lighthouse

The bottleneck is almost never where you think it is.

### Step 3: Identify the worst offender
The single slowest operation in the critical path. Fix that first. Do not optimize non-bottlenecks.

### Step 4: Write a benchmark before optimizing
Create a benchmark that isolates the bottleneck and can be run repeatedly. This is your before/after comparison.

### Step 5: Optimize
Common patterns:
- **Database**: add missing indexes, eliminate N+1 queries, batch reads, use projections (don't SELECT *)
- **Memory**: streaming vs loading, lazy evaluation, object pooling
- **CPU**: algorithmic improvement, caching, memoization
- **Network**: batching, compression, HTTP/2, CDN, edge caching
- **Frontend**: code splitting, lazy loading, virtual scrolling, image optimization

### Step 6: Measure the improvement
Run the benchmark before and after. Calculate: % improvement in p99, % reduction in resource usage. If the improvement is not measurable, the optimization was not worth the complexity.

### Step 7: Verify correctness
Run the full test suite. Performance optimizations frequently introduce bugs.

### Step 8: Document the optimization
Record: what was slow, why, what was done, and the measured improvement. Future engineers will need to understand why this code looks unusual.

## Anti-Rationalizations

**"I know this is slow - I don't need to profile"**
Everyone thinks they know where the bottleneck is. Profilers are always more accurate than intuition.

**"This optimization is obvious - I don't need a benchmark"**
Without a benchmark, "obvious improvement" is also "unmeasured claim."

## Verification Requirements

- [ ] Baseline measured (p50/p95/p99) before any changes
- [ ] Profiler output reviewed to identify actual bottleneck
- [ ] Benchmark written before optimization
- [ ] Improvement measured and quantified (not "feels faster")
- [ ] Test suite passes after optimization
