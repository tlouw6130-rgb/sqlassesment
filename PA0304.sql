/******************************************************************
PA0304 - Write Queries That Use Self-Joins
******************************************************************/

USE TrainingAcademyDB; 

SELECT 
FirstName, 
LastName, 
 CASE 
        WHEN EmployeeID <> 1398 THEN 'Employee'
    END AS Staff,
    CASE 
        WHEN EmployeeID <> 1398 THEN 'Rabi Small'
    END AS Manager
FROM Employees;
