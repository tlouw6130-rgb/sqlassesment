/******************************************************************
PA1701 – Implement Transactions
******************************************************************/
USE TrainingAcademyDB;


CREATE TABLE TransactionTest (
    TestID INT,
    TestName VARCHAR(100)
);

START TRANSACTION;

INSERT INTO TransactionTest
VALUES (1, 'Test Student');

INSERT INTO TransactionTest
VALUES (2, 'Test Course');

SELECT * FROM TransactionTest;

COMMIT;

SELECT * FROM TransactionTest;