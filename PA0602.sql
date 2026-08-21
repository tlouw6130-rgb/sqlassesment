/******************************************************************
PA0602 - Use DML to Modify Data
******************************************************************/
USE TrainingAcademyDB;

INSERT INTO Students (StudentID, FirstName, LastName, City)
VALUES (1720, 'Nomvula', 'Dlamini', 'Kimberley');

UPDATE Students
SET FirstName = 'Nomvula Eve'
WHERE StudentID = 1720;

REPLACE INTO Students (StudentID, FirstName, LastName, City)
VALUES 
    (1356, 'Phaladi', 'Mclaughlin', 'Kimberley'),
    (1602, 'Sipho', 'Zulu', 'Bloemfontein');

DELETE FROM Students
WHERE StudentID = 1720;
DELETE FROM Students
WHERE StudentID = 1602;
DELETE FROM Students
WHERE StudentID = 1356;


COMMIT;

SELECT * FROM Students;