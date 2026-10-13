Customer Revenue Analysis (using MySQL & SQL WorkBench)

Overview
This project analyzes customer transactional data to evaluate revenue trends, product purchasing volume, and customer retention metrics. By querying relational data across customer geographical regions, the analysis identifies high-value accounts (`totalCost > $150`) and highlights potential churn risks to inform targeted marketing strategies.

---

* **Database Engine:** MySQL Workbench 8.0 / 26.7
* **Key SQL Features Used:** `INNER JOIN`, `GROUP BY`, `HAVING`, Aggregation Functions (`SUM`, `COUNT`), `FOREIGN KEY` Constraints, and Data Definition Queries (`CREATE TABLE`, `DROP TABLE`).

Entity Relationship & Schema Design
The project utilizes two relational tables connected via a Primary Key-Foreign Key relationship:
1. `customers` Table: Tracks unique customer records (`customerID`), names (`customerName`), and regional demographics (`region`).
2. `orders` Table: Captures individual order transactions (`orderID`, `orderDate`, `numProducts`, `totalCost`, `orderStatus`), linking each transaction back to `customers.customerID`.
