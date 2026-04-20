# Modern Medallian Architecture Using DBT and Databricks


## Architecture Diagram
![Architecture Diagram](/docs/DBT-101.png)

## Overview

This project demonstrates a Modern Medallion Architecture implementation using dbt and Databricks. It provides a structured approach to building scalable data pipelines with bronze, silver, and gold layers using DBT.

## Getting Started

### Prerequisites
- Databricks workspace
- dbt installed locally
- Python 3.8+

### Installation

```bash
git clone <repository-url>
cd dbt-101
uv sync
dbt deps
```

### Running dbt

```bash
dbt run
dbt test
dbt docs generate
```

## Project Structure

- `models/` - dbt models organized by layer (bronze, silver, gold)
- `tests/` - Data quality tests
- `macros/` - Custom dbt macros
- `docs/` - Documentation and diagrams

## Documentation

For detailed documentation, run `dbt docs generate` and serve with `dbt docs serve`.