SELECT 
CASE
    WHEN budget > '1000000' THEN UPPER(name) || ' - LARGE BUDGET'
    WHEN budget BETWEEN '500000' AND '1000000' THEN UPPER(SUBSTR(name,1,1)) || ' - Medium'
    ELSE LOWER(name) || ' - small budget'
END AS department_display
FROM departments
ORDER BY department_display DESC;

SELECT last_name || ', ' || first_name || ' - ' || position
FROM employees
WHERE first_name LIKE '_a%'
    OR first_name LIKE '_e%',
WHERE position LIKE '%Manager'
    OR position LIKE '%Analyst'
ORDER BY employee_info ASC;

SELECT product_summary
FROM products
WHERE name NOT LIKE '% % %'
    AND name LIKE '% %'
    AND rating > (SELECT AVG(rating) FROM products)
ORDER BY product_summary DESC;