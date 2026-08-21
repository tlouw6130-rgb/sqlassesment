/******************************************************************
PA0503 - Use Date and Time Functions
******************************************************************/
USE TrainingAcademyDB; 

SELECT
    Lecturers.FirstName LecturerName,
    Lecturers.HireDate HireDate,
    YEAR(CURDATE()) - YEAR(Lecturers.HireDate) YearsWorked,
    MONTH(CURDATE()) CurrentMonth,
    DAY(CURDATE()) CurrentDay
FROM Lecturers;