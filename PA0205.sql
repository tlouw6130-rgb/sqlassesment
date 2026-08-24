/******************************************************************
PA0205 - Use a Simple CASE Expression
******************************************************************/
USE TrainingAcademyDB; 

SELECT 
EnrollmentID,
StudentID,
FinalMark,
CASE
	WHEN FinalMark >= 75 THEN "Distinction"
	WHEN FinalMark >= 60 THEN 'Competent'
	WHEN FinalMark >= 50 THEN 'Pass'
ELSE 'Not Yet Competent'
END AS ResultsCategorgy
from Enrollments;