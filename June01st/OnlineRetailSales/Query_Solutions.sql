-- 1
SELECT * FROM customers;

-- 2
SELECT customer_name,city,membership_type FROM customers;

-- 3
SELECT * FROM products ORDER BY price DESC;

-- 4
SELECT * FROM customers WHERE city="Hyderabad";

-- 5
SELECT * FROM customers WHERE membership_type="Gold";

-- 6
SELECT * FROM products WHERE price BETWEEN 500 AND 5000;

-- 7
SELECT * FROM products WHERE category IN ('Electronics', 'Fashion');

-- 8
SELECT * FROM orders WHERE order_date > '2026-01-01';

-- 9
SELECT * FROM payments WHERE payment_mode = 'UPI';

-- 10
SELECT * FROM deliveries WHERE delivery_status = 'Pending';

-- 11
SELECT COUNT(*) AS total_customers FROM customers;

-- 12
SELECT COUNT(*) AS total_orders FROM orders;

-- 13
SELECT COUNT(*) AS total_products FROM products;

-- 14
SELECT SUM(amount) AS total_revenue FROM payments
WHERE payment_status='Success';

-- 15
SELECT AVG(amount) AS average_payment_amount FROM payments;

-- 16
SELECT MAX(amount) AS highest_amount FROM payments;

-- 17
SELECT MIN(amount) AS lowest_amount FROM payments;

-- 18
SELECT city, COUNT(*) AS customer_count FROM customers
GROUP BY city;

-- 19
SELECT category, COUNT(*) AS product_count FROM products 
GROUP BY category;

-- 20
SELECT order_status, COUNT(*) AS order_count FROM orders
GROUP BY order_status;

-- 21
SELECT c.customer_name, o.order_id, o.order_date 
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id;

-- 22
SELECT oi.order_id, p.product_name, oi.quantity, p.price
FROM order_items oi
JOIN products p ON oi.product_id=p.product_id;

-- 23
SELECT c.customer_name,p.product_name,oi.quantity,o.order_date
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN order_items oi ON o.order_id=oi.order_id
JOIN products p ON oi.product_id=p.product_id;

-- 24
SELECT o.order_id,p.payment_mode,p.payment_status,p.amount
FROM orders o
JOIN payments p ON o.order_id=p.order_id;

-- 25
SELECT o.order_id,d.delivery_partner,d.delivery_status
FROM orders o
JOIN deliveries d ON o.order_id=d.order_id;

-- 26
SELECT 
c.customer_name,
c.city,
o.order_id,
o.order_date,
p.product_name,
p.category,
oi.quantity,
p.price,
pay.payment_status,
d.delivery_status
FROM customers c
JOIN orders o on c.customer_id=o.customer_id
JOIN order_items oi ON o.order_id=oi.order_id
JOIN products p ON oi.product_id=p.product_id
LEFT JOIN payments pay ON o.order_id=pay.order_id
LEFT JOIN deliveries d ON o.order_id=d.order_id;

-- 27
SELECT c.city,SUM(pay.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN payments pay ON o.order_id=pay.order_id
WHERE pay.payment_status='Success'
GROUP BY c.city;

-- 28
SELECT c.customer_name, SUM(pay.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments pay ON o.order_id = pay.order_id
WHERE pay.payment_status = 'Success'
GROUP BY c.customer_name;

-- 29
SELECT p.product_name,SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi ON p.product_id=oi.product_id
GROUP BY p.product_name;

-- 30
SELECT p.category, SUM(oi.quantity*p.price) AS category_revenue
FROM products p
JOIN order_items oi ON p.product_id=oi.product_id
GROUP BY p.category;

-- 31
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_name;

-- 32
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) >1;

-- 33
SELECT p.category, SUM(oi.quantity * p.price) AS revenue
FROM products p
JOIN order_items oi ON p.product_id=oi.product_id
GROUP BY p.category
HAVING SUM(oi.quantity*p.price)>10000;

-- 34
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) > 2;

SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id=oi.product_id
GROUP BY p.product_name
HAVING SUM(oi.quantity)>3;

-- 36
SELECT * FROM customers
WHERE customer_id IN (
   SELECT customer_id FROM orders
   );
   
-- 37
SELECT * FROM customers
WHERE customer_id NOT IN (
SELECT customer_id FROM orders
);

-- 38
SELECT * FROM products 
WHERE product_id NOT IN (
SELECT product_id FROM order_items
);

-- 39
SELECT * FROM orders
WHERE order_id IN (
SELECT order_id FROM payments
WHERE amount> (SELECT AVG(amount) FROM payments));

-- 40
SELECT c.customer_name, p.amount
FROM customers c
JOIN orders o ON c.customer_id-o.customer_id
JOIN payments p ON o.order_id=p.order_id
WHERE p.amount =( 
   SELECT MAX(amount) FROM payments
   );

-- 41
SELECT * FROM products
WHERE price> (SELECT AVG(price) FROM products
);

-- 42
SELECT DISTINCT c.customer_name
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN order_items oi ON o.order_id=oi.order_id
JOIN products p ON oi.product_id=p.product_id
WHERE p.category='Electronics';

-- 43
SELECT * FROM orders
WHERE order_id IN (
  SELECT order_id FROM payments
  WHERE payment_status='Success'
  );
  
  -- 44
SELECT * FROM orders
  WHERE order_id IN (
  SELECT order_id FROM deliveries
  WHERE delivery_status <> 'Delivered'
  );
  
-- 45
SELECT c.customer_name,SUM(p.amount) AS total_spending
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN payments p ON o.order_id=p.order_id
WHERE p.payment_status='Success'
GROUP BY c.customer_name
HAVING SUM(p.amount)> (
SELECT AVG(customer_total) FROM
  ( SELECT SUM(p2.amount) AS customer_total
    FROM customers c2
    JOIN orders o2 ON c2.customer_id=o2.customer_id
    JOIN payments p2 ON o2.order_id=p2.order_id
    WHERE p2.payment_status='Success'
    GROUP BY c2.customer_id
 ) AS spending_table
);

-- 46
SELECT o.*
FROM orders o
LEFT JOIN payments p ON o.order_id=p.order_id
WHERE p.payment_id IS NULL;

-- 47
SELECT o.*
FROM orders o
LEFT JOIN deliveries d ON o.order_id=d.order_id
WHERE d.delivery_id IS NULL;

-- 48
SELECT * FROM payments
WHERE amount IS NULL OR amount =0;

-- 49
SELECT o.order_id, o.order_status, p.payment_status, p.amount
FROM orders o
JOIN payments p ON o.order_id=p.order_id
WHERE o.order_status='Cancelled'
AND p.payment_status='Success';

-- 50
SELECT o.order_id, o.order_status, p.payment_status
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE o.order_status = 'Delivered'
AND p.payment_status = 'Failed';

-- 51
SELECT oi.*
FROM order_items oi
LEFT JOIN products p ON oi.product_id=p.product_id
WHERE p.product_id IS NULL;

-- 52
SELECT o.*
FROM orders o
LEFT JOIN customers c ON o.customer_id=c.customer_id
WHERE c.customer_id IS NULL;







