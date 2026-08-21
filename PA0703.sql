/******************************************************************
PA0703 - Write Queries That Use Logical Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    StudentID,
    FinalMark,
    IF(FinalMark >= 50, 'Pass', 'Fail') AS Result
FROM Enrollments;

SELECT 
    StudentID,
    FinalMark,
    CASE 
        WHEN FinalMark >= 75 THEN 'Distinction'
        WHEN FinalMark >= 50 THEN 'Pass'
        ELSE 'Fail'
    END AS ResultCategory
FROM Enrollments;
