/******************************************************************
    PA0101 - Introduction to SQL Querying
******************************************************************/
Create Database TrainingAcademyDB;
USE TrainingAcademyDB;

Create Table Departments(
DepartmentID Int,
DepartmentName Varchar(200),
Location Varchar(200)
);
Insert into Departments(DepartmentID, DepartmentName, Location)
Values
(223 ,"Criminal Law", "Pretoria"),
(103 ,"Accounting ", "Johhanesburg"),
(302 ," Technology", "Pretoria"),
(293 ," History", "Kimberley"),
(105 ," Hummanities", "Pretoria");

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



Create Table Lecturers(
LecturerID Int,
FirstName Varchar(200),
LastName Varchar(200),
DepartmentID Int,
Email Varchar(200),
Salary Int,
HireDate Int
);
Insert into Lecturers( LecturerID, FirstName, LastName, DepartmentID, Email, Salary, HireDate)
Values
(0143, "Mariam", "Musa", 223, "mariammusa@gmail.com" , 78000, 2003-06-25),
(0155, "Leonardo", "Blue", 103, "leoblue@gmail.com" , 89000, 2007-07-17),
(0167, "Raphael", "Red", 302, "raphaelrred@gmail.com" , 65000, 2007-06-16),
(0177, "Michealangelo", "Orange", 293, "mechealangelo@gmail.com" , 70000, 2007-05-25),
(0199, "Donnatello", "Yellow", 105, "donntelloyell@gmail.com" , 56000, 2007-08-30);



Create Table Enrollments(
EnrollmentID Int,
StudentID Int,
CourseID Int,
EnrollmentDate Int,
FinalMark Int,
EnrollmentStatus Varchar(200)
);
Insert into Enrollments( EnrollmentID, StudentID, CourseID, EnrollmentDate, FinalMark, EnrollmentStatus)
Values
(20261 , 2005, 33321, 2026-04-13, 89, "Enrolled"),
(20262 , 2006,  38906, 2026-04-15, 70, "Enrolled"),
(20263 , 2004, 39998, 2026-04-10, 65, "Enrolled"),
(20264 , 2002, 37756, 2026-04-13, 56, "Enrolled"),
(20265 , 2003, 36548, 2026-04-18, 98, "Enrolled");



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


Create Table Employees(
EmployeeID Int,
FirstName Varchar(200),
LastName Varchar(200),
ManagerID Int,
DepartmentID Int,
Salary Int
);

Insert into Employees(EmployeeID, FirstName, LastName, ManagerID, DepartmentID, Salary)
Values
( 1356, "Phaladi", "Mclaughlin", null, 233, 90000),
( 1349, "Bontle", "Grace", null, 105, 75000),
( 1398, "Rabi", "Small", 25009, 293, 97000),
( 1332, "Charlotte", "Smith", null, 103, 30000),
( 1327, "Liv", "Biggs", null, 302, 25000);

Show Tables;
Select *from Students;
/**********
SELECT -  specifies the exact columns or data fields you want to retrieve from the database.
FROM - identifies the specific table or tables where that data is stored.
WHERE - filters the rows, returning only the records that meet your specific conditions.
ORDER BY -  sorts the final results in either ascending (default) or descending order based on specified columns.
*********/


TRUNCATE TABLE Students;
TRUNCATE TABLE Lecturers;
TRUNCATE TABLE Enrollments;
TRUNCATE TABLE Payments;

-- Students table
ALTER TABLE Students MODIFY DateOfBirth VARCHAR(10);
ALTER TABLE Students MODIFY RegistrationDate VARCHAR(10);

-- Lecturers table
ALTER TABLE Lecturers MODIFY HireDate VARCHAR(10);

-- Enrollments table
ALTER TABLE Enrollments MODIFY EnrollmentDate VARCHAR(10);

-- Payments table
ALTER TABLE Payments MODIFY PaymentDate VARCHAR(10);

-- Re-insert Students with literal strings
INSERT INTO Students(StudentID, FirstName, LastName, Email, Phone, DateOfBirth, RegistrationDate, City, Status)
VALUES
(2005, 'Lee-shaan', 'Kruger', 'lskruger@gmail.com', 0987654321, '2005-08-31', '2026-04-16', 'Johannesburg', 'Registered'),
(2006, 'Leigh- Rae', 'Booysen', 'leighrae@gmail.com', 0812234567, '2006-02-02', '2026-04-16', 'Pretoria', 'Registered'),
(2004, 'Caitlin', 'Mclean', 'caitlinlmcleanr@gmail.com', 0798863345, '2004-04-26', '2026-04-16', 'Cape Town', 'Registered'),
(2002, 'Mojalefa', 'Maarman', 'mojalefamaarman@gmail.com', 0645598765, '2002-04-03', '2026-04-16', 'Kimberley', 'Registered'),
(2003, 'Tshepo', 'Louw', 'tlouw@gmail.com', 0751128867, '2003-08-10', '2026-04-16', 'Kimberley', 'Registered');

-- Re-insert Lecturers with literal strings
INSERT INTO Lecturers(LecturerID, FirstName, LastName, DepartmentID, Email, Salary, HireDate)
VALUES
(0143, 'Mariam', 'Musa', 223, 'mariammusa@gmail.com', 78000, '2003-06-25'),
(0155, 'Leonardo', 'Blue', 103, 'leoblue@gmail.com', 89000, '2007-07-17'),
(0167, 'Raphael', 'Red', 302, 'raphaelrred@gmail.com', 65000, '2007-06-16'),
(0177, 'Michealangelo', 'Orange', 293, 'mechealangelo@gmail.com', 70000, '2007-05-25'),
(0199, 'Donnatello', 'Yellow', 105, 'donntelloyell@gmail.com', 56000, '2007-08-30');

-- Re-insert Enrollments with literal strings
INSERT INTO Enrollments(EnrollmentID, StudentID, CourseID, EnrollmentDate, FinalMark, EnrollmentStatus)
VALUES
(20261, 2005, 33321, '2026-04-13', 89, 'Enrolled'),
(20262, 2006, 38906, '2026-04-15', 70, 'Enrolled'),
(20263, 2004, 39998, '2026-04-10', 65, 'Enrolled'),
(20264, 2002, 37756, '2026-04-13', 56, 'Enrolled'),
(20265, 2003, 36548, '2026-04-18', 98, 'Enrolled');

-- Re-insert Payments with literal strings
INSERT INTO Payments(PaymentID, StudentID, Amount, PaymentDate, PaymentMethod)
VALUES
(007, 2005, 9000, '2026-05-04', 'EFT Transaction'),
(016, 2006, 3000, '2026-06-08', 'Cash Deposit'),
(045, 2004, 7600, '2026-05-12', 'EFT Transaction'),
(098, 2002, 9500, '2026-07-03', 'Cash Deposit'),
(023, 2003, 8500, '2026-03-09', 'EFT Transaction');
