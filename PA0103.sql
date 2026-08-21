/*****************************************************************
PA0103 - Execute Queries That Filter Data Using Predicates
******************************************************************/

USE TrainingAcademyDB;

Create Table Students(
StudentID Int,
FirstName Varchar(200),
LastName Varchar(200),
Email Varchar(200),
Phone Int,
DateOfBirth Int ,
RegistrationDate Int,
City Varchar(200),
Status Varchar(200)
);

Create Table Courses(
CourseID Int,
CourseName Varchar(200),
DepartmentID Int,
DurationMonths Varchar(200),
CourseFee Int
);

SELECT *from Students
Where City = "Kimberley";
 SELECT *from Courses
 Where CourseFee >5000;
 SELECT *from Students
 Where LastName LIKE "M%";
 SELECT *from Courses
 Where CourseFee BETWEEN 3000 AND 10000;
 SELECT *from Students
 WHERE City IN ('Kimberley', 'Johannesburg', 'Pretoria');