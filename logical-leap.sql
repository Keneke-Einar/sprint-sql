SELECT first_name, last_name, email 
FROM students
WHERE test_score > '85' AND '2023-10-01' > enrollment_date AND '1900-01-01' < enrollment_date