# Write your MySQL query statement below
SELECT DISTINCT P1.Email as Email
FROM Person P1, Person P2
WHERE P1.Id <> P2.Id AND P1.Email = P2.Email
