# Sales & Profitability Analysis

Portfolio project using synthetic sales transactions (1,000 rows, 2025). No employer or confidential data is included.

## Objective
Analyze revenue, profit, margins, regions, categories and top products using Python, MySQL and Power BI.

## Run Python
Install Python, then run `pip install -r requirements.txt` and `python python/analyze.py` from the repository root. The script validates the dataset and produces data/cleaned_sales.csv.

## Run MySQL
Open sql/analysis.sql in MySQL Workbench and execute the database/table creation. Import data/sales.csv into sales using Table Data Import Wizard; map the eight columns to the existing table. Verify 1,000 rows and run the analysis queries. A local MySQL Server is required.

## Power BI
Import data/cleaned_sales.csv after running Python. Follow powerbi/dashboard.md for measures and visual layout. No .pbix file is included; build and save the report in Power BI Desktop.

## Repository
- data/sales.csv: synthetic source data
- python/analyze.py: validation, transformation and summaries
- sql/analysis.sql: schema and KPI queries
- powerbi/dashboard.md: dashboard implementation guide
- docs/data_dictionary.md: field definitions

## KPI definitions
Revenue = quantity × unit price; cost = quantity × unit cost; profit = revenue − cost; margin % = 100 × total profit / total revenue. Use ratio of totals, not average row margins.
