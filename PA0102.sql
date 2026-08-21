/******************************************************************
    PA0102 - Execute Basic SELECT Statements
******************************************************************/
Create Database TrainingAcademyDB;
USE TrainingAcademyDB;

Create Table Courses(
CourseID Int,
CourseName Varchar(200),
DepartmentID Int,
DurationMonths Varchar(200),
CourseFee Int
);
Insert into Courses(CourseID, CourseName, DepartmentID, DurationMonths, CourseFee)
Values
( 33321, "Criminology", 233, 12, 4500),
( 38906, "Pathology", 233, 12, 5000),
( 39998, "Accounting", 103, 10, 3000),
( 37756, "Information Technology", 302, 24, 9000),
( 36548, "History", 293, 12, 8000);




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
Insert into Students(StudentID, FirstName, LastName, Email, Phone, DateOfBirth, RegistrationDate, City, Status)
Values
( 2005, "Lee-shaan", "Kruger", "lskruger@gmail.com", 0987654321, 2005-08-31, 2026-04-16, "Johannesburg", "Registered"),
( 2006, "Leigh- Rae", "Booysen", "leighrae@gmail.com", 0812234567, 2006-02-02, 2026-04-16, "Pretoria", "Registered"),
( 2004, "Caitlin", "Mclean", "caitlinlmcleanr@gmail.com", 0798863345, 2004-04-26, 2026-04-16, "Cape Town", "Registered"),
( 2002, "Mojalefa", "Maarman", "mojalefamaarman@gmail.com", 0645598765, 2002-04-03, 2026-04-16, "Kimberley", "Registered"),
( 2003, "Tshepo", "Louw", "tlouw@gmail.com", 0751128867, 2003-08-10, 2026-04-16, "Kimberley", "Registered");



Create Table Payments(
PaymentID Int,
StudentID Int,
Amount Int,
PaymentDate Int,
PaymentMethod Varchar(200)
);
Insert into Payments(PaymentID, StudentID, Amount, PaymentDate,PaymentMethod)
Values
( 007, 2005, 9000, 2026-05-04, "EFT Transaction"),
( 016, 2006, 3000, 2026-06-08, "Cash Deposit"),
( 045, 2004, 7600, 2026-05-12, "EFT Transaction"),
( 098, 2002, 9500, 2026-07-03, "Cash Deposit"),
( 023, 2003, 8500, 2026-03-09, "EFT Transaction");


SELECT *from Students;
SELECT FirstName, LastName, Email
from Students;

SELECT *from Courses; 
SELECT *from Payments;