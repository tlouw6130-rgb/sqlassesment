/******************************************************************
PA1501 – Program With SQL
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE AcademyProgram()
BEGIN
    DECLARE Counter INT DEFAULT 1;
    DECLARE MessageText VARCHAR(50);

    WHILE Counter <= 5 DO

        IF Counter >= 3 THEN
            SET MessageText = 'Passed';
        ELSE
            SET MessageText = 'Keep Going';
        END IF;

        SELECT Counter AS StudentNumber, MessageText AS Result;

        SET Counter = Counter + 1;

    END WHILE;
END //

DELIMITER ;

CALL AcademyProgram();
