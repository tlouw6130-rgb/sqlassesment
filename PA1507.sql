/******************************************************************
PA1507 – Write SQL Code That Uses WHILE
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE WhileTEST()
BEGIN
    DECLARE Counter INT DEFAULT 1;
    DECLARE StudentCount INT DEFAULT 0;


    WHILE Counter <= 10 DO
        SELECT Counter AS Number;
        SET Counter = Counter + 1;
    END WHILE;

 
    SET Counter = 1;

    WHILE Counter <= (SELECT COUNT(*) FROM Students) DO
        SET StudentCount = StudentCount + 1;
        SET Counter = Counter + 1;
    END WHILE;

    SELECT StudentCount AS TotalStudents;
END //

DELIMITER ;

CALL WhileTEST();
