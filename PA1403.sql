/******************************************************************
PA1403 – Pass Parameters to Stored Procedures
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE usp_GetStudentsByCity(IN CityName VARCHAR(250))
BEGIN
    SELECT *
    FROM Students
    WHERE City = CityName;
END //

DELIMITER ;

CALL usp_GetStudentsByCity('Kimberley');


DELIMITER //

CREATE PROCEDURE usp_GetStudentsByMinimumMark(IN MinimumMark INT)
BEGIN
    SELECT *
    FROM Enrollments
    WHERE FinalMark >= MinimumMark;
END //

DELIMITER ;

CALL usp_GetStudentsByMinimumMark(60);
