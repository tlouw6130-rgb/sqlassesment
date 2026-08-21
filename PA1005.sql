/******************************************************************
PA1005 – Write Queries That Use Inline Table-Valued Functions
Expressions (CTEs)
******************************************************************/
USE TrainingAcademyDB;

DELIMITER //

CREATE PROCEDURE fn_StudentEnrollments(IN StudentIDInput INT)
BEGIN
    SELECT *
    FROM Enrollments
    WHERE StudentID = StudentIDInput;
END //

DELIMITER ;

CALL fn_StudentEnrollments(2005);