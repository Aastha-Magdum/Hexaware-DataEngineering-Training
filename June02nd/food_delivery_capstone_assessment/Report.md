# Food Delivery Analytics Database

## Database Design

For this project, I created a MongoDB database for a food delivery platform. The purpose of this database is to store customer information, restaurant details, order records, delivery partner information, payment details, and customer ratings in an organized manner.

## Collections Used

The database contains four collections:

- Customers
- Restaurants
- Orders
- Delivery Partners

## Collection Relationships

- Customers and Orders are connected through Customer ID.
- Restaurants and Orders are connected through Restaurant ID.
- Delivery Partners and Orders are connected through Partner ID.
- Payment and rating details are stored within the Orders collection.

## Key Insights from Reports

- Revenue reports show earnings generated through different payment methods.
- Order status reports help track delivered, pending, and cancelled orders.
- Customer reports identify active and high-spending customers.
- Restaurant reports help evaluate business performance and ratings.
- Delivery reports help analyze delivery efficiency and delays.
- Payment reports help monitor successful and failed transactions.

## Conclusion

This project demonstrates how MongoDB can be used to manage and analyze food delivery business data efficiently using queries, aggregations, updates, and lookup operations.
