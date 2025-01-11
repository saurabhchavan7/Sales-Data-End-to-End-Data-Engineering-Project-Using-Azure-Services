# Azure-Based Sales Data Engineering Pipeline

## Project Overview
This project focuses on building a scalable, cloud-native data engineering pipeline using Microsoft Azure services. The goal was to automate data ingestion, transformation, storage, and reporting for a retail sales dataset while ensuring data governance and security best practices.

## Architecture Diagram
![Architecture Diagram](./architecture/sales_etl.pdf)

## Key Features
- **Scalable Data Pipeline:** Engineered an end-to-end Azure Data Engineering Pipeline using Azure Data Factory, Databricks, and Data Lake, processing over **1 million records**.
- **Incremental Data Loading:** Implemented Change Data Capture (CDC) with **Azure SQL Stored Procedures**, reducing data load times by **40%**.
- **Dimensional Modeling:** Designed a **star schema** using **Delta Lake** with **5+ fact and dimension tables** for optimized query performance.
- **Automation:** Automated data transformations using **PySpark** and **Databricks Workflows**, reducing manual intervention by **90%**.
- **Data Governance:** Enhanced governance using **Unity Catalog** for schema enforcement, data lineage, and role-based access control (RBAC).
- **Visualization:** Integrated **Power BI** for real-time data visualization and reporting with **Direct Query** and **Import Mode** for optimized analytics.

## Tools and Technologies Used
- **Data Ingestion:** Azure Data Factory
- **Data Storage:** Azure Data Lake Storage Gen2
- **Data Transformation:** Azure Databricks, PySpark
- **Data Modeling:** Delta Lake, Star Schema
- **Database Management:** Azure SQL Database, Stored Procedures
- **Data Governance:** Unity Catalog
- **Visualization:** Power BI

## Project Objectives
- **Automate** data ingestion, transformation, and reporting.
- **Minimize manual intervention** using Azure Data Factory and Databricks automation.
- **Ensure Data Quality** with schema enforcement and data validation.
- **Enhance Data Governance** with Unity Catalog for controlled data access and compliance.
- **Provide Actionable Insights** using Power BI dashboards.

---

## Project Steps

### Step 1: Data Source Setup
- Created **Azure SQL Database** to store sales data from CSV files hosted on a **GitHub repository**.
- Configured **firewall rules** and **managed identity** for secure access.

### Step 2: Initial Data Ingestion
- Configured **Azure Data Factory (ADF)** pipelines to ingest data from GitHub into the Azure SQL Database.
- **Linked Services** were set up for seamless integration between Azure SQL, Data Lake, and GitHub.
- The ingested data was stored in the **Bronze Layer** of **Azure Data Lake Storage Gen2**.

### Step 3: Incremental Data Loading
- Implemented **Change Data Capture (CDC)** with **watermark tables** and **stored procedures**.
- Designed an **incremental pipeline** in ADF for tracking and loading only new or modified records.
- Achieved a **40% reduction** in data load times.

### Step 4: Data Storage and Transformation
- **Data Formats Used:** Parquet for the **Bronze** and **Silver Layers** and **Delta Format** for the **Gold Layer**.
- **Transformation Steps:**
  - Cleansing and standardizing data using **PySpark** in **Azure Databricks**.
  - Removal of duplicates and handling missing values.
- Achieved **90% reduction** in manual intervention with automated workflows.

### Step 5: Dimensional Modeling and Star Schema
- **Star Schema Design:**
  - **Fact Tables:** Sales Transactions
  - **Dimension Tables:** Date, Product, Branch, Dealer
- **Delta Lake** was used for optimized querying and ACID transactions.
- **Surrogate Keys** were generated using Databricks to maintain data consistency.

### Step 6: Data Governance with Unity Catalog
- Configured **Unity Catalog** for:
  - **Schema Enforcement:** Prevented schema drift and enforced data validation.
  - **Role-Based Access Control (RBAC):** Restricted access based on job roles.
  - **Data Lineage Tracking:** Monitored data movement and transformation history.
- Ensured **100% compliance** with data governance policies.

### Step 7: Visualization with Power BI
- Integrated **Power BI** using **Databricks Partner Connect**.
- Created interactive dashboards showcasing:
  - **Sales Performance:** Bar charts and line graphs.
  - **Key Metrics:** Total revenue, units sold, profit margins.
- **Row-Level Security (RLS)** and **Direct Query Mode** were implemented for real-time reporting.

---

## Key Achievements
- Built a scalable Azure data pipeline handling **1 million+ records**.
- Reduced data load times by **40%** using CDC and watermark tables.
- Designed a **5+ table star schema** for optimized query performance.
- Automated **90%** of data preparation tasks with PySpark and Databricks Workflows.
- Enhanced governance with **Unity Catalog** ensuring **100% compliance**.

## Challenges and Solutions
- **Data Volume Management:** Implemented **parallel data loading** in ADF.
- **Data Quality:** Enforced schema validation using **Unity Catalog**.
- **Security:** **Role-Based Access Control (RBAC)** was implemented with Azure AD.
- **Performance:** Used **Delta Lake** for faster queries and optimized data storage.

## Real-World Impact
- **Faster Insights:** Business stakeholders can access real-time sales data instantly.
- **Efficiency:** Reduced manual intervention and optimized data refresh rates.
- **Scalability:** The architecture can handle **large datasets** with minimal performance degradation.

---



