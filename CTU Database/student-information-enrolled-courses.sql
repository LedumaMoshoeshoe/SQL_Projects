-- Query to retrieve student information and their enrolled courses
SELECT 
    CONCAT(S.first_name, ' ', S.last_name) AS student_name,
    S.email_address,
    C.course_name
FROM Students S
INNER JOIN Enrollments E ON S.student_id = E.student_id
INNER JOIN Courses C ON E.course_id = C.course_id
WHERE S.enrolled_flag = 1
ORDER BY student_name;
