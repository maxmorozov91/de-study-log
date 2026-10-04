# SQL

Practice and notes, run against a local Postgres 18 container (see the root README).

## Topics

| Notebook | Topic | Status |
|----------|-------|--------|
| `01-select-filter-sort.ipynb` | SELECT, WHERE, ORDER BY, GROUP BY basics | Done |
| `02-joins-set-operations.ipynb` | Joins, set operations | In progress |
| | Row-level functions (string, date, NULL, CASE) | Planned |
| | Window functions, including aggregates | Planned |
| | CTEs and subqueries | Planned |
| | Query plans (`EXPLAIN ANALYZE`) | Planned |

## How I work

- Each notebook is one topic: the problem, my solution, and a short note on what I learned.
- Python calls SQL via psycopg2, with polars for result handling.
- Connection settings come from `.env`, never from the notebook itself.

## Notes

- Some learning material uses SQL Server (T-SQL). When syntax differs from Postgres,
  I note it in the notebook (e.g. `TOP n` vs `LIMIT n`, `GETDATE()` vs `now()`).