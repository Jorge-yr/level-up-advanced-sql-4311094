SELECT emp.firstName, emp.lastName, emp.title,
      mng.firstName AS ManagerFirstName, 
      mng.lastName AS ManagerLastName
FROM employee emp
INNER JOIN employee mng
      ON emp.managerId = mng.employeeId;
-- This query retrieves the first name, last name, and title of each employee,
