/******************************************************************
PA1604 – Implement SQL Error Handling
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE AddStudent(IN Mark INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SELECT 'Invalid data operation' AS ErrorMessage;
    END;

    IF Mark < 0 OR Mark > 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'FinalMark must be between 0 and 100';
    END IF;

    INSERT INTO Students (FinalMark)
    VALUES (Mark);
END //

DELIMITER ;

CALL AddStudent(150);
