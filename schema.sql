/*
Schema: Flooring Products Sales Database

Purpose:
This schema represents a simplified transactional sales system for a flooring retail business.
It is designed for analytics use cases such as revenue reporting, customer analysis,
product performance, and returns impact.

Overview of Tables:
- customers: Stores customer master data.
- products: Stores product catalog information.
- orders: Stores order-level transactional data.
- order_items: Stores line-item level sales details for each order.

Design Notes:
- The schema follows a normalized structure.
- Primary and foreign keys enforce relational integrity.
- Order-level and item-level data are separated to support accurate aggregation.
- Discounts are stored at the order item level to allow flexible pricing analysis.
- Order status enables separation of delivered vs returned orders for business metrics.

This schema is intended for SQL practice and realistic business analytics scenarios.
*/

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  order_date DATE,
  customer_id INT,
  country VARCHAR(50),
  channel VARCHAR(20),
  status VARCHAR(20)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50)
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  units INT,
  unit_price DECIMAL(10,2),
  discount DECIMAL(4,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
