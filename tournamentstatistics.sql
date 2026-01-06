SELECT T.TournamentID, T.TournamentName, T.TournamentType, T.StartDate, C.CourseName, C.Location, C.Par, COUNT(S.ScoreID) AS TotalRounds, AVG(S.Score) AS AverageScore, MIN(S.Score) AS BestRound, MAX(S.Score) AS WorstRound, AVG(S.Score - C.Par) AS AvgRelativeToPar
FROM (Tournaments AS T INNER JOIN Courses AS C ON T.CourseID = C.CourseID) INNER JOIN Scores AS S ON T.TournamentID = S.TournamentID
GROUP BY T.TournamentID, T.TournamentName, T.TournamentType, T.StartDate, C.CourseName, C.Location, C.Par
ORDER BY T.StartDate DESC;





