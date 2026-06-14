# Performance Checklist

Use during review of performance-sensitive changes. For the full process, see `skills/performance-optimization/SKILL.md`.

## Before Optimizing
- [ ] Baseline measured (p50/p95/p99) — no optimization without a before number
- [ ] Profiler run to identify actual bottleneck (not intuition)
- [ ] Benchmark written to measure the specific bottleneck

## Database
- [ ] No N+1 query patterns
- [ ] `EXPLAIN` run on hot queries
- [ ] Indexes on WHERE, JOIN, ORDER BY columns
- [ ] No `SELECT *` in production queries (use projections)
- [ ] Bulk operations instead of row-by-row for batch writes
- [ ] Pagination on large result sets
- [ ] Connection pooling configured

## Application
- [ ] No blocking I/O in hot paths
- [ ] No expensive computation in request handlers (offload to background)
- [ ] Caching for expensive, frequently-accessed, rarely-changing data
- [ ] Memory leaks checked with profiler
- [ ] Object creation minimized in tight loops

## Network
- [ ] Requests batched where possible
- [ ] Response compression enabled (gzip/brotli)
- [ ] CDN for static assets
- [ ] HTTP/2 enabled

## Frontend (Web)
- [ ] LCP < 2.5s (Lighthouse)
- [ ] CLS < 0.1 (Lighthouse)
- [ ] INP < 200ms (Lighthouse)
- [ ] No render-blocking resources in critical path
- [ ] Images: correct format (WebP/AVIF), compressed, sized, lazy-loaded
- [ ] Bundle size within budget (check with webpack-bundle-analyzer or similar)
- [ ] Code splitting on large routes

## After Optimizing
- [ ] Improvement measured (before vs. after numbers)
- [ ] Test suite passes (optimization didn't break behavior)
- [ ] Optimization documented (why this code looks unusual)
