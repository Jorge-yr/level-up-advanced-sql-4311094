SELECT emp.firstName, emp.lastName, emp.title,
      mng.firstName AS ManagerFirstName, 
      mng.lastName AS ManagerLastName
FROM employee emp
INNER JOIN employee mng
      ON emp.managerId = mng.employeeId;
-- This query retrieves the first name, last name, and title of each employee and their manager's first and last name.
-- The INNER JOIN is used to combine rows from the employee table with itself based on the managerId.