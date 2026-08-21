/******************************************************************
PA0801 - Group and Aggregate Data
******************************************************************/
USE TrainingAcademyDB;

SELECT City, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY City;

SELECT AVG(FinalMark) AS AverageMark
FROM Enrollments;

SELECT MAX(FinalMark) AS HighestMark,
       MIN(FinalMark) AS LowestMark
FROM Enrollments;

SELECT SUM(Amount) AS TotalPayments
FROM Payments;

SELECT CourseID,
       COUNT(*) AS NumberOfStudents,
       AVG(FinalMark) AS AverageMark
FROM Enrollments
GROUP BY CourseID;
