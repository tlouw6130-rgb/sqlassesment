/******************************************************************
PA1001- Use Table Expressions
******************************************************************/
USE TrainingAcademyDB;

SELECT * FROM (
    SELECT City, COUNT(*) AS Total 
    FROM Students GROUP BY City
) AS Summary 
WHERE Total > 2;

WITH HighPerformers AS (
    SELECT StudentID, FinalMark 
    FROM Enrollments WHERE FinalMark >= 75
)
SELECT * FROM Enrollments;

CREATE VIEW StudentResultsView AS
SELECT StudentID, CourseID, FinalMark
FROM Enrollments;

SELECT * FROM StudentResultsView;



