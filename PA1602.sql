/******************************************************************
PA1602 – Redirect Errors With TRY/CATCH
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE TryCatch()
BEGIN
    DECLARE ErrorMessage VARCHAR(255);

    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            ErrorMessage = MESSAGE_TEXT;

        SELECT
            'SQL Error' AS ErrorType,
            ErrorMessage AS ErrorMessage;
    END;

    SELECT 10 / 0 AS Result;
END //

DELIMITER ;

CALL TryCatch();

DELIMITER ;