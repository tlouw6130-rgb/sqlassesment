/******************************************************************
PA0104 - Execute Queries That Sort Data Using ORDER BY
******************************************************************/
USE TrainingAcademyDB;

SELECT FirstName, LastName
from Students
Order By LastName ASC; 

SELECT CourseFee
from Courses
Order By CourseFee Desc;

SELECT City, LastName
from Students;

SELECT FinalMark
from Enrollments
Order By FinalMark Desc;