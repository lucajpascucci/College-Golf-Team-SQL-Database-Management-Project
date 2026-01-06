SELECT T.TournamentID, T.TournamentName, T.TournamentType, T.StartDate, T.EndDate, T.NumberOfRounds, C.CourseName, C.Location, C.State, C.Par, C.TotalYardage, C.Slope, C.Rating, DATEDIFF("d", Date(), T.StartDate) AS DaysUntil
FROM Tournaments AS T INNER JOIN Courses AS C ON T.CourseID = C.CourseID
ORDER BY T.StartDate;





