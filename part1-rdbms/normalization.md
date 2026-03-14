
## 1.1 Anomaly Analysis

## Insert Anomaly
In the flat table, we cannot insert a new product unless it is associated with an order.
Example:
If the company wants to add a new product such as:
product_id = P500  
product_name = Speaker
category = Electronics  
unit_price = 1800
There is no way to store this product unless an order_id and customer information are also provided. This leads to an insert anomaly.

## Update Anomaly
If the price of a product changes, it must be updated in multiple rows.
Example:
If product_id = P004 appears in multiple rows and the unit_price changes from 120 to 150, every row containing P004 must be updated.
If one row is missed, the database will contain inconsistent prices for the same product.

## Delete Anomaly
If the only order containing a specific product is deleted, the product information is also lost.
Example:
If order_id = ORD1027 is the only row containing product_id = P004 and the order is deleted, the database will lose all information about that product.

## Normalization Justification

Keeping all the information in one large table may look simple at first, but it can create many problems in managing the data. In the orders_flat.csv dataset, customer details, product details and sales representative information are repeated in many rows. For example, if a customer places multiple orders, their name, email, and city appear again and again in the table. This repetition increases storage and can lead to mistakes. One common problem is the update anomaly. If the price of a product changes, the update must be made in every row where that product appears. If one row is missed, the database will show different prices for the same product, which causes incorrect information. Another problem is the insert anomaly. In the current structure, a new product cannot be added to the database unless it is linked to an order. This means the company cannot store product information independently. A delete anomaly can also occur. If the only order containing a particular product is deleted, the database may also lose the product’s information such as its name and category. To solve these issues, the data can be divided into separate tables like Customers, Products, Orders and Sales Representatives. Each table stores only one type of information, and the tables are connected using keys. This process is called normalization. Using Third Normal Form (3NF) reduces data repetition, keeps the data consistent and makes the database easier to manage.