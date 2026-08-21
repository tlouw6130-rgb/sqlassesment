/******************************************************************
PA1103 – Use CROSS APPLY and OUTER APPLY
******************************************************************/
USE TrainingAcademyDB;

-- MYSQL does not support these keywords. 
-- However the same result can be achieved with inner join and left join.alter

-- INNER JOIN 
SELECT 
    Students.StudentID, 
    Students.FirstName, 
    Enrollments.CourseID
FROM Students 
INNER JOIN Enrollments  
  ON Students.StudentID = Enrollments.StudentID;

-- LEFT JOIN 
SELECT 
   Students.StudentID, 
    Students.FirstName, 
    Enrollments.CourseID, 
    Enrollments.FinalMark
FROM Students 
LEFT JOIN Enrollments 
    ON Students.StudentID = Enrollments.StudentID;

