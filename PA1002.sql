/******************************************************************
PA1002- Write Queries That Use Views
******************************************************************/
USE TrainingAcademyDB;

CREATE VIEW vw_StudentResults AS
SELECT
    S.StudentID,
    CONCAT(S.FirstName, ' ', S.LastName) AS FullName,
    C.CourseName,
    E.FinalMark,
    E.EnrollmentStatus
FROM Students AS S
JOIN Enrollments AS E
    ON S.StudentID = E.StudentID
JOIN Courses AS C
    ON E.CourseID = C.CourseID;
   
    SELECT *
FROM vw_StudentResults;