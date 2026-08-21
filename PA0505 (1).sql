/******************************************************************
PA0505 - Use Character Functions
******************************************************************/
USE TrainingAcademyDB;

SELECT 
    
    CONCAT(FirstName, ' ', LastName) AS FullName,
    
    UPPER(LastName) AS LoudSurname,
    
    LOWER(Email) AS CleanEmail,
	
      REPLACE(Students.Status, 'Registered', 'Active') AccountStatus,
      
    LEFT(City, 3) AS CityCode
FROM Students;
