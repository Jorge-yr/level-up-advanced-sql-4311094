-- consult of our Schema
SELECT sql
FROM sqlite_schema
WHERE name = 'employee';
-- Output: CREATE TABLE employee (id INTEGER PRIMARY KEY, name TEXT NOT NULL, age INTEGER NOT NULL, department TEXT NOT NULL);
