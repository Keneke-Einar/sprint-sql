ALTER TABLE students ADD COLUMN test_score INTEGER;

UPDATE students
SET test_score = CASE first_name
    WHEN 'Mustafa' THEN 90
    WHEN 'Arthur' THEN 85
    WHEN 'Elnar' THEN 88
    WHEN 'Charlotte' THEN 95
    WHEN 'Edmond' THEN 70
    WHEN 'Mercedes' THEN 75
    WHEN 'Albert' THEN 99
END