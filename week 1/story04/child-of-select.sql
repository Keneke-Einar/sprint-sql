SELECT first_name, last_name,
ROUND((
    SELECT AVG(salary)
    FROM employees e2
    WHERE e2.department_id = employees.department_id
)) AS department_avg_salary
FROM employees
ORDER BY department_avg_salary DESC;