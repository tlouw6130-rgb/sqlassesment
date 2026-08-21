/******************************************************************
PA1301 – Pivot and Group Sets
******************************************************************/
USE TrainingAcademyDB;

SELECT PaymentMethod,
       COUNT(*) AS NumberOfPayments,
       SUM(Amount) AS TotalPayments
FROM Payments
GROUP BY PaymentMethod;

