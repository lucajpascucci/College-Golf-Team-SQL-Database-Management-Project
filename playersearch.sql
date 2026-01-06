PARAMETERS [Enter Player Last Name:] Text ( 255 );
SELECT P.FirstName & " " & P.LastName AS PlayerName, P.ClassYear, P.Major, P.Handicap, T.TournamentName, T.TournamentType, T.StartDate, C.CourseName, COUNT(S.ScoreID) AS RoundsPlayed, AVG(S.Score) AS AverageScore, MIN(S.Score) AS BestRound, MAX(S.Score) AS WorstRound
FROM ((Players AS P INNER JOIN Scores AS S ON P.PlayerID = S.PlayerID) INNER JOIN Tournaments AS T ON S.TournamentID = T.TournamentID) INNER JOIN Courses AS C ON T.CourseID = C.CourseID
WHERE P.LastName LIKE [Enter Player Last Name:] & "*"
GROUP BY P.FirstName, P.LastName, P.ClassYear, P.Major, P.Handicap, T.TournamentName, T.TournamentType, T.StartDate, C.CourseName
ORDER BY T.StartDate DESC;
