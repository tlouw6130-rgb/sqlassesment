/******************************************************************
PA1302 – Write Queries That Use PIVOT
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    Courses.CourseName AS Course,
    COUNT(CASE WHEN Enrollments.EnrollmentStatus = 'Enrolled' THEN 1 END) AS Enrolled,
    COUNT(CASE WHEN Enrollments.EnrollmentStatus = 'Completed' THEN 1 END) AS Completed,
    COUNT(CASE WHEN Enrollments.EnrollmentStatus = 'Withdrawn' THEN 1 END) AS Withdrawn
FROM Courses
LEFT JOIN Enrollments 
ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseName;

