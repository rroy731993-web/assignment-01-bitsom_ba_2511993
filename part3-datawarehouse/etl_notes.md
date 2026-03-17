
## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The raw dataset contained dates written in different formats such as DD/MM/YYYY, MM-DD-YYYY and sometimes text-based formats. This creates problems when performing time-based analysis such as monthly sales trends because the database may interpret the dates incorrectly.

Resolution: All dates were converted into a single standardized format (YYYY-MM-DD) before loading the data into the warehouse. A separate `dim_date` dimension table was also created to store structured date attributes such as month and year, which makes reporting and aggregation easier.

### Decision 2 — Handling Missing Values
Problem: Some rows in the raw transactional dataset had NULL or missing values in important columns such as product category or store information. These missing values can cause incorrect results in analytical queries and reporting.

Resolution: During the transformation step, records with critical missing information were either corrected using known values or removed if the data could not be reliably recovered. This ensured that only clean and consistent data was loaded into the data warehouse.

### Decision 3 — Standardizing Category Names
Problem: Product categories in the raw dataset were written inconsistently, for example "electronics", "Electronics" and "ELECTRONICS". If left unchanged, this would cause incorrect grouping in reports because the system would treat them as different categories.

Resolution: All category names were standardized to a consistent format using proper capitalization (Electronics, Clothing, Groceries) before loading them into the `dim_product` table. This ensures accurate aggregation and reporting across product categories.
