/******************************************************************
PA1705 -  Use SET XACT_ABORT
*****************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE XactAbort()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Error occurred - transaction rolled back.' AS Message;
    END;

    START TRANSACTION;

    INSERT INTO TransactionTest
    VALUES (8, 'Test Transaction');

    -- Deliberate error
    INSERT INTO TransactionTest
    VALUES (8, 'Error Test');

    COMMIT;
END //

DELIMITER ;

CALL XactAbort();
