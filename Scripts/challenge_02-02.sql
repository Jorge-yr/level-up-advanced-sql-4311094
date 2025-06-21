SELECT emp.employeeId, emp.firstName, emp.lastName, emp.title,
      MIN(vt.salesAmount) AS MinSaleAmount,
      MAX(vt.salesAmount) AS MaxSaleAmount
FROM employee emp
INNER JOIN sales vt
      ON emp.employeeId = vt.employeeId
WHERE vt.soldDate >= date((SELECT MAX(soldDate) FROM sales), 'start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName;

-- This query retrieves the employee ID, first name, last name, and title of each employee who has made sales
-- in the MAX year from sales table, along with the minimum and maximum sale amounts for each employee.