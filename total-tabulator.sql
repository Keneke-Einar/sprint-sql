SELECT rating, ROUND(SUM(quantity * price), 1) AS total_value 
FROM products
GROUP BY rating
ORDER BY total_value DESC;