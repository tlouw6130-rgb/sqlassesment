/******************************************************************
PA1506 – Write SQL Using IF...ELSE
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE CheckResult()
BEGIN
    DECLARE AverageMark DECIMAL(5,2);

    SET AverageMark = 65;

    IF AverageMark >= 50 THEN
        SELECT 'Pass' AS Result;
    ELSE
        SELECT 'Not Yet Competent' AS Result;
    END IF;
END //

DELIMITER ;

CALL CheckResult();
