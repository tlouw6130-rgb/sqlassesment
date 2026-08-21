/******************************************************************
PA1304 – Use GROUPING SETS, CUBE and ROLLUP
******************************************************************/
USE TrainingAcademyDB;

SELECT PaymentMethod, SUM(Amount) AS TotalPayments
FROM Payments
GROUP BY PaymentMethod

UNION ALL

SELECT NULL, SUM(Amount)
FROM Payments;



SELECT PaymentMethod, SUM(Amount) AS TotalPayments
FROM Payments
GROUP BY PaymentMethod WITH ROLLUP;



SELECT PaymentMethod, StudentID, SUM(Amount) AS TotalPayments
FROM Payments
GROUP BY PaymentMethod, StudentID

UNION ALL

SELECT PaymentMethod, NULL, SUM(Amount)
FROM Payments
GROUP BY PaymentMethod

UNION ALL

SELECT NULL, StudentID, SUM(Amount)
FROM Payments
GROUP BY StudentID

UNION ALL

SELECT NULL, NULL, SUM(Amount)
FROM Payments;

