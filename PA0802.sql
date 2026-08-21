/******************************************************************
PA0802 - Use GROUP BY
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    Courses.CourseName,
    COUNT(Enrollments.StudentID) AS TotalStudents
FROM Courses
LEFT JOIN Enrollments 
    ON Courses.CourseId = Enrollments.CourseID
GROUP BY Courses.CourseID, Courses.CourseName;
