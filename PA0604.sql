/******************************************************************
PA0604 - Update and Delete Records Using DML
******************************************************************/
USE TrainingAcademyDB;

UPDATE Students
SET Phone = 0794561238,
    City = 'Johannesburg'
WHERE StudentID = 2005;

SELECT StudentID, FirstName, LastName, Phone, City
FROM Students
WHERE StudentID = 2005;

UPDATE Enrollments
SET EnrollmentStatus = 'Enrolled'
WHERE EnrollmentID = 20264;

SELECT *
FROM Enrollments
WHERE EnrollmentID = 20264;

DELETE FROM Payments
WHERE PaymentID = 70501;

SELECT *
FROM Payments
WHERE PaymentID = 70501;

-- MERGE ACTIVITY USING REPLACE INTO

CREATE TABLE AcademyTestStudents (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    City VARCHAR(100)
);

INSERT INTO AcademyTestStudents
VALUES (2000, 'Zandile', 'Zulu', 'Pretoria');


REPLACE INTO AcademyTestStudents
VALUES (2000, 'Zandile', 'Zulu', 'Kimberley');


REPLACE INTO AcademyTestStudents
VALUES (1999, 'Thabo', 'Molefe', 'Bloemfontein');


SELECT * FROM AcademyTestStudents;
 
  DROP TABLE AcademyTestStudents;
  
  SHOW TABLES;