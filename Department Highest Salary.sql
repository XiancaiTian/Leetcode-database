# Write your MySQL query statement below

# simple solution, easy to understand, but take time to run
SELECT D.Name AS Department, E.Name AS Employee, E.Salary AS Salary
FROM Employee E, Department D
WHERE E.DepartmentId = D.Id
AND E.Salary = (SELECT MAX(Salary) FROM Employee E2 WHERE E2.DepartmentId = D.Id)

# another solution, looks complex, but run much faster
SELECT D.Name AS Department, E.Name AS Employee, E.Salary AS Salary
FROM Employee E, Department D,
(SELECT Max(Salary) AS Max, DepartmentId FROM Employee GROUP BY DepartmentId) S
WHERE E.DepartmentId = D.Id AND E.DepartmentId = S.DepartmentId AND E.Salary = S.Max
