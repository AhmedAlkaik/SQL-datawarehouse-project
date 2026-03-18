# Data Warehouse and Analytics Project

## Project Overview

A comprehensive data warehousing solution developed to process, model, and analyze raw sales data. This repository serves as a practical application of core data engineering principles, highlighting industry-standard methodologies for building scalable data pipelines. 

Key technical components of this project include:
* **Data Architecture:** Implementation of a modern Medallion Architecture (Bronze, Silver, and Gold layers).
* **ETL Pipelines:** Extraction, transformation, and loading of raw data from disparate source systems into a centralized warehouse.
* **Data Modeling:** Development of optimized fact and dimension tables utilizing a Star Schema framework.
* **Analytics & Reporting:** Construction of SQL-based queries to generate actionable business intelligence insights.

---

## Tools & Technologies Utilized

The following tools and platforms were employed during the development of this project:

* **Microsoft SQL Server:** Core database engine utilized for hosting the data warehouse.
* **SQL Server Management Studio (SSMS):** Primary GUI used for database management, query execution, and object creation.
* **Git & GitHub:** Version control system utilized to manage, document, and track code iterations.
* **draw.io:** Diagramming tool used for mapping data flows, architecture blueprints, and entity-relationship diagrams (ERDs).

---

## Data Architecture

The data architecture is structured around the Medallion framework, ensuring progressive data refinement and optimal query performance. The flow is organized into three distinct layers:

1.  **Bronze Layer (Raw Data):** Raw source data (originating from CRM and ERP CSV files) is ingested directly into the SQL Server database. No transformations are applied at this stage, preserving the original data state.
2.  **Silver Layer (Cleansed Data):** Comprehensive data cleansing, standardization, and normalization processes are executed. This layer resolves data anomalies and prepares a consistent, standardized dataset.
3.  **Gold Layer (Business-Ready Data):** The cleansed data is modeled into a Star Schema. Fact and dimension tables are constructed via optimized views to support BI reporting and analytical use cases.

---

## Repository Structure

The project files are systematically organized to ensure maintainability and ease of navigation:

```text
├── docs/                   # Project documentation and architecture details
│   ├── data_architecture.drawio  # Medallion architecture blueprint
│   ├── data_catalog.md     # Data dictionary and metadata definitions
│   └── star_schema.drawio  # Visual representation of the Gold layer data models
├── scripts/                # SQL scripts for ETL and data transformations
│   ├── bronze/             # DDL and ingestion scripts for the raw data layer
│   ├── silver/             # Data cleansing and transformation procedures
│   └── gold/               # View creation scripts for the analytical models
├── tests/                  # Validation and quality assurance scripts
│   └── quality_checks.sql  # Referential integrity and uniqueness validations
├── README.md               # Primary project documentation
└── LICENSE                 # Repository licensing information
```

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute this repository with proper attribution.

---

## About the Developer

I am an Industrial Engineering student at E-JUST and a scholar in the Digital Egypt Pioneers Initiative (DEPI), specializing in AI and Data Engineering. My work focuses on designing efficient, scalable data pipelines and applying formal engineering methodologies to solve complex data challenges.

**Connect with me:**
* [LinkedIn](https://www.linkedin.com/in/ahmed-hassan-2b8224223)
* [GitHub](https://github.com/AhmedAlkaik)
