/******************************************************************
PA1102 – Use UNION and UNION ALL
******************************************************************/
USE TrainingAcademyDB;

SELECT City FROM Students
UNION
SELECT Location FROM Departments;


SELECT 
    'Student' AS Role,
    FirstName,
    LastName,
    Email
FROM Students

UNION ALL

SELECT 
    'Lecturer' AS Role,
    FirstName,
    LastName,
    Email
FROM Lecturers;


