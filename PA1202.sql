/******************************************************************
PA1202 – Write Queries That Use Ranking Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT
    StudentID,
    FinalMark,
    ROW_NUMBER() OVER (ORDER BY FinalMark DESC) AS RowNumber,
    RANK() OVER (ORDER BY FinalMark DESC) AS RankNumber,
    DENSE_RANK() OVER (ORDER BY FinalMark DESC) AS DenseRank,
    NTILE(4) OVER (ORDER BY FinalMark DESC) AS Quartile
FROM Enrollments;


