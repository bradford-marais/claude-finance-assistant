---
description: What's due — statutory plus internal — with anything overdue flagged
---

Show what's coming due so nothing sneaks up on her.

## Input

Optional horizon: `/deadlines` (default: this week + next), `/deadlines month`, `/deadlines all`.

## Gather

1. `Context/deadlines-sa.md` — the SA statutory calendar (SARS/CIPC), adjusted for her year-end.
2. `Deadlines/` tracker + monthly-close calendar — internal deadlines.
3. `Reports/recurring/` — report due dates.
4. `Committees/` — action-point due dates.

## Output

```
## Due — [horizon]

### 🔴 Overdue
- [item] — was due [date] — owner

### Statutory (SARS / CIPC)
- [VAT201 / EMP201 / IRP6 / etc.] — due [date] — [days away]

### Internal
- [close task / report / committee action] — due [date] — owner
```

## Rules

- Read statutory dates from `Context/deadlines-sa.md` — don't recite them from memory, they depend on her year-end and eFiling status.
- Convert "7th of the month" etc. into the actual next calendar date, and note when a date shifts because it lands on a weekend/public holiday (SARS deadlines move to the prior business day).
- Sort by date, soonest first. Overdue always at the top.
- If a statutory item is within 5 days and not marked handled in the tracker, flag it hard.
