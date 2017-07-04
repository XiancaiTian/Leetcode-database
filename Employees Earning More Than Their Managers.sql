# Write your MySQL query statement below
SELECT Emp.Name AS Employee
FROM Employee Emp,Employee Mgr
WHERE Emp.ManagerId = Mgr.Id AND Emp.Salary > Mgr.Salary
