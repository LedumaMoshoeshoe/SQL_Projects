-- Query to generate customized student reports
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    age,
    email_address,
    CASE 
        WHEN enrolled_flag = 1 THEN 'Enrolled'
        ELSE 'Not Enrolled'
    END AS enrollment_status
FROM Students;
