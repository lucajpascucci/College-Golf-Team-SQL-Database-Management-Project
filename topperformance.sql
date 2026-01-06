SELECT P.FirstName & " " & P.LastName AS PlayerName, T.TournamentName, S.RoundNumber, S.Score, (SELECT AVG(Score) FROM Scores WHERE TournamentID = S.TournamentID) AS TournamentAverage, S.Score - (SELECT AVG(Score) FROM Scores WHERE TournamentID = S.TournamentID) AS DifferenceFromAvg, C.Par, S.Score - C.Par AS RelativeToPar
FROM ((Players AS P INNER JOIN Scores AS S ON P.PlayerID = S.PlayerID) INNER JOIN Tournaments AS T ON S.TournamentID = T.TournamentID) INNER JOIN Courses AS C ON T.CourseID = C.CourseID
WHERE S.Score < (SELECT AVG(Score) FROM Scores WHERE TournamentID = S.TournamentID)
ORDER BY T.TournamentName, S.Score;




