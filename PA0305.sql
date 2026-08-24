/******************************************************************
PA0305 - Write Queries That Use OUTER JOINs
******************************************************************/

USE TrainingAcademyDB; 

SELECT 
    Students.FirstName,
    Enrollments.EnrollmentID,
    Enrollments.EnrollmentStatus,
	Enrollments.EnrollmentDate,
    Enrollments.FinalMark,
    Courses.CourseName
FROM Students
LEFT JOIN Enrollments 
    ON Students.StudentID= Enrollments.StudentID
LEFT JOIN Courses 
    ON Enrollments.CourseID = Courses.CourseID;