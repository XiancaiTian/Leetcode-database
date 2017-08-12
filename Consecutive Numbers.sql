# easy to understand, but take time to run
SELECT DISTINCT L1.Num AS ConsecutiveNums
FROM Logs L1, Logs L2, Logs L3
WHERE L1.Num = L2.Num AND L1.Num = L3.Num AND L1.Id+1 = L2.Id AND L1.Id+2 = L3.Id
