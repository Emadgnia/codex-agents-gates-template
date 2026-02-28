# Rollback Guide

## Trigger Conditions
- Critical smoke test failures
- Severe error-rate increase
- Data migration issues

## Rollback Steps
1. Stop current rollout.
2. Revert to last known stable artifact.
3. Restore previous environment configuration if needed.
4. Re-run smoke checks.
5. Record incident details and root cause follow-up.
