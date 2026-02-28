# Plan: Publish Public Repo + LinkedIn Post

Date: 2026-02-28
Task: Make this project a public GitHub repo and draft a LinkedIn post for the Toronto Codex meetup demo.

## Requirements to Confirm
- Repository name (default: `codex-agents-gates-template`)
- Optional GitHub owner/org (default: authenticated user)
- YouTube recording URL to include in the LinkedIn post

## Execution Plan
1. Validate prerequisites:
   - Confirm `gh` auth and git identity.
   - Confirm current folder is ready for first commit.
2. Initialize/publish repository:
   - Initialize git in this folder.
   - Add `.gitignore` if needed.
   - Create initial commit.
   - Create GitHub repo as **public** and push.
3. Provide outputs:
   - Share repo URL and branch.
   - Draft a concise LinkedIn post tailored to the meetup context and include the YouTube link.

## Skill Routing
- `gh-repo-bootstrap` is relevant for GitHub repo creation.
- Fallback reason: bundled script creates a new empty folder under `~/Documents/Project/<name>`, while this task publishes the existing non-empty folder, so manual `git` + `gh` workflow is required.

## Risks / Safeguards
- Prevent accidental secret publication by scanning for obvious secret files/patterns before push.
- Keep changes scoped to repo bootstrap and user-facing copy only.
