SELECT T.TournamentID, T.TournamentName, T.StartDate, T.TournamentType, C.CourseName, C.Location, C.Par, C.TotalYardage, P.FirstName & " " & P.LastName AS PlayerName, P.ClassYear, S.RoundNumber, S.Score, S.Score - C.Par AS RelativeToPar
FROM ((Tournaments AS T INNER JOIN Courses AS C ON T.CourseID = C.CourseID) INNER JOIN Scores AS S ON T.TournamentID = S.TournamentID) INNER JOIN Players AS P ON S.PlayerID = P.PlayerID
ORDER BY T.StartDate DESC , P.LastName, S.RoundNumber;





