# de-study-log

Public log of my path to a data engineer role.

**Background:** math degree (Moscow State University); 5 years as a bank AML analyst
(Excel, pandas, SQL); currently a software developer building IFRS 17 reporting
pipelines (Python, DuckDB, polars, Celery).

## Roadmap

| Phase | Focus | Status |
|-------|-------|--------|
| 1 | SQL, Spark basics | In progress |
| 2 | Lakehouse (Delta Lake / Iceberg), Airflow, dbt | Not started |
| 3 | AWS data services, AWS Certified Data Engineer Associate | Not started |
| 4 | Portfolio project, job search | Not started |

## Repository layout

| Path | Contents |
|------|----------|
| `sql/` | SQL exercises and notes, as Jupyter notebooks run against local Postgres |

New folders appear as I start each topic.

## Running locally

Requirements: [uv](https://docs.astral.sh/uv/), Docker.

```bash
git clone git@github.com:maxmorozov91/de-study-log.git
cd de-study-log
uv sync
uv run nbstripout --install     # strips notebook outputs on commit
cp .env.example .env            # edit the values if you like
docker compose up -d            # local Postgres on 127.0.0.1:5432
uv run jupyter lab
```

## Projects

Polished portfolio projects will be linked here.