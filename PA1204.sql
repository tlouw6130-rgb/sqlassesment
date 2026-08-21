/******************************************************************
PA1204 – Write Queries That Use Window Aggregate Functions
******************************************************************/
USE TrainingAcademyDB;


SELECT
    StudentID,
    CourseID,
    FinalMark,
    AVG(FinalMark) OVER (PARTITION BY CourseID) AS CourseAverage
FROM Enrollments;


SELECT
    StudentID,
    FinalMark,
    AVG(FinalMark) OVER () AS OverallAverage
FROM Enrollments;


SELECT
    PaymentID,
    StudentID,
    Amount,
    SUM(Amount) OVER (ORDER BY PaymentID) AS RunningPaymentTotal
FROM Payments;
