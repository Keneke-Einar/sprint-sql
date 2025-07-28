SELECT first_name, last_name
FROM employees
WHERE department_id = (
    SELECT department_id 
    FROM departments
    WHERE budget = (SELECT MAX(budget) FROM departments)
)
ORDER BY first_name;