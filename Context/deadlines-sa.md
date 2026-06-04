# SA Statutory Calendar (SARS / CIPC)

> Pre-loaded baseline. **Confirm against her company's situation during `/setup`** — dates depend on the **financial year-end**, whether they're a VAT vendor, whether they have employees (PAYE), and eFiling status. SARS deadlines that fall on a weekend or public holiday move to the **prior business day**. This is a working reference, not tax advice — always verify on SARS eFiling.

Assumptions until `/setup` confirms: VAT vendor on eFiling · has employees (PAYE) · provisional taxpayer · **February year-end** (the SA default).

## Monthly

| Deadline | What | When |
|----------|------|------|
| **EMP201** | PAYE / UIF / SDL for the prior month | **7th** of each month (or prior business day) |
| **VAT201** | VAT return + payment (eFiling) | **last business day** of the month following the tax period (Category A/B = every 2 months; C = monthly) |
| **Dividends Tax (DTR01/02)** | If dividends were declared | end of the month following the month of payment |

## Annual / periodic — payroll

| Deadline | What | When |
|----------|------|------|
| **EMP501 (interim)** | Mid-year employer reconciliation (Mar–Aug) | **end October** (filing window ~Sep–Oct) |
| **EMP501 (annual)** | Annual employer reconciliation (Mar–Feb) + IRP5s | **end May** (filing window ~Apr–May) |

## Provisional & income tax (driven by year-end — shown for Feb year-end)

| Deadline | What | When (Feb year-end) |
|----------|------|---------------------|
| **IRP6 — 1st period** | First provisional tax estimate | **end August** (6 months into the year) |
| **IRP6 — 2nd period** | Second provisional tax estimate | **end February** (year-end) |
| **IRP6 — 3rd (top-up)** | Voluntary top-up to avoid interest | **end September** (~7 months after year-end) |
| **ITR14** | Company income tax return | within **12 months** of financial year-end |

> If year-end is **not** February, shift all four of the above relative to the actual year-end (1st provisional = 6 months in, 2nd = at year-end, top-up = ~6–7 months after, ITR14 = 12 months after).

## CIPC

| Deadline | What | When |
|----------|------|------|
| **Annual Return** | CIPC company annual return | within **30 business days** after the anniversary of the incorporation date |
| **Beneficial Ownership** | BO declaration | filed together with the annual return |
| **Annual Financial Statements / FAS** | Submitted with annual return (AFS or Financial Accountability Supplement) | with the annual return |

## Other (confirm if applicable)

| Deadline | What | When |
|----------|------|------|
| **COIDA Return of Earnings (W.As.8)** | Workmen's compensation | annual submission window, typically opens ~Apr, due ~end May/Jun (often extended) |

---

**How the assistant uses this:** `/deadlines` reads this file, applies her confirmed year-end and VAT/PAYE status, converts each rule into the next actual calendar date, and shifts any date that lands on a weekend/public holiday to the prior business day.
