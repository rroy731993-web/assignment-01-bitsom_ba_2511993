DROP DATABASE IF EXISTS schema_design;

SHOW DATABASES;

CREATE DATABASE  IF NOT EXISTS schema_design;

USE schema_design;
CREATE TABLE customers(
customer_id VARCHAR(10) PRIMARY KEY,
customer_name VARCHAR(100),
customer_email VARCHAR(150),
customer_city VARCHAR(100)
);

CREATE TABLE products(
product_id VARCHAR(10) PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(100),
unit_price DECIMAL(10,2)
);

CREATE TABLE sales_reps(
sales_rep_id VARCHAR(10) PRIMARY KEY,
sales_rep_name VARCHAR(100),
sales_rep_email VARCHAR(150),
office_address VARCHAR(200)
);

CREATE TABLE orders(
order_id VARCHAR(10) PRIMARY KEY,
customer_id VARCHAR(10),
sales_rep_id VARCHAR(10),
order_date DATE
);

CREATE TABLE order_items(
order_item_id INTEGER PRIMARY KEY,
order_id VARCHAR(10),
product_id VARCHAR(10),
quantity INT
);

INSERT INTO customers VALUES
('C101','Rahul Sharma','rahul@email.com','Mumbai'),
('C102','Priya Patel','priya@email.com','Delhi'),
('C103','Amit Kumar','amit@email.com','Bangalore'),
('C104','Sneha Gupta','sneha@email.com','Mumbai'),
('C105','Arjun Singh','arjun@email.com','Pune');

INSERT INTO products VALUES
('P001','Laptop','Electronics',60000),
('P002','T-Shirt','Clothing',800),
('P003','Rice Bag','Groceries',1200),
('P004','Smartphone','Electronics',30000),
('P005','Headphones','Electronics',2000);

INSERT INTO sales_reps VALUES
('SR0101','Rohit Mehta','rohit@company.com','Mumbai Office'),
('SR0102','Anita Sharma','anita@company.com','Delhi Office'),
('SR01033','Vikas Gupta','vikas@company.com','Bangalore Office'),
('SR0104','Neha Jain','neha@company.com','Mumbai Office'),
('SR0105','Aman Verma','aman@company.com','Delhi Office');

INSERT INTO orders VALUES
('ORD001','C101','SR0101','2024-01-01'),
('ORD002','C102','SR0102','2024-01-02'),
('ORD003','C103','SR0103','2024-01-03'),
('ORD004','C104','SR0104','2024-01-04'),
('ORD005','C105','SR0105','2024-01-05');

INSERT INTO order_items VALUES
(1,'ORD001','P001',1),
(2,'ORD002','P002',3),
(3,'ORD003','P003',2),
(4,'ORD004','P004',1),
(5,'ORD005','P005',4);