DROP DATABASE IF EXISTS retail;
CREATE DATABASE retail;
USE retail;

CREATE TABLE dim_date (
date_id INT PRIMARY KEY,
full_date DATE,
month INT,
year INT
);

CREATE TABLE dim_store (
store_id INT PRIMARY KEY,
store_name VARCHAR(100),
city VARCHAR(100)
);

CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);

-- Create Fact Table

CREATE TABLE fact_sales (
sale_id INT PRIMARY KEY,
date_id INT,
store_id INT,
product_id INT,
quantity INT,
total_amount DECIMAL(10,2),

FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert cleaned sample data into dimension tables

INSERT INTO dim_date VALUES
(1,'2025-04-05',4,2025),
(2,'2025-04-18',4,2025),
(3,'2025-05-07',5,2025),
(4,'2025-05-22',5,2025),
(5,'2025-06-11',6,2025);

INSERT INTO dim_store VALUES
(1,'Sunrise Retail Store','Hyderabad'),
(2,'Downtown Market','Chennai'),
(3,'City Square Outlet','Pune');

INSERT INTO dim_product VALUES
(1,'Samsung Galaxy S23','Electronics'),
(2,'Men Formal Blazer','Clothing'),
(3,'Premium Basmati Rice','Groceries');

-- Insert fact table sales data (10 rows)

INSERT INTO fact_sales VALUES
(1,1,1,1,2,140000),
(2,1,2,2,3,15000),
(3,2,1,3,6,7200),
(4,2,3,1,1,70000),
(5,3,2,3,4,4800),
(6,3,1,2,2,10000),
(7,4,3,3,5,6000),
(8,4,2,1,1,70000),
(9,5,1,2,3,15000),
(10,5,3,3,4,4800);