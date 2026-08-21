/******************************************************************
PA0504 - Write Queries That Return Character Data
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    
    Students.FirstName + ' ' + Students.LastName AS FullName,
    
    Students.Email,
    Students.City,
    Courses.CourseName
FROM Students
INNER JOIN Enrollments 
    ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses 
    ON Enrollments.CourseID = Courses.CourseID;
