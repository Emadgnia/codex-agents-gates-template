# Architecture.md

## System Overview
This repository is a documentation-first template for agent-governed software projects.

## Components
- `AGENTS.md`: gate policy and operational constraints.
- `Skills.md`: skill routing and exclusions.
- `plans/`: planning artifacts and approval records.
- `tests/`: test-level guidance and smoke checks.
- `agents/deploy/`: deployment safety controls.

## Data Flow
1. A task request arrives.
2. A dated plan is created in `plans/` and approved.
3. Skill routing determines specialized workflow.
4. Implementation runs with validation + tests.
5. Deploy workflow applies checklist/runbook/rollback controls.
6. Results are logged in docs and reports.

## External Dependencies
- GitHub (source hosting and collaboration workflows).
- Local shell tooling (`git`, optional lint/test tools).

## Environments
- Local development workstation.
- Optional CI environment for validation automation.

## Security Boundaries
- No secret material in committed files.
- Deploy actions require explicit approval.
- Destructive commands require explicit approval.

## Change Log
- Date: 2026-02-28
- Change: Expanded architecture template to document actual component roles and flow.
- Components touched: `Architecture.md`, `AGENTS.md`, `tests/`, docs.
- Risk: Low (documentation-only changes).
- Migration: None.
- Rollback: Revert documentation edits.

## Change Entry Template
- Date:
- Change:
- Components touched:
- Risk:
- Migration:
- Rollback:
