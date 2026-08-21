/******************************************************************
PA1601 – Implement Error Handling
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE TestError()
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'An error occurred. Please try again.' AS ErrorMessage;
    END;

    SELECT 10 / 0 AS Result;
END //

DELIMITER ;

CALL TestError();
