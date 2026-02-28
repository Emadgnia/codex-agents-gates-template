# Codex AGENTS Gates Template

A production-minded starter pack for agent-driven projects that need explicit planning, approvals, validation evidence, and deployment controls.

## What You Get

| Path | Purpose |
|---|---|
| `AGENTS.md` | Project-level operating rules and mandatory gates |
| `Skills.md` | Skill routing table, exclusions, and fallback policy |
| `plans/` | Task plans and approval records |
| `Architecture.md` | System map + change log template |
| `tests/` | Test-level guidance and smoke checks |
| `agents/deploy/` | Deploy checklist, runbook, and rollback guide |

## Quick Start

1. Copy this template into a new project folder.
2. Replace placeholders like `{{PROJECT_NAME}}` and `{{date}}`.
3. Create a task plan in `plans/` and get approval.
4. Run smoke validation before publishing:

```bash
bash tests/smoke/validate_template.sh
```

## Open-Source Readiness

This template now includes core community standards:

- `LICENSE` (MIT)
- `CONTRIBUTING.md`
- `CODE_OF_CONDUCT.md`
- `SECURITY.md`
- GitHub issue and PR templates under `.github/`

## Gate Model Summary

`AGENTS.md` enforces an ordered gate flow:

1. Plan and approval first.
2. Skill routing and justification.
3. Architecture impact check.
4. Build/run validation.
5. Test evidence.
6. Secrets and safety.
7. Deploy controls.
8. Post-deploy verification.
9. Documentation sync.
10. Git operation safeguards.

## GPT-5.3-Codex Compatibility

Validated on **February 28, 2026** for instruction quality with Codex workflows.

Design choices used for compatibility:

- Explicit gate ordering with no hidden steps.
- Clear approval checkpoints before implementation and deployment.
- Deterministic, low-ambiguity wording in operational rules.
- Separate planning, validation, and rollback artifacts.

## Validation

Run this repo-level smoke check:

```bash
bash tests/smoke/validate_template.sh
```

## Skills Library

Installable skill assets are now maintained in a dedicated repository:

- [codex-agent-skills](https://github.com/Emadgnia/codex-agent-skills)

This template repository remains focused on agent governance, gates, and validation workflow design.

## License

MIT. See [`LICENSE`](LICENSE).
