SELECT T.Request_at AS Day,
ROUND(SUM(CASE WHEN T.Status LIKE 'cancelled_%' THEN 1 ELSE 0 END) / COUNT(*),2) AS "Cancellation Rate"
FROM Trips T
JOIN Users U ON t.Client_Id = U.Users_Id AND U.Banned = 'No'
GROUP BY T.Request_at
HAVING T.Request_at BETWEEN '2013-10-01' AND '2013-10-03'