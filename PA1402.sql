/******************************************************************
PA1402 – Use EXECUTE to Invoke Stored Procedures
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //
CREATE PROCEDURE usp_GetStudents()
BEGIN
    SELECT* 
    FROM Students;
END //

DELIMITER ;


CALL usp_GetStudents();

