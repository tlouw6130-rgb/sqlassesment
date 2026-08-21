/******************************************************************
PA0901- Use Subqueries
******************************************************************/
USE TrainingAcademyDB;

SELECT CourseName, CourseFee 
FROM Courses
WHERE CourseFee > (SELECT AVG(CourseFee) FROM Courses);
