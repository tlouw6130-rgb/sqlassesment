/******************************************************************
PA1303 – Write Queries That Use UNPIVOT
******************************************************************/
USE TrainingAcademyDB;

CREATE TABLE AssessmentMarks (
    StudentID INT,
    AssignmentMark INT,
    TestMark INT,
    ExamMark INT
);

INSERT INTO AssessmentMarks VALUES
(2005, 75, 80, 85),
(2006, 65, 70, 78),
(2004, 80, 72, 90);

SELECT StudentID, 'Assignment' AS Assessment, AssignmentMark AS Mark
FROM AssessmentMarks

UNION ALL

SELECT StudentID, 'Test' AS Assessment, TestMark AS Mark
FROM AssessmentMarks

UNION ALL

SELECT StudentID, 'Exam' AS Assessment, ExamMark AS Mark
FROM AssessmentMarks;

