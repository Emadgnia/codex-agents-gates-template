# Plan: create-claude-mcp-starter-repo

Date: 2026-02-28
Owner: emad + codex
Status: `Done`

## Goal
Create and publish a new open-source Claude-focused repository that provides a runnable MCP plugin starter with strong community standards.

## Scope
- In scope:
  - Create new repository `claude-mcp-starter-kit`.
  - Add runnable MCP server template for Claude.
  - Add OSS standards files and contribution docs.
  - Add smoke test and usage documentation.
  - Commit and push to GitHub.
- Out of scope:
  - npm publish (can be done after repo review).
  - advanced production auth/deployment patterns.

## Recommended Direction
Use a Node.js MCP starter based on `@modelcontextprotocol/sdk` (stdio transport), with simple example tools and clear Claude configuration snippets.

## Execution Plan
1. Scaffold new repo in `/Users/emad/Documents/Project/claude-mcp-starter-kit`.
2. Add package manifest and MCP server source.
3. Add smoke test script and basic validation command.
4. Add open source community standards files:
   - LICENSE, CONTRIBUTING, CODE_OF_CONDUCT, SECURITY, issue templates, PR template.
5. Add README with quick start and Claude config examples.
6. Run local validation and `npm pack --dry-run`.
7. Initialize git, commit, create GitHub repo, and push.

## Validation Plan
- `npm run smoke`
- `npm run lint` (basic Node syntax check)
- `npm pack --dry-run`

## Risks
- Risk: MCP SDK API mismatch.
- Mitigation: implement minimal validated API calls and smoke command.

- Risk: ambiguous Claude setup instructions.
- Mitigation: include explicit local command and config snippets.

## Rollback
- Trigger: starter fails local smoke checks.
- Rollback: keep repo local only, fix before publish.
- Verification: all validation commands pass.

## Approval
- Requested from: emad
- Approval status: `Approved`
- Approval timestamp: `2026-02-28 (user: "now make a new repo for claude...")`

## Execution Report

### Deliverable
- New repository created and pushed:
  - `https://github.com/Emadgnia/claude-mcp-starter-kit`

### Implementation Summary
1. Scaffolded Node.js Claude MCP starter with stdio transport.
2. Added example tools: `echo`, `utc_now`, `slugify`.
3. Added OSS standards:
   - `LICENSE`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`
   - `.github` issue templates + PR template
4. Added repository-level guidance in `AGENTS.md`.
5. Added smoke and lint scripts.

### Validation Evidence
- `npm run smoke` -> passed
- `npm run lint` -> passed
- `npm pack --dry-run` -> passed
- Secret pattern scan -> no matches

### Git Evidence
- Local commit: `b438ffa` (`Initial Claude MCP plugin starter kit`)
- Remote branch: `main` pushed to `origin`
