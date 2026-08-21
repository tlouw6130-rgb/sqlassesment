/******************************************************************
PA1504 – Use Variables in Dynamic SQL
******************************************************************/
USE TrainingAcademyDB;

SET @City = 'Kimberley';

SET @sql = 'SELECT * FROM Students WHERE City = ?';

PREPARE stmt FROM @sql;
EXECUTE stmt USING @City;
DEALLOCATE PREPARE stmt;
