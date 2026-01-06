SELECT P.PlayerID, P.FirstName & " " & P.LastName AS PlayerName, P.ClassYear, P.Major, P.Handicap, COUNT(S.ScoreID) AS TotalRounds, AVG(S.Score) AS SeasonAverage, MIN(S.Score) AS BestRound, MAX(S.Score) AS WorstRound, STDEV(S.Score) AS Consistency
FROM Players AS P LEFT JOIN Scores AS S ON P.PlayerID = S.PlayerID
WHERE P.IsActive = Yes
GROUP BY P.PlayerID, P.FirstName, P.LastName, P.ClassYear, P.Major, P.Handicap
HAVING COUNT(S.ScoreID) > 0
ORDER BY AVG(S.Score);

