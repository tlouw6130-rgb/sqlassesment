/******************************************************************
PA1503 – Use Control-of-Flow Elements
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE ControlFlow()
BEGIN
    DECLARE Counter INT DEFAULT 0;

    loop1: WHILE Counter < 10 DO

        SET Counter = Counter + 1;

        IF Counter = 3 THEN
            ITERATE loop1;
        END IF;

        IF Counter = 7 THEN
            LEAVE loop1;
        END IF;

        SELECT Counter AS NumberValue;

    END WHILE loop1;
END //

DELIMITER ;

CALL ControlFlow();

