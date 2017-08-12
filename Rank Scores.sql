SELECT Score, 
       (SELECT COUNT(DISTINCT Score) FROM Scores WHERE Score >= s.Score) Rank
FROM Scores s
ORDER BY Score DESC