/******************************************************************
PA0804- Use DISTINCT Aggregate Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT COUNT(DISTINCT city) AS UniqueCities 
FROM Students;

SELECT COUNT(DISTINCT CourseID) AS ActiveEnrolledCourses 
FROM Enrollments;

SELECT COUNT(DISTINCT PaymentMethod) AS UniquePaymentMethods 
FROM Payments;
