SELECT emp.employeeId, emp.firstName, emp.lastName, emp.title,
      COUNT(vt.salesId) AS SalesCount,
      MIN(vt.salesAmount) AS MinSaleAmount,
      MAX(vt.salesAmount) AS MaxSaleAmount
FROM sales vt
INNER JOIN employee emp
      ON emp.employeeId = vt.employeeId
WHERE vt.soldDate >= date((SELECT MAX(soldDate) FROM sales), 'start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
HAVING COUNT(vt.salesId) > 5
ORDER BY salesCount DESC;

-- This query retrieves the employee ID, first name, last name, and title of each employee who has made sales