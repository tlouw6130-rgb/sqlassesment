/******************************************************************
PA0701 - Use Built-In Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    UPPER(FirstName) AS UpperFirstName,           
    LEFT(City, 3) ShortCity
FROM Students;

SELECT CourseName, ROUND(CourseFee) AS RoundedFee
FROM Courses;

SELECT FirstName, LENGTH(FirstName) AS NameLength
FROM Students;

SELECT AVG(FinalMark) AS AverageMark
FROM Enrollments;

SELECT 
    YEAR(HireDate) AS YearHired,
    NOW() AS CurrentDateTime
FROM Lecturers;

