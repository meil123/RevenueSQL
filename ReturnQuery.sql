SELECT customers.customerID, customers.customerName, region, SUM(numProducts) AS totalProductsOrdered, SUM(totalCost) AS totalRevenue
FROM orders INNER JOIN customers
ON orders.customerID = customers.customerID
GROUP BY customers.customerID, customerName, region
HAVING SUM(totalCost) > 150
ORDER BY customerID, SUM(numProducts) DESC