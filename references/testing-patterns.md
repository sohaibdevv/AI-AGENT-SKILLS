# Testing Patterns Reference

Common testing patterns and when to use each. For the full process, see `skills/test-driven-development/SKILL.md`.

## The Testing Pyramid

```
         /E2E\         ← Few, slow, test critical journeys
        /------\
       /Integr. \      ← Medium, test real integrations
      /----------\
     /  Unit Tests \   ← Many, fast, test behavior
    /--------------\
```

Unit : Integration : E2E ratio ≈ 70 : 20 : 10

## Unit Tests

**Use for**: Pure functions, business logic, algorithms, parsers
**Characteristics**: No I/O, no network, no database, < 1ms per test
**Pattern**:
```
describe('calculateTax', () => {
  it('returns 0 for items below the threshold', () => { ... })
  it('applies the standard rate for items above the threshold', () => { ... })
  it('applies the reduced rate for exempt categories', () => { ... })
})
```

## Integration Tests

**Use for**: Service + database, service + external API (with test doubles), API handlers
**Characteristics**: Uses real database in test environment, real HTTP (in-process), < 1s per test
**Pattern**:
```
describe('POST /users', () => {
  it('creates a user and returns 201 with the user data', () => { ... })
  it('returns 409 when the email already exists', () => { ... })
  it('returns 422 when the email is invalid', () => { ... })
})
```

## E2E Tests

**Use for**: Critical user journeys (sign up, checkout, core workflow)
**Characteristics**: Real browser, real server, real database, < 30s per test
**Keep few**: E2E tests are expensive to write and maintain. Cover only paths where failure is catastrophic.

## Test Doubles (Mocks, Stubs, Fakes)

| Type | Use when |
|------|---------|
| **Stub** | You need to control return values, not verify calls |
| **Mock** | You need to verify the function was called with specific arguments |
| **Fake** | You need a real implementation at reduced scale (in-memory database) |
| **Spy** | You want to observe a real function without replacing it |

**Prefer fakes over mocks for dependencies you own.** Mocks are tightly coupled to implementation; fakes test behavior.

## Naming Tests

Good: `it('returns an empty array when no users match the filter')`
Bad: `it('test1')`, `it('should work')`, `it('returns users')`

Format: `it('[action/state] [expected result] [when condition]')`

## Test Data

- Use factory functions, not fixtures shared across tests
- Minimum data: create only what the test needs
- Explicit: don't rely on ordering or insertion order
- Cleanup: each test is responsible for its own setup and teardown

## Property-Based Testing

Use when:
- Testing parsers, serializers, or encoding/decoding
- Testing mathematical invariants
- Testing any function where "for all valid inputs, this property holds"

Tools: fast-check (JavaScript), Hypothesis (Python), QuickCheck (Haskell/Rust)

## Snapshot Testing

Use sparingly:
- Useful for UI components that are purely presentational
- Dangerous when used as a substitute for behavioral assertions
- Review snapshot diffs carefully - "accept" is not a test

## Contract Testing

Use when:
- Two services need to stay in sync on an API contract
- You don't control both sides of the integration
- Mocking the external service would give false confidence

Tools: Pact, Spring Cloud Contract
