---
description: Pull open committee action points by owner and due date
---

Track what came out of committee meetings and who owes what.

## Input

`/actions` for everything open, or `/actions <committee>` for one (e.g. `/actions audit`).

## Gather

Read `Committees/` — each committee folder holds meeting notes with action points. Pull every **open** action item (unchecked `- [ ]`).

## Output

```
## Open committee actions — [date]

### 🔴 Overdue
- [action] — owner — was due [date] — (from [committee], [meeting date])

### Due soon
- [action] — owner — due [date] — (from [committee])

### Open, no date
- [action] — owner — (from [committee])
```

Group by owner if she asks. Otherwise sort by due date.

## Follow-ups

After the list, offer to draft chase messages (in her voice, from `Context/voice.md`) for anything overdue — one per owner, grouping their items so she sends one message, not five.

## Rules

- Every action has an owner. If a note has an ownerless action, flag it as unassigned — that's a gap.
- Cite which committee + meeting date each action came from so she can trust it.
- Don't list closed/done items unless she asks for the full history.
