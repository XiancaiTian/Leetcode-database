# Write your MySQL query statement below
SELECT *
FROM cinemaS
WHERE id % 2 = 1 AND (description != 'boring')
ORDER BY rating DESC
