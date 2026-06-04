---
description: Assemble a recurring or monthly report from the data
---

Build one of her recurring reports.

## Input

The user names the report (e.g. `/report monthly board pack` or `/report cashflow`). If unclear, list what's defined in `Reports/recurring/` and ask which.

## Gather

1. Read the report's definition in `Reports/recurring/<report>.md` — cadence, source data, columns, who it's for, format.
2. Pull the source data from `Data/` (or `Data/inbox/` for a fresh export). If the data isn't there, ask her to drop the export in `Data/inbox/`.
3. Read `Context/about.md` for the platform and accounting system.

## Produce

Write the report to `Reports/monthly/YYYY-MM-<report>.md` for the current period. Match the structure in the definition.

**On "add columns / import data into sheets":**
- **Google Workspace + connector set up** → write the new columns / imported rows straight into the sheet, and confirm the range you touched.
- **Otherwise (Excel, or no connector)** → produce the table in markdown/CSV ready to paste, and tell her exactly which columns go where. Never claim to have edited a sheet you can't reach.

## Rules

- Every figure traces to the source data. Show the source. If a number's missing, flag the gap — don't fill it in.
- Carry forward the format from last month's version in `Reports/monthly/` so it stays consistent.
- Call out anything that looks off vs the prior period (big swings, blanks, sign flips).
- End with a one-line "what changed vs last month" so she can sanity-check fast.
