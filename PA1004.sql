/******************************************************************
PA1004 – Write Queries That Use Common Table
Expressions (CTEs)
******************************************************************/
USE TrainingAcademyDB;

WITH StudentPerformance AS (
    SELECT StudentID, FinalMark
    FROM Enrollments
)
SELECT *
FROM StudentPerformance;

WITH StudentPerformance AS (
    SELECT
        StudentID,
        FinalMark,
        CASE
            WHEN FinalMark >= 75 THEN 'Excellent'
            WHEN FinalMark >= 60 THEN 'Good'
            WHEN FinalMark >= 50 THEN 'Pass'
            ELSE 'Fail'
        END AS Performance
    FROM Enrollments
)
SELECT *
FROM StudentPerformance;