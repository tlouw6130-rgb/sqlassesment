/******************************************************************
PA1505 – Use Synonyms
******************************************************************/
USE TrainingAcademyDB;

CREATE VIEW StudentData AS
SELECT *
FROM Students;

SELECT *
FROM StudentData;
