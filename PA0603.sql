/******************************************************************
PA0603 - Insert Records With DML
******************************************************************/
USE TrainingAcademyDB;

--  NEW STUDENT

INSERT INTO Students (StudentID, FirstName, LastName, Email, Phone, DateOfBirth, RegistrationDate, City, Status)
VALUES
(2001, 'Naledi', 'Mokoena', 'nmokoena@gmail.com', '0987765432', '2001-09-27', '2026-05-20', 'Kimberley', 'Registered');

SELECT *FROM Students;

--  NEW COURSE 

INSERT INTO Courses (CourseID, CourseName, DepartmentID, DurationMonths, CourseFee)
VALUES
(36890, "Balistics", 110, 24, 20000 );

SELECT *FROM Courses;

--  NEW ENROLLMENT

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate, FinalMark, EnrollmentStatus)
VALUES
(20269, 2001, 34555,2026-04-20, 75, "Enrolled" );

SELECT *FROM Enrollments;

--  NEW PAYMENT

INSERT INTO Payments (PaymentID, StudentID, Amount, PaymentDate, PaymentMethod)
VALUES (70501, 2001, 15000, '2026-04-20', 'EFT');

SELECT *FROM Payments;

