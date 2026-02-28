#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT_DIR"

failures=0

check_file() {
  local path="$1"
  if [[ ! -e "$path" ]]; then
    echo "[FAIL] Missing required path: $path"
    failures=$((failures + 1))
  else
    echo "[OK]   $path"
  fi
}

check_contains() {
  local file="$1"
  local text="$2"
  if ! rg -n --fixed-strings "$text" "$file" >/dev/null 2>&1; then
    echo "[FAIL] '$text' not found in $file"
    failures=$((failures + 1))
  else
    echo "[OK]   Found '$text' in $file"
  fi
}

# Required assets
check_file "AGENTS.md"
check_file "Skills.md"
check_file "Architecture.md"
check_file "README.md"
check_file "tests/README.md"
check_file "tests/smoke/validate_template.sh"
check_file "agents/deploy/checklist.md"
check_file "agents/deploy/runbook.md"
check_file "agents/deploy/rollback.md"
check_file "plans/README.md"
check_file "plans/YYYY-MM-DD-task-name.md"

# Open-source governance files
check_file "LICENSE"
check_file "CONTRIBUTING.md"
check_file "CODE_OF_CONDUCT.md"
check_file "SECURITY.md"
check_file ".github/ISSUE_TEMPLATE/bug_report.md"
check_file ".github/ISSUE_TEMPLATE/feature_request.md"
check_file ".github/pull_request_template.md"

# Quality anchors
check_contains "README.md" "## Quick Start"
check_contains "README.md" "## Open-Source Readiness"
check_contains "README.md" "## GPT-5.3-Codex Compatibility"
check_contains "AGENTS.md" "### Gate 1: Plan First"
check_contains "AGENTS.md" "### Gate 10: Git Approval"
check_contains "Skills.md" "## Exclusions"
check_contains "tests/README.md" "bash tests/smoke/validate_template.sh"

if [[ "$failures" -gt 0 ]]; then
  echo "\nTemplate validation failed with $failures issue(s)."
  exit 1
fi

echo "\nTemplate validation passed."
