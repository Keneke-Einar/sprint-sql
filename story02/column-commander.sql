SELECT first_name, last_name
FROM employees
WHERE department_id = 1
ORDER BY first_name;

SELECT email AS contact_info, position AS job_title
FROM employees
WHERE position = 'Lead Engineer';

SELECT first_name || last_name AS given_name, salary AS monthly_income
FROM employees
ORDER BY salary DESC, given_name;