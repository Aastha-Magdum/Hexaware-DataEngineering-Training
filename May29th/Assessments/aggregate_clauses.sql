CREATE DATABASE retail;
use retail;
CREATE TABLE products
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier_city VARCHAR(30)
);
INSERT INTO products VALUES
(1,'Laptop','Electronics',55000,10,'Hyderabad'),
(2,'Mobile','Electronics',25000,25,'Bangalore'),
(3,'Printer','Electronics',18000,8,'Pune'),
(4,'Office Chair','Furniture',7500,15,'Mumbai'),
(5,'Desk','Furniture',12000,5,'Chennai'),
(6,'Notebook','Stationery',80,200,'Hyderabad'),
(7,'Pen','Stationery',20,500,'Delhi'),
(8,'Water Bottle','Accessories',500,50,'Bangalore');


SELECT product_name,price from products;

SELECT DISTINCT category FROM products;
SELECT * FROM products WHERE category='Electronics';
SELECT * FROM products WHERE price>25000;
SELECT * FROM products WHERE supplier_city="Hyderabad" OR 
supplier_city="Banglore";

SELECT * FROM products 
WHERE NOT category='Electronics';

SELECT * FROM products
WHERE supplier_city IN ('Hyderabad','Delhi');

SELECT * FROM products
WHERE price BETWEEN 80 AND 25000;

SELECT * FROM products
WHERE product_name LIKE 'P%';

SELECT * FROM products
WHERE product_name LIKE '%k';

SELECT * FROM products
WHERE product_name LIKE '%top%';
SELECT product_name AS Product,
stock_quantity AS Stock from products;

SELECT * FROM products
ORDER BY product_name DESC;

SELECT COUNT(*) FROM products WHERE cateogory='Electronics';

SELECT SUM(price) AS TOTALPRICE,
COUNT(*) AS COUNT ,
AVG(price) AS AVERAGEPRICE,
MIN(price) AS MINPRICE,
MAX(price) AS MAXPRICE
FROM products;

SELECT category,COUNT(*) AS ProductCount
FROM products
GROUP BY category;






