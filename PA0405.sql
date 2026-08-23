/******************************************************************
PA0405 - Filter Data Using OFFSET-FETCH
******************************************************************/
USE TrainingAcademyDB; 

SELECT FirstName FROM Students
ORDER BY StudentID
LIMIT 5 OFFSET 0;

SELECT FirstName FROM Students
ORDER BY StudentID
LIMIT 5 OFFSET 5;

