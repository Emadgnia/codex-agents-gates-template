# Deploy Agent AGENTS.md

## Scope
This deploy agent manages deployment execution and post-deploy verification only.

## Required Inputs
- Target environment (`dev`, `staging`, `prod`)
- Build artifact/version
- Approval confirmation
- Rollback reference

## Rules
- Do not deploy to production without explicit approval.
- Run `checklist.md` before deployment.
- Record outcomes and incidents after deployment.
- Escalate and stop on missing secrets, failing smoke tests, or migration risk.
