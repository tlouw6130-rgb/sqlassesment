/******************************************************************
PA0306 - Write Queries That Use CROSS JOINs
******************************************************************/

USE TrainingAcademyDB; 

SELECT 
    Departments.DepartmentName,
    Courses.CourseName
FROM Departments
CROSS JOIN Courses;

/* 
EXPLANATION:
A CROSS JOIN creates a Cartesian product. 
It matches EVERY row in the Departments table with EVERY row in the Courses table.
*/