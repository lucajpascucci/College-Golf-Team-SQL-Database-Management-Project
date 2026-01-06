SELECT P.PlayerID, P.FirstName & " " & P.LastName AS PlayerName, P.ClassYear, P.Handicap, COUNT(S.ScoreID) AS Rounds, AVG(S.Score) AS ScoringAverage, MIN(S.Score) AS BestRound, MAX(S.Score) AS WorstRound
FROM Players AS P INNER JOIN Scores AS S ON P.PlayerID = S.PlayerID
WHERE P.IsActive = Yes
GROUP BY P.PlayerID, P.FirstName, P.LastName, P.ClassYear, P.Handicap
ORDER BY AVG(S.Score);





