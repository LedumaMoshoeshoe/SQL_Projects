ALTER TABLE Students ADD COLUMN assessment_score INT;

-- Query to convert email addresses to lowercase and classify students
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    age,
    LOWER(email_address) AS lowercase_email,
    CASE 
        WHEN assessment_score >= 90 THEN 'Advanced'
        WHEN assessment_score >= 70 THEN 'Intermediate'
        ELSE 'Beginner'
    END AS student_category
FROM Students;
-- Note: You need to add the assessment_score column to the Students table to run this query.
