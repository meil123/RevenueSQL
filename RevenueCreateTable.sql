CREATE DATABASE IF NOT EXISTS revenue_retention_DB;
USE revenue_retention_DB;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customerID INT PRIMARY KEY, customerName VARCHAR(50),region VARCHAR(50)
);

CREATE TABLE orders(
    orderID INT PRIMARY KEY, customerID INT,orderDate DATE, numProducts INT, totalCost DECIMAL, orderStatus VARCHAR(50), FOREIGN KEY (customerID) REFERENCES customers(customerID)
);

INSERT INTO CUSTOMERS VALUES (1, 'James Smith', 'Europe'), (2, 'Alan Joker', 'North America'), (3, 'Alice Yu', 'Asia');
INSERT INTO ORDERS VALUES (1, 1, '2026-04-09', 2, 102.25, "Completed"), (2, 2, '2026-08-15', 5, 97.55, "Completed"), (3, 3, '2026-08-20', 1, 200.00, "Completed"),(4, 2, '2026-09-10', 3, 99.82, "Completed"), (5, 2, '2026-11-20', 5, 97.55, "Completed"),(6, 3, '2026-12-09', 1, 52.49, "Cancelled");