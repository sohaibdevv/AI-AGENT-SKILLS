# Security Checklist

Use this as a quick reference during code review. For the full process, see `skills/security-and-hardening/SKILL.md`.

## Input Validation
- [ ] All user input validated at the boundary (type, length, format, range)
- [ ] All database queries parameterized (no string concatenation)
- [ ] File uploads restricted by type, size, and content (not just extension)
- [ ] URL redirects validated against allowlist
- [ ] HTML output encoded (XSS prevention)

## Authentication
- [ ] Every endpoint requires authentication
- [ ] Session tokens validated on every request
- [ ] Rate limiting on login/auth endpoints
- [ ] Account lockout after N failed attempts
- [ ] Session invalidated on logout
- [ ] Password reset tokens expire quickly and are single-use

## Authorization
- [ ] Every resource access checks authorization (not just at the route level)
- [ ] Principle of least privilege applied
- [ ] No authorization based on client-provided role (use server-side session)
- [ ] IDOR: accessing resource X requires ownership check, not just valid auth

## Secrets
- [ ] No secrets in source code
- [ ] No secrets in git history (`git log --all -p | grep -i "secret\|password\|token\|key"`)
- [ ] No secrets in logs
- [ ] Secrets managed via environment variables or secrets manager
- [ ] Secrets rotated after any suspected exposure

## Data Protection
- [ ] Sensitive data encrypted at rest
- [ ] All traffic over TLS
- [ ] No PII in logs
- [ ] Data minimization applied (only collect what's needed)

## Dependencies
- [ ] `npm audit` / `pip-audit` / equivalent passes (no high/critical CVEs)
- [ ] New dependencies reviewed for supply chain risk
- [ ] Dependencies pinned with lock files

## Headers and Transport
- [ ] Content-Security-Policy configured
- [ ] HSTS header set
- [ ] X-Frame-Options or frame-ancestors CSP directive
- [ ] X-Content-Type-Options: nosniff
- [ ] No sensitive data in URLs

## Errors
- [ ] Stack traces not exposed to users
- [ ] Error messages don't reveal user existence ("Invalid credentials", not "User not found")
- [ ] Errors logged server-side with context
