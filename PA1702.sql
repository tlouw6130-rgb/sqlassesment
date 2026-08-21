/******************************************************************
PA1702 – Control Transactions With BEGIN, COMMIT and ROLLBACK
******************************************************************/
USE TrainingAcademyDB;

START TRANSACTION;

-- Make a temporary change
INSERT INTO TransactionTest
VALUES (3, 'Temporary Test');

-- Verify the temporary modification
SELECT * FROM TransactionTest;

-- Undo the change
ROLLBACK;

-- Verify that the temporary record is gone
SELECT * FROM TransactionTest;

-- Successful transaction
START TRANSACTION;

INSERT INTO TransactionTest
VALUES (4, 'Successful Test');

COMMIT;

-- Verify that the record was saved
SELECT * FROM TransactionTest;
