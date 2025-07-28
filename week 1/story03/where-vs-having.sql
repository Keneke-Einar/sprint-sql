SELECT department_id, ROUND(AVG(salary)) AS average_salary
FROM employees
WHERE hire_date > '2015-05-18'
GROUP BY department_id
HAVING average_salary > 33333
ORDER BY department_id;