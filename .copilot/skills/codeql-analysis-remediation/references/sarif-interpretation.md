# SARIF Interpretation and Finding Classification

This document explains how to interpret CodeQL SARIF output and classify findings for remediation.

## Extracting findings from SARIF

After CodeQL analysis completes, parse the SARIF output to extract:

- **Rule ID** — CodeQL rule identifier (e.g., `py/sql-injection`)
- **Severity or level** — Error, Warning, Note
- **Message** — Human-readable description of the issue
- **File path** — Which file contains the issue
- **Line number** — Exact location in the file
- **Code flow** — If available, the data flow path leading to the issue
- **Actionability** — Is this a real, actionable issue?
- **False positive likelihood** — Might this be a false positive?

## Finding prioritization

Prioritize findings in this order. Start with high-priority items; defer lower-priority items unless explicitly directed.

### Tier 1: Critical Security Issues (Fix now)

1. **High confidence security issues** — Clear, unmistakable security flaws
2. **Injection risks** — SQL injection, command injection, expression language injection
3. **Authentication and authorization issues** — Broken access control, missing auth checks
4. **Secrets or credential handling issues** — Hardcoded passwords, API keys, tokens

### Tier 2: Important Security Issues (Fix after tier 1)

5. **Deserialization issues** — Unsafe pickle, unsafe YAML loading, unsafe XML parsing
6. **Path traversal or file handling issues** — Directory traversal, unsafe file operations
7. **Cross site scripting (XSS)** — Unescaped output, DOM-based XSS
8. **Server side request forgery (SSRF)** — Unvalidated external requests

### Tier 3: Moderate Issues (Review and decide)

9. **Regular expression denial of service (ReDoS)** — Uncontrolled regex patterns
10. **Information disclosure** — Secrets in logs, sensitive data exposure
11. **Lower severity quality findings** — Code quality, maintainability, best practices

## Finding classification

For each finding, classify it into one of four categories:

### Fix now
- High-confidence, actionable security issues
- Clear breach of safe coding practice
- Minimal risk of introducing regressions
- Strong understanding of the fix

**Example:** Hardcoded database password detected in source code.

### Needs human decision
- Findings that depend on business logic or threat model
- Issues that require architectural decisions
- Findings where the "correct" behavior is ambiguous
- Issues requiring security team review

**Example:** Whether an unauthenticated endpoint is intentional or a security flaw.

### False positive
- CodeQL flagged benign code
- The issue is proven safe by surrounding context
- The reported risk does not apply to this codebase

**Example:** CodeQL flags a regex as ReDoS, but the pattern is bounded by the input source.

Document *why* it is a false positive so future reviewers understand the reasoning.

### Defer
- Lower-priority quality findings
- Issues that should be addressed but are not critical
- Technical debt that can be scheduled separately
- Findings requiring significant refactoring

## Safe assumptions about findings

When interpreting a finding:

1. **Trust CodeQL's data flow analysis** — If CodeQL reports a data flow, it typically has traced it carefully. Do not dismiss it without understanding the flow.

2. **Be skeptical of lenient context** — CodeQL may not understand:
   - Custom validation functions (e.g., your own `sanitize()` function)
   - External security boundaries (e.g., firewalls, WAFs)
   - Complex conditional logic that limits actual risk

3. **Prioritize trust boundaries** — Issues at entry points (user input, network, files) are more serious than issues in internal logic.

4. **Distinguish between risk and practicality** — A finding may be theoretically exploitable but practically impossible to trigger. Document this distinction.

## Recording decisions

When classifying a finding, record:

- **Finding ID and rule** — What CodeQL rule was violated?
- **Classification** — Fix now, needs decision, false positive, or defer
- **Reasoning** — Why did you make this classification?
- **Owner** — Who is responsible for the outcome?
- **Timeline** — When should this be addressed?

Example decision record:

```markdown
### py/sql-injection in db/models.py:42

- **Rule:** `py/sql-injection`
- **Classification:** Fix now
- **Reasoning:** Unsanitized user input concatenated into SQL query. High likelihood of real exploitation.
- **Owner:** Backend team
- **Timeline:** This sprint
```

## Handling false positives

If a finding is a false positive:

1. Document *why* it is a false positive
2. Understand what CodeQL misunderstood
3. Do not suppress the finding with a code comment like `# noqa: py/sql-injection`
4. Instead:
   - Verify the finding is indeed safe
   - Consider whether clarifying the code would prevent future false positives
   - Make a small code change to add clarity (e.g., extracting a well-named helper function)
   - Add a test or assertion that validates the safety assumption

Example approach:

```python
# Before: CodeQL flags this as unsafe
query = "SELECT * FROM users WHERE id = " + str(user_id)

# After: CodeQL understands this is safe due to explicit type conversion and bounds
user_id_int = int(user_id)  # Raises ValueError if not numeric
if user_id_int < 0 or user_id_int > 1000000:
    raise ValueError("Invalid user ID")
query = f"SELECT * FROM users WHERE id = {user_id_int}"
```

## Batch interpreting multiple findings

When processing many findings:

1. **Group by rule** — Organize findings by rule ID to see patterns
2. **Group by file** — Understand which areas have the most issues
3. **Group by severity** — Address high-severity first
4. **Identify common patterns** — Look for systemic issues (e.g., all injection flaws are in one module)

Common patterns often suggest:
- A shared responsibility (e.g., one team's code)
- A systemic process gap (e.g., input validation layer is missing)
- A training opportunity (e.g., developers unaware of the risk)

Use these patterns to inform the remediation plan.
