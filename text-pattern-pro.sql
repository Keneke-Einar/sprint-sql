SELECT 
CASE
    WHEN budget > '1000000' THEN UPPER(name) || ' - LARGE BUDGET'
    WHEN budget BETWEEN '650001' AND '1000000' THEN UPPER(SUBSTR(name,1,1)) || SUBSTR(name,2) || ' - Medium Budget'
    ELSE LOWER(name) || ' - small budget'
END AS department_display
FROM departments
ORDER BY department_display DESC;

SELECT last_name || ', ' || first_name || ' - ' || position AS employee_info
FROM employees
WHERE (first_name LIKE '_a%' OR first_name LIKE '_e%')
AND (position LIKE '%Manager' OR position LIKE '%Analyst')
ORDER BY employee_info ASC;

SELECT 'Product: ' || name || ' | Price: ' || price || ' | Rating: ' || rating AS product_summary
FROM products
WHERE name NOT LIKE '% % %'
    AND name LIKE '% %'
    AND rating > (SELECT AVG(rating) FROM products)
ORDER BY product_summary DESC;