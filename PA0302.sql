/******************************************************************
PA0302 - Write Queries That Use INNER JOIN
******************************************************************/

USE TrainingAcademyDB; 
SELECT 
    Students.FirstName,
    Courses.CourseName,
    Enrollments.EnrollmentDate,
    Enrollments.FinalMark
FROM Enrollments
INNER JOIN Students ON Enrollments.StudentID = Students.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;