# Plan: split-template-and-skills-repos

Date: 2026-02-28
Owner: emad + codex
Status: `Done`

## Goal
Split the current hybrid repository into:
1. a template/reference repo for AGENTS + gates workflows, and
2. a dedicated open-source skills repository with `npx` installation.

## Scope
- In scope:
  - Create a new skills repo with installer CLI and OSS docs.
  - Keep this repo focused on template/reference guidance.
  - Commit and push both repositories.
- Out of scope:
  - npm publish (can be done immediately after if requested).
  - SkillsMP submission API automation.

## Naming (Search-Friendly)
- Template/reference repo: `codex-agents-gates-template` (existing)
- New skills repo: `codex-agent-skills` (keywords: codex + agent + skills)
- npm package name target: `codex-agent-skills` (subject to npm availability at publish)

## Execution Plan
1. Create new local repo folder `codex-agent-skills`.
2. Move/copy skill library + installer assets there.
3. Add open-source standards files and repository docs.
4. Validate installer and skill integrity in new repo.
5. Refocus current repo docs to template/reference purpose only.
6. Validate current repo template checks.
7. Commit + push current repo.
8. Initialize, commit, create GitHub repo, and push new skills repo.

## Validation Plan
- Current repo: `bash tests/smoke/validate_template.sh`
- New skills repo: `bash tests/smoke/skill_installer_smoke.sh`
- New skills repo: `node bin/codex-agent-skills.js list --source ./skills`

## Risks
- Risk: accidental drift between template and skills docs.
- Mitigation: explicit split note and cross-link docs.

- Risk: package/repo name conflict at publish time.
- Mitigation: fallback alternate names reserved (`codex-agent-skills-cli`, `codex-skills-library`).

## Rollback
- Trigger: split leaves either repo unusable.
- Rollback action: keep current repo as single hybrid repo and postpone split.
- Verification: smoke tests pass and docs reflect actual structure.

## Approval
- Requested from: emad
- Approval status: `Approved`
- Approval timestamp: `2026-02-28 (user: "split it now ... commit and push")`

## Execution Report

### Completed
1. Created dedicated new repository directory:
   - `/Users/emad/Documents/Project/codex-agent-skills`
2. Added search-friendly package and command naming:
   - npm package: `codex-agent-skills`
   - CLI command: `codex-agent-skills`
3. Added OSS standards files in new repo:
   - `LICENSE`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`, `.github/` templates, `AGENTS.md`
4. Added install and usage docs in new repo `README.md`.
5. Refocused this repo (`codex-agents-gates-template`) to governance/template purpose and linked skills repo.

### Validation Evidence
- Current repo:
  - `bash tests/smoke/validate_template.sh` -> passed
- New skills repo:
  - `node bin/codex-agent-skills.js list --source ./skills` -> passed
  - `bash tests/smoke/skill_installer_smoke.sh` -> passed
  - `npm pack --dry-run` -> passed
