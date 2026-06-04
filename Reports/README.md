# Reports

```
Reports/
├── recurring/   One definition file per recurring report (the "how")
└── monthly/     The generated outputs, dated YYYY-MM-<report>.md
```

Define each recurring report once in `recurring/` — what it contains, where the data comes from, who it goes to, how often. Then `/report <name>` builds the current period's version into `monthly/`, matching last month's format.

See `recurring/_template.md` for the definition format.
