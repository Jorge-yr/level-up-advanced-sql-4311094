SELECT emp.firstName, emp.lastName, emp.title,
      vt.salesId
FROM employee emp
LEFT JOIN sales vt
      ON emp.employeeId = vt.employeeId
WHERE emp.title = 'Sales Person' 
AND vt.salesId ISNULL;

-- This query retrieves the first name, last name, and title of each employee who is a Sales Person
-- and does not have any associated sales records.