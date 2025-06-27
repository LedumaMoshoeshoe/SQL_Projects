-- Query to calculate and display the average score for each course
SELECT 
    C.course_name,
    COUNT(E.student_id) AS num_students_enrolled,
    AVG(S.assessment_score) AS average_score
FROM Courses C
LEFT JOIN Enrollments E ON C.course_id = E.course_id
LEFT JOIN Students S ON E.student_id = S.student_id
GROUP BY C.course_name;
-- Note: You need to add the assessment_score column to the Students table to run this query.
