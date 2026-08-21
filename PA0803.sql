/******************************************************************
PA0803 - Use Aggregate Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    
    COUNT(DISTINCT Enrollments.StudentID) AS TotalStudents,
    
    
    ROUND(AVG(Enrollments.FinalMark), 2) AS AverageFinalMark,
    
    
    MAX(Enrollments.FinalMark) AS HighestFinalMark,
    
    
    MIN(Enrollments.FinalMark) AS LowestFinalMark,
    

    (SELECT SUM(Payments.Amount) FROM Payments) AS TotalPaymentsReceived
FROM Enrollments;
