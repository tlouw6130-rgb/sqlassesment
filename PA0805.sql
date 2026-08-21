/******************************************************************
PA0805- Filter Groups Using HAVING
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    CourseID, 
    AVG(FinalMark) AS AvgMark
FROM Enrollments
GROUP BY CourseID
HAVING AVG(FinalMark) >= 60;


SELECT 
    CourseID, 
    COUNT(StudentID) AS TotalStudents
FROM Enrollments
GROUP BY CourseID
HAVING COUNT(StudentID) > 3;
