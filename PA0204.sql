/******************************************************************
PA0204 - Use Column and Table Aliases
******************************************************************/
USE TrainingAcademyDB; 
SELECT StudentID AS Student_Number
from Students;
SELECT FirstName AS Student_Name
from Students;
SELECT LastName AS Student_Surname 
from Students;
SELECT RegistrationDate AS Registration_Date
from Students;