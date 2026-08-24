/******************************************************************
PA0301 - Query Multiple Tables
******************************************************************/

USE TrainingAcademyDB; 
SELECT 
    Students.StudentID,
    Students.FirstName,
    Courses.CourseName,
    Courses.DepartmentID,
    Enrollments.EnrollmentDate,
    Enrollments.EnrollmentStatus
FROM Enrollments
INNER JOIN Students ON Enrollments.StudentID = Students.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;