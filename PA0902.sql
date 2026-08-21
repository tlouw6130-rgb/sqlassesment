/******************************************************************
PA0902- Use Self-Contained Subqueries
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    StudentID,
    FinalMark
FROM Enrollments
WHERE FinalMark > (
    
    SELECT AVG(FinalMark) 
    FROM Enrollments
);
