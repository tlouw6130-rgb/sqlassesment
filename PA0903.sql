/******************************************************************
PA0903- Use Scalar and Multi-Result Subqueries
******************************************************************/
USE TrainingAcademyDB;

SELECT CourseName, CourseFee 
FROM Courses
WHERE CourseFee = (
    SELECT MIN(CourseFee) 
    FROM Courses
);

SELECT FirstName
FROM Students
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollments
    WHERE CourseID IN (
        SELECT CourseID 
        FROM Courses 
        WHERE DepartmentID = 233
    )
);
