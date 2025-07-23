SELECT department_id, COUNT(*) AS employee_count, ROUND(AVG(salary), 3) AS average_salary
FROM employees
GROUP BY department_id
HAVING employee_count > 2 AND average_salary < '75000'
ORDER BY department_id