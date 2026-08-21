/******************************************************************
PA1101 – Use Set Operators
******************************************************************/
USE TrainingAcademyDB;

SELECT City 
FROM Students
WHERE City = 'Pretoria'
UNION
SELECT City
FROM Students
WHERE City = 'Cape Town';

-- Result: A list of unique cities across both tables.



