/******************************************************************
PA0702 - Write Queries That Use Conversion Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT CAST(CourseFee AS CHAR) AS FeeText 
FROM Courses;

SELECT CAST(RegistrationDate AS CHAR) AS DateText 
FROM Students;


SELECT CAST('250' AS UNSIGNED) AS NumberValue;
