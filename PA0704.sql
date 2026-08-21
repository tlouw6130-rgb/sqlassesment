/******************************************************************
PA0704 - Write Queries That Test for Nullability
******************************************************************/
USE TrainingAcademyDB;


SELECT *
FROM Employees
WHERE ManagerID IS NULL;


SELECT *
FROM Employees
WHERE ManagerID IS NOT NULL;


SELECT FirstName,
       LastName,
       ISNULL(ManagerID) AS ManagerIsNull
FROM Employees;

SELECT FirstName,
       LastName,
       COALESCE(ManagerID, 'No Manager Assigned') AS Manager
FROM Employees;
