/******************************************************************
PA1201 – Use Window Ranking, Offset and Aggregate Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    StudentID, 
    FinalMark,
    ROW_NUMBER() OVER(ORDER BY FinalMark DESC) AS Position
FROM Enrollments;

-- running totals
SELECT 
    PaymentID, 
    Amount,
    SUM(Amount) OVER(ORDER BY PaymentID) AS TotalToDate
FROM Payments;
