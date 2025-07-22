-- SELECT column_1
-- FROM table_1
-- WHERE column_1 = (
--    SELECT column_1 
--    FROM table_2
-- );

SELECT first_name, last_name, position, salary, department_id, hire_date
FROM employees
WHERE position LIKE '%Engineer%' AND salary > '50000'
ORDER BY first_name DESC;

SELECT first_name, last_name, position, salary, department_id, hire_date
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE name = 'Human Resources' OR name = 'Finance'
)
ORDER BY first_name DESC;

SELECT first_name, last_name, position, salary, department_id, hire_date
FROM employees
WHERE department_id NOT IN (
    SELECT department_id
    FROM departments
    WHERE name = 'Logistics'
) AND salary > 50000
ORDER BY first_name DESC;

SELECT first_name, last_name, position, salary, department_id, hire_date
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE name = 'Analytics'
) 
AND hire_date BETWEEN '2012-01-01' AND '2016-12-31'
AND salary < 70000
ORDER BY first_name DESC;