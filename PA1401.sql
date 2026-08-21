/******************************************************************
PA1401 – Execute Stored Procedures
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE ShowStudents()
BEGIN
    SELECT *
    FROM Students;
END //

DELIMITER ;

CALL ShowStudents();