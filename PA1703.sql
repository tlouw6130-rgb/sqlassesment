/******************************************************************
PA1703 – Add Error Handling to a CATCH Block
******************************************************************/
USE TrainingAcademyDB;

ALTER TABLE TransactionTest
ADD PRIMARY KEY (TestID);

DELIMITER //

CREATE PROCEDURE TransactionErrorHandling()
BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Error occurred. Transaction rolled back.' AS Message;
    END;

    START TRANSACTION;

    INSERT INTO TransactionTest
    VALUES (5, 'Transaction Test');

    -- Deliberate error
    INSERT INTO TransactionTest
    VALUES (5, 'Duplicate Test');

    COMMIT;

    SELECT 'Transaction completed successfully.' AS Message;

END //

DELIMITER ;

CALL TransactionErrorHandling();


