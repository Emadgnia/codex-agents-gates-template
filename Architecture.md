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
- Change: Split repository responsibilities: this repo now focuses on template/governance guidance, while installable skills moved to dedicated repository `codex-agent-skills`.
- Components touched: `README.md`, `Skills.md`, `tests/README.md`, `plans/`, `Architecture.md`.
- Risk: Low (scope clarification and repository split).
- Migration: use template repo for process/gates; use external skills repo for installable skills.
- Rollback: reunify skills and installer files into this repository.

- Date: 2026-02-28
- Change: Added npx-compatible skills installer package (`codex-skills-installer`) with CLI commands for list/install/uninstall, installer smoke tests, and distribution docs.
- Components touched: `package.json`, `bin/`, `skills/`, `tests/`, `README.md`, `plans/`, `Architecture.md`.
- Risk: Medium (distribution tooling may overwrite target skill folders if `--force` is used).
- Migration: publish package to npm and use `npx codex-skills-installer ...` for installs.
- Rollback: remove package/CLI files and revert documentation updates.

- Date: 2026-02-28
- Change: Expanded skill library with 12 additional depth-focused local skills and associated scripts/references for git/PR flow, monorepo setup, migrations, release ops, incident response, scheduling, brand content, governance sync, title generation, toolchain setup, and UI redesign delivery.
- Components touched: `skills/`, `Skills.md`, `plans/`, `Architecture.md`.
- Risk: Medium (larger routing surface can increase overlap if not curated).
- Migration: Route new requests through `Skills.md` and run batch validation via `skills/skill-lifecycle-curator/scripts/validate_all_skills.sh`.
- Rollback: Remove new skill folders and revert routing/doc updates.

- Date: 2026-02-28
- Change: Added history-derived local skill system (`plan-gate-executor`, `fullstack-ship-troubleshooter`, `obsidian-note-orchestrator`, `skill-lifecycle-curator`) and mining/validation tooling.
- Components touched: `skills/`, `Skills.md`, `plans/`, `Architecture.md`.
- Risk: Medium (new workflow instructions and scripts affect operator behavior).
- Migration: Use `Skills.md` routing entries and validate skills with `quick_validate.py`.
- Rollback: Remove `skills/` additions and revert routing/doc updates.

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
