SELECT emp.firstName, emp.lastName, emp.title,
      COUNT(vt.salesId) AS SalesCount
FROM employee emp
LEFT JOIN sales vt
      ON emp.employeeId = vt.employeeId
WHERE emp.title = 'Sales Person'
GROUP BY emp.firstName, emp.lastName, emp.title
ORDER BY SalesCount DESC;

-- This query retrieves the first name, last name, and title of each employee who is a Sales Person
-- and does not have any associated sales records.