SELECT first_name || ' ' || last_name AS full_name,
CASE 
    WHEN salary > '75000' THEN 'High'
    WHEN salary BETWEEN '50000' AND '75000' THEN 'Medium'
    ELSE 'Low'
END AS salary_category,
CASE
    WHEN department_id BETWEEN 1 AND 5 THEN 'Core Team'
    WHEN department_id BETWEEN 6 AND 10 THEN 'Support Team'
END AS employee_type
FROM employees
ORDER BY full_name DESC;