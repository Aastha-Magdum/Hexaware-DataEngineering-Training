CREATE DATABASE retail_db;
USE retail_db;

CREATE TABLE Customers(
customer_id INT ,
customer_name VARCHAR(100),
city VARCHAR(50));

INSERT INTO Customers
VALUES
(1,'Rahul', 'Hyderabad'),
(2, 'Priya', 'Banglore'),
(3, 'Amit', 'Mumbai');

SELECT * FROM Customers;
SET SQL_SAFE_UPDATES=0;
UPDATE Customers
SET city='Chennai'
WHERE customer_id=1;

DELETE FROM Customers 
WHERE city='Banglore';
SET SQL_SAFE_UPDATES=1;

