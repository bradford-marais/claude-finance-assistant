# Committees

One folder per committee she sits in (exco, audit, board, finance committee). Inside each, one note per meeting.

```
Committees/
└── audit/
    └── 2026-06-10-audit-committee.md
```

Each meeting note should end with an **action points** section:

```markdown
## Action points
- [ ] <action> — owner: <name> — due: <YYYY-MM-DD>
```

`/actions` reads across all committees and pulls every open action point by owner and due date, and can draft chase messages.
