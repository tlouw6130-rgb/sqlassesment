/******************************************************************
PA1104 – Use EXCEPT and INTERSECT
******************************************************************/
USE TrainingAcademyDB;


SELECT CourseID 
FROM Courses

EXCEPT

SELECT CourseID 
FROM Enrollments;

-- INTERSECT

SELECT StudentID
 FROM Enrollments 

INTERSECT

SELECT StudentID 
FROM Enrollments;
