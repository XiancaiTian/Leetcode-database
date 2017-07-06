# Write your MySQL query statement below

SELECT DISTINCT W1.Id AS Id
FROM Weather W1, Weather W2
WHERE DATEDIFF(W1.Date, W2.Date) = 1 AND (W1.Temperature > W2.Temperature)
