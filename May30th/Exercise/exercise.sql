CREATE DATABASE training_sql_db;
USE training_sql_db;

CREATE TABLE books
(
book_id INT PRIMARY KEY,
book_title VARCHAR(100),
category VARCHAR(50),
author VARCHAR(50),
price DECIMAL(10,2),
stock INT,
published_year INT
);

INSERT INTO books VALUES
(1, 'Python Basics', 'Programming', 'Ravi Kumar', 550, 30, 2021),
(2, 'Advanced SQL', 'Database', 'Priya Sharma', 750, 15, 2020),
(3, 'Data Engineering Guide', 'Data', 'Amit Verma', 1200, 10, 2023),
(4, 'Machine Learning Start', 'AI', 'Neha Reddy', 950, 8, 2022),
(5, 'Excel for Business', 'Business', 'Kiran Rao', 400, 50, 2019),
(6, 'Power BI Reports', 'Data', 'Sneha Patel', 850, 12, 2021),
(7, 'Java Fundamentals', 'Programming', 'Arjun Mehta', 600, 20, 2018),
(8, 'Cloud Basics', 'Cloud', 'Rahul Nair', 700, 18, 2022),
(9, 'SQL Interview Prep', 'Database', 'Farhan Ali', 500, 25, 2024),
(10, 'AI for Beginners', 'AI', 'Meera Singh', 650, 5, 2023);

-- Exercise 1: Display all books
SELECT * FROM books;

-- Exercise 2: Display book title, category and price
SELECT book_title, category, price
FROM books;

-- Exercise 3: Display all unique book categories
SELECT DISTINCT category
FROM books;

-- Exercise 4: Find Programming category books
SELECT *
FROM books
WHERE category = 'Programming';

-- Exercise 5: Find books priced above 700
SELECT *
FROM books
WHERE price > 700;

-- Exercise 6: Find books where stock is less than 15
SELECT *
FROM books
WHERE stock < 15;

-- Exercise 7: Find books from Programming, Database and AI categories
SELECT *
FROM books
WHERE category IN ('Programming', 'Database', 'AI');

-- Exercise 8: Find books priced between 500 and 900
SELECT *
FROM books
WHERE price BETWEEN 500 AND 900;

-- Exercise 9: Find books whose title contains SQL
SELECT *
FROM books
WHERE book_title LIKE '%SQL%';

-- Exercise 10: Find books whose title starts with Data
SELECT *
FROM books
WHERE book_title LIKE 'Data%';

-- Exercise 11: Sort books by price from highest to lowest
SELECT *
FROM books
ORDER BY price DESC;

-- Exercise 12: Sort books by category ascending and price descending
SELECT *
FROM books
ORDER BY category ASC, price DESC;

-- Exercise 13: Find total number of books
SELECT COUNT(*) AS total_books
FROM books;

-- Exercise 14: Find highest book price
SELECT MAX(price) AS highest_price
FROM books;

-- Exercise 15: Find lowest book price
SELECT MIN(price) AS lowest_price
FROM books;

-- Exercise 16: Find average book price
SELECT AVG(price) AS average_price
FROM books;

-- Exercise 17: Find total stock available
SELECT SUM(stock) AS total_stock
FROM books;

-- Exercise 18: Display number of books in each category
SELECT category, COUNT(*) AS number_of_books
FROM books
GROUP BY category;

-- Exercise 19: Display average price by category
SELECT category, AVG(price) AS average_price
FROM books
GROUP BY category;

-- Exercise 20: Display total stock by category
SELECT category, SUM(stock) AS total_stock
FROM books
GROUP BY category;

-- Exercise 21: Display categories having more than 1 book
SELECT category, COUNT(*) AS number_of_books
FROM books
GROUP BY category
HAVING COUNT(*) > 1;

-- Exercise 22: Display categories where average price is greater than 700
SELECT category, AVG(price) AS average_price
FROM books
GROUP BY category
HAVING AVG(price) > 700;

CREATE TABLE departments
(
department_id INT PRIMARY KEY,
department_name VARCHAR(50),
location VARCHAR(50)
);

CREATE TABLE employees
(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50),
department_id INT,
salary DECIMAL(10,2),
city VARCHAR(50),
manager_id INT
);

INSERT INTO departments VALUES
(10, 'IT', 'Hyderabad'),
(20, 'HR', 'Bangalore'),
(30, 'Finance', 'Mumbai'),
(40, 'Sales', 'Delhi'),
(50, 'Marketing', NULL);

INSERT INTO employees VALUES
(101, 'Rahul Sharma', 10, 75000, 'Hyderabad', 201),
(102, 'Priya Reddy', 10, 85000, 'Bangalore', 201),
(103, 'Amit Kumar', 20, 55000, NULL, 202),
(104, 'Sneha Patel', 30, 65000, 'Mumbai', 203),
(105, 'Arjun Verma', NULL, 60000, 'Chennai', 204),
(106, 'Neha Singh', 60, 50000, 'Delhi', NULL),
(107, 'Farhan Ali', 40, NULL, 'Hyderabad', 205),
(108, 'Meera Nair', 10, 90000, 'Pune', 201);

-- Exercise 23: Display employee name, salary, department name and location using INNER JOIN
SELECT e.employee_name, e.salary, d.department_name, d.location
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Exercise 24: Display all employees and their department details using LEFT JOIN
SELECT e.employee_name, e.salary, e.city, d.department_name, d.location
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- Exercise 25: Find employees who do not have a valid department
SELECT e.employee_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

-- Exercise 26: Display all departments and employees using RIGHT JOIN
SELECT e.employee_name, e.salary, d.department_name, d.location
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- Exercise 27: Find departments where no employees are assigned
SELECT d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
WHERE e.employee_id IS NULL;

-- Exercise 28: Find employees where salary is NULL
SELECT *
FROM employees
WHERE salary IS NULL;

-- Exercise 29: Find employees where city is NULL
SELECT *
FROM employees
WHERE city IS NULL;

-- Exercise 30: Find departments where location is NULL
SELECT *
FROM departments
WHERE location IS NULL;

-- Exercise 31: Display department-wise employee count
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Exercise 32: Display department-wise average salary
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Exercise 33: Display departments having more than 2 employees
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) > 2;

-- Exercise 34: Display department-wise highest salary
SELECT d.department_name, MAX(e.salary) AS highest_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

CREATE TABLE customers_new
(

customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
city VARCHAR(50),
membership_type VARCHAR(30)
);

CREATE TABLE payments
(
payment_id INT PRIMARY KEY,
customer_id INT,
amount DECIMAL(10,2),
payment_mode VARCHAR(30),
payment_status VARCHAR(30)
);

INSERT INTO customers_new VALUES
(1, 'Ramesh Gupta', 'Hyderabad', 'Gold'),
(2, 'Sana Khan', 'Bangalore', 'Silver'),
(3, 'John Mathew', 'Mumbai', 'Gold'),
(4, 'Ayesha Begum', 'Chennai', 'Bronze'),
(5, 'Vikram Rao', 'Delhi', 'Silver'),
(6, 'Divya Sharma', 'Pune', NULL);

INSERT INTO payments VALUES
(1001, 1, 15000, 'UPI', 'Success'),
(1002, 1, 8000, 'Card', 'Success'),
(1003, 2, 5000, 'Cash', 'Pending'),
(1004, 3, 22000, 'UPI', 'Success'),
(1005, 7, 12000, 'Card', 'Failed'),
(1006, NULL, 3000, 'Cash', 'Pending'),
(1007, 4, NULL, 'UPI', 'Success'),
(1008, 5, 7000, NULL, 'Success');

-- Exercise 35: Find customers who made payments using IN
SELECT *
FROM customers_new
WHERE customer_id IN (
    SELECT customer_id
    FROM payments
    WHERE customer_id IS NOT NULL
);

-- Exercise 36: Find customers who never made payments using NOT IN
SELECT *
FROM customers_new
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM payments
    WHERE customer_id IS NOT NULL
);

-- Exercise 37: Find payments greater than average payment amount
SELECT *
FROM payments
WHERE amount > (
    SELECT AVG(amount)
    FROM payments
);

-- Exercise 38: Find customer who made the highest payment
SELECT c.customer_name, p.amount
FROM customers_new c
JOIN payments p
ON c.customer_id = p.customer_id
WHERE p.amount = (
    SELECT MAX(amount)
    FROM payments
);

-- Exercise 39: Find Gold customers who made payments
SELECT *
FROM customers_new
WHERE membership_type = 'Gold'
AND customer_id IN (
    SELECT customer_id
    FROM payments
    WHERE customer_id IS NOT NULL
);

-- Exercise 40: Find customers whose total payment is greater than 10000
SELECT c.customer_name, SUM(p.amount) AS total_payment
FROM customers_new c
JOIN payments p
ON c.customer_id = p.customer_id
GROUP BY c.customer_name
HAVING SUM(p.amount) > 10000;

-- Exercise 41: Find payments where customer does not exist
SELECT p.payment_id
FROM payments p
LEFT JOIN customers_new c
ON p.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- Exercise 42: Find customers using EXISTS
SELECT *
FROM customers_new c
WHERE EXISTS (
    SELECT 1
    FROM payments p
    WHERE p.customer_id = c.customer_id
);

-- Exercise 43: Find customers using NOT EXISTS
SELECT *
FROM customers_new c
WHERE NOT EXISTS (
    SELECT 1
    FROM payments p
    WHERE p.customer_id = c.customer_id
);

-- Exercise 44: Find customers whose payment amount is greater than all payments made by customer 2
SELECT c.customer_name, p.amount
FROM customers_new c
JOIN payments p
ON c.customer_id = p.customer_id
WHERE p.amount > ALL (
    SELECT amount
    FROM payments
    WHERE customer_id = 2
);




