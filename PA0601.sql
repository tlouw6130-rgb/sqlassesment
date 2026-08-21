/******************************************************************
PA0601 - Use DML Commands
******************************************************************/
USE TrainingAcademyDB;

SELECT FirstName, City
FROM Students 
WHERE City = 'Kimberley';

INSERT INTO Students (StudentID, FirstName, City)
VALUES (1540, 'Lerato Khumalo', 'Kimberley');

UPDATE Students
SET FirstName = 'Lerato',
    LastName = 'Khumalo'
WHERE StudentID = 1540;


DELETE FROM Students
WHERE StudentID= 1540;

ALTER TABLE Students ADD PRIMARY KEY (StudentID);

--  MERGE equivalent in MySQL
-- MySQL does not have the MERGE command.
-- INSERT ... ON DUPLICATE KEY UPDATE can be used
-- to insert a new record or update an existing record.

REPLACE INTO Students (StudentID,FirstName, LastName, City, EnrollmentStatus)
VALUES 
    (1356, 'Phaladi',' Mclaughlin', 'Kimberley', 'Enrolled'),
    (1599, 'Thabo',' Mokoena', 'Kimberley', 'Enrolled');
    
    SELECT *FROM Students;

    SELECT * FROM Students WHERE StudentID = 1540;




    
