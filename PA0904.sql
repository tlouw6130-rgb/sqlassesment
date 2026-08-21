/******************************************************************
PA0904- Use Correlated Subqueries and EXISTS
******************************************************************/
USE TrainingAcademyDB;

SELECT StudentID, FirstName 
FROM Students
WHERE EXISTS (
    SELECT 1 
    FROM Enrollments 
    WHERE Enrollments.StudentID = Students.StudentID
);

SELECT StudentID, FirstName 
FROM Students
WHERE NOT EXISTS (
    SELECT 1 
    FROM Enrollments 
    WHERE Enrollments.StudentID = Students.StudentID
);


SELECT S.StudentID, S.FirstName, S.LastName, E.FinalMark
FROM Students AS S
JOIN Enrollments AS E
    ON S.StudentID = E.StudentID
WHERE E.FinalMark > (
    SELECT AVG(E2.FinalMark)
    FROM Enrollments AS E2
    WHERE E2.StudentID = S.StudentID
);
