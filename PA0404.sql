/******************************************************************
PA0404 - Filter Data Using TOP
******************************************************************/
USE TrainingAcademyDB; 

SELECT 
Students.FirstName,
Enrollments.FinalMark
FROM Students
INNER JOIN Enrollments 
    ON Students.StudentID = Enrollments.StudentID
WHERE Enrollments.FinalMark IS NOT NULL
ORDER BY Enrollments.FinalMark DESC
LIMIT 5;

SELECT 
Courses.CourseName,
Courses.CourseFee
FROM Courses
ORDER BY Courses.CourseFee DESC
LIMIT 3;