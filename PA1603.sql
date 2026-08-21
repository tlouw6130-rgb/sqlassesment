/******************************************************************
PA1603 – Use THROW
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE CheckFinalMark(IN Mark INT)
BEGIN

    IF Mark < 0 OR Mark > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'FinalMark must be between 0 and 100';
    END IF;

    SELECT 'FinalMark is valid' AS Result;

END //

DELIMITER ;

CALL CheckFinalMark(150);

CALL CheckFinalMark(75);
