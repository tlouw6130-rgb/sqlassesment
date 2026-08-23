
/******************************************************************
PA1003 –  Write Queries That Use Derived Tables
******************************************************************/
USE TrainingAcademyDB;

SELECT CourseID, AverageMark
FROM (
    SELECT CourseID,
           AVG(FinalMark) AS AverageMark
    FROM Enrollments
    GROUP BY CourseID
) AS CourseAverages
WHERE AverageMark >= 60;