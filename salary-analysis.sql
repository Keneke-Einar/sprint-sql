SELECT 
    first_name, 
    last_name, 
    department_id, 
    salary, 
    (
        SELECT name 
        FROM departments 
        WHERE departments.department_id = employees.department_id
    ) AS department_name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE employees.department_id = e2.department_id
) AND (
    SELECT budget
    FROM departments
    WHERE departments.department_id = employees.department_id
) > (
    SELECT AVG(budget)
    FROM departments
) AND salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;