/******************************************************************
PA1605 – Implement Structured Exception Handling
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE StructuredErrorHandling(IN Mark INT)
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Custom Error: FinalMark must be between 0 and 100.';
    END;

    -- Code before the error
    IF Mark < 0 OR Mark > 100 THEN
        -- Error is generated
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid FinalMark.';
    ELSE
        SELECT 'FinalMark is valid.' AS Message;
    END IF;

END //

DELIMITER ;

CALL StructuredErrorHandling(150);