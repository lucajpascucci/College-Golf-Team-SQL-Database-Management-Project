SELECT P.PlayerID, P.FirstName & " " & P.LastName AS PlayerName, P.ClassYear, T.TournamentName, T.TournamentType, C.CourseName, C.Par, S.RoundNumber, S.Score, S.Score - C.Par AS RelativeToPar, S.ScoreDate
FROM ((Players AS P INNER JOIN Scores AS S ON P.PlayerID = S.PlayerID) INNER JOIN Tournaments AS T ON S.TournamentID = T.TournamentID) INNER JOIN Courses AS C ON T.CourseID = C.CourseID
ORDER BY T.StartDate DESC , P.LastName, S.RoundNumber;
