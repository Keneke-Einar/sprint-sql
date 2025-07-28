SELECT department_id, ROUND(AVG(salary)) AS average_salary, MAX(salary) AS max_salary
FROM employees
WHERE position LIKE '%Engineer%'
    OR position LIKE '%Manager%'
GROUP BY department_id
HAVING average_salary > 10000
    AND max_salary < 1000000
ORDER BY max_salary DESC;