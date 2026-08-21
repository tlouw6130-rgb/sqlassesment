/******************************************************************
PA0202 - Write Simple SELECT Statements
******************************************************************/
USE TrainingAcademyDB; 
SELECT
CourseName,
CourseFee,
CourseFee * 0.15 AS VAT,
CourseFee * 1.15 AS FeeIncludingVAT
FROM Courses;