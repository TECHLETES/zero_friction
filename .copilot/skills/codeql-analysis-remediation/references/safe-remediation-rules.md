# Safe Remediation Rules

This document defines the safe practices for fixing CodeQL findings. Follow these rules to ensure that fixes are effective, maintainable, and do not introduce regressions.

## General principles

### Principle 1: Fix at the trust boundary

Prefer input validation at trust boundaries (where external input enters the system) over scattered internal checks.

**Good:**
```python
@app.route('/api/user/<user_id>')
def get_user(user_id: str):
    # Validate at boundary
    user_id_int = _parse_user_id(user_id)
    return fetch_user_from_db(user_id_int)

def _parse_user_id(value: str) -> int:
    """Parse and validate user ID at trust boundary."""
    parsed = int(value)
    if parsed < 0 or parsed > 1000000:
        raise ValueError("Invalid user ID")
    return parsed
```

**Avoid:**
```python
def fetch_user_from_db(user_id):
    # Scattered validation in implementation
    if isinstance(user_id, str):
        user_id = int(user_id)
    if user_id < 0:
        return None
    query = f"SELECT * FROM users WHERE id = {user_id}"
    return db.execute(query)
```

### Principle 2: Use safe patterns

When multiple approaches exist, prefer established safe patterns:

- **SQL:** Use parameterized queries, never string concatenation
- **Path operations:** Use `pathlib.Path`, validate against allowlist
- **XSS:** Escape at output boundary, use templating libraries
- **Serialization:** Use JSON, avoid pickle/YAML unless absolutely necessary
- **Regex:** Use bounded patterns, avoid complex backtracking

### Principle 3: Minimize scope of changes

Make the narrowest possible change that fixes the issue. Do not refactor unrelated code.

**Good:**
```python
# Before
query = f"SELECT * FROM users WHERE id = {user_id}"

# After (narrow fix)
query = "SELECT * FROM users WHERE id = ?"
cursor.execute(query, (user_id,))
```

**Avoid:**
```python
# Before
query = f"SELECT * FROM users WHERE id = {user_id}"

# After (broad, unnecessary refactor)
def build_query(table, condition_column, condition_value):
    # Completely rewrote the function
    # Changed behavior, added new parameters
    # Much harder to review and test
    ...
```

### Principle 4: Preserve public API behavior

Unless the finding proves that the API behavior is unsafe, preserve existing function signatures and return types.

**Good:**
```python
# Before (unsafe but public API)
def get_user(user_id):
    return db.query(f"SELECT * FROM users WHERE id = {user_id}")

# After (safe, same API)
def get_user(user_id: int) -> dict:
    return db.query("SELECT * FROM users WHERE id = ?", (user_id,))
```

**Avoid:**
```python
# Before
def get_user(user_id):
    return db.query(f"SELECT * FROM users WHERE id = {user_id}")

# After (changed API unnecessarily)
def get_user_safe(user_id: int, db_conn: Connection) -> Optional[dict]:
    # Changed function name, added parameter, changed return type
    # This breaks all callers
    ...
```

## Category-specific rules

### SQL Injection fixes

**Rule:** Always use parameterized queries. Never concatenate user input into SQL strings.

**Bad:**
```python
query = f"SELECT * FROM users WHERE id = {user_id}"
result = db.execute(query)
```

**Good:**
```python
query = "SELECT * FROM users WHERE id = ?"
result = db.execute(query, (user_id,))
```

### Command injection fixes

**Rule:** Avoid shell=True and string concatenation. Use explicit argument lists.

**Bad:**
```python
import subprocess
subprocess.run(f"ls {directory}", shell=True)
```

**Good:**
```python
import subprocess
subprocess.run(["ls", directory])
```

### Path traversal fixes

**Rule:** Validate file paths against an allowlist or restrict to a base directory.

**Bad:**
```python
def read_file(filename):
    with open(filename, 'r') as f:
        return f.read()

read_file('../../../etc/passwd')  # Escapes the intended directory
```

**Good:**
```python
from pathlib import Path

BASE_DIR = Path('/app/data')

def read_file(filename: str) -> str:
    requested = (BASE_DIR / filename).resolve()
    if not str(requested).startswith(str(BASE_DIR)):
        raise ValueError(f"Path {filename} escapes base directory")
    return requested.read_text()

# read_file('../../../etc/passwd') now raises ValueError
```

### XSS fixes

**Rule:** Escape output at the boundary (near the template or response). Use templating libraries that escape by default.

**Bad:**
```python
# Flask
@app.route('/user/<name>')
def greet(name):
    return f"<h1>Hello {name}</h1>"
```

**Good:**
```python
# Flask with Jinja2 (escapes by default)
@app.route('/user/<name>')
def greet(name):
    return render_template('greet.html', name=name)

# greet.html
<h1>Hello {{ name }}</h1>
```

### Deserialization fixes

**Rule:** Avoid pickle and unsafe YAML loading. Use JSON or validated schemas.

**Bad:**
```python
import pickle
data = pickle.loads(user_input)  # Arbitrary code execution risk
```

**Good:**
```python
import json
from pydantic import BaseModel

class UserData(BaseModel):
    name: str
    age: int

data = UserData(**json.loads(user_input))
```

## Code quality rules

### Do not suppress findings

**Bad:**
```python
# noqa: py/sql-injection
query = f"SELECT * FROM users WHERE id = {user_id}"
db.execute(query)
```

Suppressing a finding without fixing it defers the problem and trains developers to ignore warnings.

If the finding is truly a false positive, instead:
1. Add a code change that clarifies why it is safe
2. Add a test that validates the safety assumption
3. Document the reasoning

**Better:**
```python
# Ensure user_id is always an integer (type-safe in Python 3.9+)
def get_user(user_id: int) -> dict:
    # CodeQL understands type narrowing; no suppression needed
    query = f"SELECT * FROM users WHERE id = {user_id}"
    return db.execute(query)
```

### Do not add blanket exception handlers

**Bad:**
```python
try:
    query = f"SELECT * FROM users WHERE id = {user_id}"
    return db.execute(query)
except Exception:
    return None  # Hides all errors, including security errors
```

Broad `except` clauses hide real problems and make debugging impossible.

**Good:**
```python
try:
    user_id_int = int(user_id)
except ValueError:
    raise ValueError(f"Invalid user ID: {user_id}")

query = "SELECT * FROM users WHERE id = ?"
return db.execute(query, (user_id_int,))
```

### Do not disable security checks to make tests pass

**Bad:**
```python
# In test, disable CSRF protection just to make the test pass
@csrf.exempt
def test_post_endpoint():
    response = client.post('/api/data', data=...)
```

If a test requires disabling security, the issue is with the test, not the security check.

**Good:**
```python
# Generate valid CSRF token for the test
def test_post_endpoint():
    response = client.get('/form')
    csrf_token = extract_csrf_token(response)
    response = client.post('/api/data', data=..., headers={'X-CSRFToken': csrf_token})
```

## Delegation rules for coder agents

When delegating a fix to a coder agent, include these constraints:

- **Preserve public API behavior** unless the task explicitly requires a change
- **Keep changes minimal** — fix the issue, do not refactor unrelated code
- **Add or update tests** where practical
- **Do not suppress findings** unless there is a strong reason documented in the code
- **If the finding is a false positive,** document why instead of making a risky change

## Review checklist for code changes

Before accepting changes from coder agents:

1. ✅ **Does the fix address the CodeQL finding?** — The change should make the issue go away.
2. ✅ **Is the fix safe?** — Does it use established secure patterns? Did it introduce new risks?
3. ✅ **Is the change minimal?** — Only what was necessary, no unrelated refactoring?
4. ✅ **Are tests added or updated?** — Does new test coverage validate the fix?
5. ✅ **Is the public API preserved?** — Did function signatures and behavior change unnecessarily?
6. ✅ **Is documentation updated?** — Do comments explain the why, not just the what?
7. ✅ **Are regressions unlikely?** — Could this change break existing code?

If any of these questions raise concerns, ask the coder agent to refine the changes.
