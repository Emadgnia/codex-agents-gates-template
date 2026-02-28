# Skills.md

## Purpose
List approved skills and when to use them.

## Skill Routing Table
| Skill | Use When | Inputs Required | Output | Notes |
|---|---|---|---|---|
| `{{skill_name}}` | `{{trigger}}` | `{{inputs}}` | `{{expected_output}}` | `{{constraints}}` |

## Optional External Skills Source
- Public skills distribution repository: [codex-agent-skills](https://github.com/Emadgnia/codex-agent-skills)

## Routing Rules
- Use the minimal skill set that covers the task.
- If multiple skills match, apply them in explicit order.
- If no skill cleanly matches, use manual workflow and document why.

## Exclusions
Never auto-select or use:
- `ad-wise-customer-inteligence-factory`
- `medlock-openwebui-setup`

## Fallback Rule
If no skill cleanly matches, use manual workflow and record the reason in the plan.
