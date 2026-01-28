# Sales & Order Analytics – SQL Project

## Project Overview
This project demonstrates SQL-based analysis on a transactional sales database for a flooring retail business.  
The database represents real-world order, product, customer, and revenue data across multiple countries and sales channels.

The goal is to answer common business questions related to:
- Revenue performance
- Order volume
- Returns impact
- Customer and product analysis

All analysis is performed using PostgreSQL.

---

## Database Schema

### customers
Contains customer-level information.

| Column | Type | Description |
|------|----|------------|
| customer_id | INTEGER (PK) | Unique customer identifier |
| customer_name | VARCHAR | Customer name |
| country | VARCHAR | Customer country |

---

### orders
Contains order-level data.

| Column | Type | Description |
|------|----|------------|
| order_id | INTEGER (PK) | Unique order identifier |
| customer_id | INTEGER (FK) | References customers |
| order_date | DATE | Order date |
| channel | VARCHAR | Sales channel |
| status | VARCHAR | Order status (Delivered, Returned) |
| country | VARCHAR | Order country |

---

### products
Contains product master data.

| Column | Type | Description |
|------|----|------------|
| product_id | VARCHAR (PK) | Product identifier |
| product_name | VARCHAR | Product name |
| category | VARCHAR | Product category |

---

### order_items
Contains line-item details for each order.

| Column | Type | Description |
|------|----|------------|
| order_item_id | INTEGER (PK) | Line item identifier |
| order_id | INTEGER (FK) | References orders |
| product_id | VARCHAR (FK) | References products |
| units | INTEGER | Quantity sold |
| unit_price | NUMERIC | Price per unit |
| discount | NUMERIC | Discount rate |

---

## Business Logic

- Gross revenue = units × unit_price
- Net revenue = units × unit_price × (1 − discount)
- Delivered revenue includes only orders with status = 'Delivered'
- Returned revenue includes only orders with status = 'Returned'
- Average order value = total delivered revenue ÷ number of delivered orders

---

## SQL Analysis Files

Each SQL file answers a specific business question.

### 01_customer_orders.sql
Counts the number of delivered orders per customer.

Key concepts:
- GROUP BY
- COUNT(DISTINCT)
- Filtering by status

---

### 02_daily_order_volume.sql
Shows daily order volume, total units sold, and net revenue.

Key concepts:
- Date aggregation
- Multiple KPIs per day

---

### 03_daily_revenue_trend.sql
Analyzes daily delivered revenue over time.

Key concepts:
- Time series analysis
- Revenue aggregation

---

### 04_highest_average_order_value.sql
Calculates average order value by sales channel.

Key concepts:
- Derived metrics
- Channel-level aggregation

---

### 05_return_impact.sql
Calculates revenue lost due to returned orders and the percentage impact per country.

Key concepts:
- Conditional aggregation
- Business KPI calculations
- Percentage metrics

---

### 06_returned_orders_rate.sql
Calculates return rate per country.

Key concepts:
- CASE statements
- Return rate calculations

---

### 07_revenue_by_country.sql
Shows total delivered net revenue per country.

Key concepts:
- Geographic aggregation
- Revenue comparison

---

### 08_top3_products.sql
Identifies the top 3 products by delivered net revenue.

Key concepts:
- Product-level aggregation
- ORDER BY and LIMIT

---

### 09_top5_customers.sql
Identifies the top 5 customers by delivered net revenue.

Key concepts:
- Customer segmentation
- Revenue ranking

---

## Skills Demonstrated

- Writing production-ready SQL
- Complex joins across multiple tables
- Business metric calculation
- Handling discounts and returns
- Aggregation and ranking logic
- Translating business questions into data queries

---

## Tools Used

- PostgreSQL
- SQL (joins, aggregates, filtering, ordering)

---

## Notes

This project is designed to reflect real tasks assigned to junior-to-mid level data analysts and business analysts.  
All queries are written for clarity, correctness, and real-world applicability.

---

## Author

Morten Orgma  
SQL • Data Analytics • Business Intelligence
