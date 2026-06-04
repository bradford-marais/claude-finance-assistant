# Finance Assistant — Claude Code Workspace

An AI assistant for a **Head of Finance**. Think chief of staff: it clears the inbox, drafts the recurring reports, guards statutory + internal deadlines, keeps the team accountable, and preps for committee meetings.

Single user, runs on her machine. She answers a few questions on first run and it tailors itself to her company.

---

## What's inside

```
Context/      Her, the team, her voice, triage rules, the SA statutory calendar (pre-loaded)
Deadlines/    Internal deadline tracker + monthly-close calendar
Reports/      recurring/ (one definition per report) · monthly/ (the outputs)
Committees/   One folder per committee — agendas + action points
Team/         People + responsibilities + who's behind
Data/         inbox/ for raw exports the reports build from
.claude/      The commands + permissions that make it run
```

## Commands

| Command | What it does |
|---------|--------------|
| `/prime` | Start of day — what's due, overdue, what needs her |
| `/setup` | First-run interview — fills in `Context/` and seeds the folders |
| `/triage` | Prioritise the inbox: needs-her-now vs can-wait, with reply drafts |
| `/report` | Assemble a recurring/monthly report from the data |
| `/deadlines` | What's due — statutory (SARS/CIPC) + internal — overdue flagged |
| `/actions` | Open committee action points by owner + due date, with chase drafts |
| `/team` | Team accountability — who owes what, chase drafts ready |
| `/grill-me` | Pressure-test a decision (hire, budget, systems change) one question at a time |

The SA statutory calendar (VAT201, EMP201/PAYE, provisional tax IRP6, EMP501, CIPC annual return) is **pre-loaded** in `Context/deadlines-sa.md` — `/setup` tunes it to her year-end and VAT/PAYE status.

---

## Setup (5 minutes)

**1. Install prerequisites** — [Node.js](https://nodejs.org) 18+ and [VS Code](https://code.visualstudio.com).

**2. Install Claude Code**
```bash
npm install -g @anthropic-ai/claude-code
```
Plus the **Claude Code** extension from the VS Code marketplace.

**3. Get this workspace**
```bash
git clone https://github.com/bradford-marais/claude-finance-assistant.git
cd claude-finance-assistant
code .
```

**4. Launch Claude in the folder**
Open the integrated terminal (`` Ctrl+` ``) and run `claude`. Log in on first run. Launch it from *inside* this folder — that anchors it to the workspace.

**5. Run setup**
```
/setup
```
Answer the questions. It fills in her context, the team, committees, recurring reports, and tunes the deadline calendar.

**6. (Optional) Launch shortcuts**
```bash
bash setup-aliases.sh
```
Adds `cs` (normal), `cr` (skip-permissions — use with care on a machine holding real company data), and `ca` (auto). After that, type `cs` from anywhere to jump in and run `/prime`.

---

## The two things to know

- **Live email/sheets isn't wired yet.** It's a future connector (MCP). Until then, `/triage` works on emails she pastes in, and `/report` produces numbers/tables ready to paste. On **Google Workspace** the assistant can later read Gmail and write Sheets directly; on **Microsoft 365** it can triage and produce numbers but can't edit inside Excel.
- **Real data stays local.** `.gitignore` excludes exports, monthly reports, committee notes, and spreadsheets so nothing confidential gets pushed. This repo is the *template*; her real working copy lives on her machine.

> This is a productivity tool, not tax advice. Statutory dates are a working reference — always verify on SARS eFiling.
