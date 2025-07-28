SELECT first_name, last_name, (
    SELECT name
    FROM departments
    WHERE department_id = 2
) AS department_name
FROM employees
WHERE department_id = 2 
ORDER BY last_name DESC;