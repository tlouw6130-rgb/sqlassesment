/******************************************************************
PA1203 – Write Queries That Use Offset Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    StudentID,
    FinalMark,
    
    LAG(FinalMark) OVER(ORDER BY FinalMark DESC) AS PreviousHigherMark,
    
    LEAD(FinalMark) OVER(ORDER BY FinalMark DESC) AS NextLowerMark,
    

    FIRST_VALUE(FinalMark)
    OVER(
        ORDER BY FinalMark DESC 
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS HighestAcademyMark,
    
    
    LAST_VALUE(FinalMark) 
    OVER(
        ORDER BY FinalMark DESC 
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS LowestAcademyMark
FROM Enrollments
WHERE FinalMark IS NOT NULL;

