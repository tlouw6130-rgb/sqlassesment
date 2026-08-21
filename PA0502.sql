/******************************************************************
PA0502 - Write Queries That Return Date and Time Data
******************************************************************/
USE TrainingAcademyDB; 

SELECT 
    CURRENT_DATE,

    CURRENT_TIMESTAMP,

    Enrollments.EnrollmentDate,

    Lecturers.HireDate
FROM Enrollments
CROSS JOIN Lecturers;
