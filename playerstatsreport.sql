PARAMETERS [Enter Player ID or leave blank for all:] Long;
SELECT P.PlayerID, P.FirstName & " " & P.LastName AS PlayerName, P.ClassYear, P.Major, P.Handicap, T.TournamentName, T.StartDate, C.CourseName, C.Par, S.RoundNumber, S.Score, S.Score - C.Par AS RelativeToPar
FROM ((Players AS P INNER JOIN Scores AS S ON P.PlayerID = S.PlayerID) INNER JOIN Tournaments AS T ON S.TournamentID = T.TournamentID) INNER JOIN Courses AS C ON T.CourseID = C.CourseID
WHERE [Enter Player ID or leave blank for all:] Is Null OR P.PlayerID = [Enter Player ID or leave blank for all:]
ORDER BY P.LastName, T.StartDate DESC;


