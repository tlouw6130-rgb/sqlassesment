/******************************************************************
PA0303 - Write Queries That Use Multiple-Table INNER JOINs
******************************************************************/

USE TrainingAcademyDB; 
SELECT 
    Students.FirstName,
    Students.LastName,
    Courses.CourseName,
    Departments.DepartmentName,
    Enrollments.EnrollmentStatus,
    Enrollments.FinalMark
FROM Enrollments
INNER JOIN Students ON Enrollments.StudentID = Students.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID
INNER JOIN Departments ON Courses.DepartmentID = Departments.DepartmentID;