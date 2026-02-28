# AGENTS.md — {{PROJECT_NAME(Blender)}}

## Mission
Deliver scoped, testable changes safely with explicit planning and approval.

## Required Project Assets (Gate 0)
- [ ] `Skills.md`
- [ ] `AGENTS.md`
- [ ] `plans/`
- [ ] `Architecture.md`
- [ ] `tests/`
- [ ] `agents/deploy/`

If any item is missing, stop and ask approval to scaffold it.

## Workflow Gates (Must Pass In Order)

### Gate 1: Plan First
- [ ] Clarify missing requirements.
- [ ] Write a short plan in `plans/{{date}}-{{task}}.md`.
- [ ] Get explicit user approval before implementation.

### Gate 2: Skill Routing
- [ ] Match task to local skill(s).
- [ ] Read required `SKILL.md`.
- [ ] If not using a matching skill, state reason and fallback.

### Gate 3: Architecture Check
- [ ] Confirm affected components in `Architecture.md`.
- [ ] Note data flow, dependencies, and risk level.
- [ ] Document architecture deltas when behavior changes.

### Gate 4: Build/Run Validation
- [ ] Run local dev/build commands.
- [ ] Capture failures with root cause and fix plan.

### Gate 5: Test Evidence
- [ ] Define required test scope (unit/integration/e2e/smoke).
- [ ] Run relevant tests from `tests/`.
- [ ] If tests cannot run, report blocker and residual risk.

### Gate 6: Secrets and Safety
- [ ] No secrets in repo, prompts, logs, or commits.
- [ ] Use `.env.example` for public templates.
- [ ] Validate API key handling and least-privilege config.

### Gate 7: Deploy Agent Control
- [ ] Use `agents/deploy/` runbook/checklist.
- [ ] Validate environment, migration impact, and rollback path.
- [ ] Require explicit approval before production deploy.

### Gate 8: Post-Deploy Verification
- [ ] Run smoke checks.
- [ ] Verify logs/monitoring.
- [ ] Record outcome in deploy report.

### Gate 9: Documentation Sync
- [ ] Update plans, architecture, and tests docs.
- [ ] Add decision note for reusable learning.

### Gate 10: Git Approval
- [ ] No commit/push/rebase/branch switch without explicit request.
- [ ] Never run destructive git commands unless explicitly asked.

## Non-Negotiables
- No destructive commands without approval.
- No secret exfiltration.
- Keep changes scoped; avoid unrelated refactors.
