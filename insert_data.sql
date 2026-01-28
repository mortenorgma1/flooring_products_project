/*
Insert Data: Flooring Products Sales Database

Purpose:
This script populates the database with realistic sample data to support SQL analytics
and business reporting exercises.

Data Characteristics:
- Multiple customers across different countries.
- Orders spanning several days.
- Mix of sales channels (Store, Website, Partner).
- Products across flooring categories.
- Combination of delivered and returned orders.
- Discounts applied at line-item level to simulate promotions.

Business Logic Reflected:
- Delivered orders contribute to net revenue.
- Returned orders are used to analyze revenue loss and return rates.
- Order items allow calculation of units sold, revenue, and average order value.

The data volume is intentionally small but structured to mirror real-world reporting scenarios,
making it suitable for learning, testing, and portfolio demonstration purposes.
*/

INSERT INTO products VALUES
(101,'Oak Parquet 14mm','Flooring'),
(102,'Laminate Grey 8mm','Flooring'),
(103,'Vinyl Click 5mm','Flooring'),
(201,'Underlay Foam 2mm','Accessories'),
(202,'Skirting White 2.4m','Accessories');

INSERT INTO orders VALUES
(2001,'2026-01-02',1,'Estonia','Website','Delivered'),
(2002,'2026-01-02',2,'Spain','Website','Delivered'),
(2003,'2026-01-03',3,'Finland','Store','Delivered'),
(2004,'2026-01-03',4,'Estonia','Website','Delivered'),
(2005,'2026-01-04',5,'Latvia','Partner','Delivered'),
(2006,'2026-01-04',6,'Estonia','Website','Delivered'),
(2007,'2026-01-05',7,'Spain','Website','Delivered'),
(2008,'2026-01-05',8,'Estonia','Store','Delivered'),
(2009,'2026-01-06',9,'Lithuania','Partner','Delivered'),
(2010,'2026-01-06',10,'Finland','Website','Delivered'),
(2011,'2026-01-07',11,'Estonia','Website','Delivered'),
(2012,'2026-01-07',12,'Latvia','Store','Delivered'),
(2013,'2026-01-08',13,'Spain','Partner','Delivered'),
(2014,'2026-01-08',14,'Estonia','Website','Delivered'),
(2015,'2026-01-09',15,'Finland','Website','Delivered'),
(2016,'2026-01-09',16,'Estonia','Store','Delivered'),
(2017,'2026-01-10',17,'Latvia','Website','Delivered'),
(2018,'2026-01-10',18,'Estonia','Partner','Delivered'),
(2019,'2026-01-11',19,'Spain','Website','Delivered'),
(2020,'2026-01-11',20,'Estonia','Website','Returned');

INSERT INTO order_items VALUES
(1,2001,101,12,39.90,0.05),
(2,2002,102,20,14.50,0.10),
(3,2003,103,15,21.00,0.00),
(4,2004,201,30,2.90,0.00),
(5,2005,101,8,39.90,0.00),
(6,2006,202,25,4.50,0.05),
(7,2007,103,10,21.00,0.15),
(8,2008,102,18,14.50,0.00),
(9,2009,101,6,39.90,0.10),
(10,2010,201,40,2.90,0.00),
(11,2011,103,22,21.00,0.05),
(12,2012,202,15,4.50,0.00),
(13,2013,101,9,39.90,0.05),
(14,2014,102,25,14.50,0.00),
(15,2015,202,18,4.50,0.10),
(16,2016,103,14,21.00,0.00),
(17,2017,201,50,2.90,0.05),
(18,2018,101,7,39.90,0.00),
(19,2019,102,30,14.50,0.15),
(20,2020,103,16,21.00,0.00);
