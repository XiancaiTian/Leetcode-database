# Write your MySQL query statement below
SELECT MAX(E1.Salary) AS SecondHighestSalary
FROM Employee E1, Employee E2
WHERE E1.Salary < E2.Salary AND E1.Id <> E2.Id
ORDER BY E1.Salary DESC
