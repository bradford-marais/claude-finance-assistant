---
description: First-run interview — fills in the Context/ files so the assistant knows her, her team, and her calendar
---

Set up this finance assistant for its owner. Fill in `Context/` and seed the tracking folders so every command works with real context.

## How to run this

Interview **one question at a time**. Wait for each answer before the next — never dump all the questions at once. If she skips one, leave a placeholder and move on.

## Questions to cover

**Her (→ `Context/about.md`)**
1. Name, role, company, roughly how big (headcount / revenue band)?
2. **Financial year-end month?** (This drives provisional tax and income-tax deadlines — important to get right. Most SA companies are end-February.)
3. Is she on **Google Workspace (Gmail + Sheets)** or **Microsoft 365 (Outlook + Excel)**? (Note: this is a future connector. Google = assistant can read mail / write sheets directly; Microsoft = triage + produce numbers, she pastes into Excel.)
4. What **accounting system** do they run (Xero, Sage, Pastel, QuickBooks, SAP, other), and where does report source data come from — system exports, bank files, existing sheets?
5. Is the company a **VAT vendor**, and do they have **employees** (PAYE)? Any **provisional taxpayer** obligations? (Confirms which statutory deadlines apply.)

**Her team (→ `Context/team.md` + seed `Team/`)**
6. Who's on her team — names and what each one owns (AP, AR, payroll, reporting, tax, etc.)?

**Committees (→ seed `Committees/`)**
7. Which committees/meetings does she sit in (exco, audit, board, finance committee) and how often do they meet?

**Recurring reports (→ seed `Reports/recurring/`)**
8. What reports does she produce on a schedule — name, cadence (monthly/quarterly), who it goes to, and what the source data is? Get the top 3–5.

**Email triage (→ `Context/email-priorities.md`)**
9. Whose emails always jump the queue (CEO, board, auditors, key clients, SARS)? What kinds of email are genuinely urgent vs can wait?

**Voice (→ `Context/voice.md`)**
10. Ask her to paste 1–2 emails/messages she's written that sound like her. This is what reply drafts get matched to.

## When done

Write the answers into the `Context/` files (replace every `<placeholder>`). Then:
- Seed `Team/` with one file per team member (responsibilities, deadlines they own).
- Seed `Committees/` with one folder per committee (cadence noted in a README).
- Seed `Reports/recurring/` with one definition file per recurring report.
- Review `Context/deadlines-sa.md` against her year-end and VAT/PAYE answers — trim deadlines that don't apply, fix dates driven by year-end.

Confirm what you wrote and tell her she can start with `/prime`, `/deadlines`, or `/triage`.
