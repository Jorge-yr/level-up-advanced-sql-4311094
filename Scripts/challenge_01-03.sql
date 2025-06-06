SELECT cstm.firstName, cstm.lastName, cstm.customerId,
      COUNT(vt.salesId) AS salesCount, SUM(vt.salesAmount) AS totalSales
FROM customer cstm
LEFT JOIN sales vt
      ON cstm.customerId = vt.customerId
GROUP BY cstm.firstName, cstm.lastName, cstm.customerId
ORDER BY salesCount;
UNION
-- UNION with sales that have no associated customer
SELECT cstm.firstName, cstm.lastName, cstm.customerId,
      COUNT(vt.salesId) AS salesCount, SUM(vt.salesAmount) AS totalSales
FROM sales vt
LEFT JOIN customer cstm
      ON vt.customerId = cstm.customerId
WHERE cstm.customerId IS NULL;

-- This query retrieves the first name, last name, and customer ID of each customer,
-- along with the count of sales and total sales amount for each customer.
-- It also includes sales records that do not have an associated customer.