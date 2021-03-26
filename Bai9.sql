CREATE PROCEDURE gradeDistribution()
BEGIN
	SELECT Name, ID
    FROM Grades
    WHERE Final > (Midterm1+Midterm2)/2 AND Final > (0.5*(Midterm1+Midterm2)+Final)/2
    ORDER BY LEFT(Name,3), ID;
END