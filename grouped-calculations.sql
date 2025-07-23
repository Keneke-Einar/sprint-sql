SELECT rating, AVG(price) AS avg_price, SUM(quantity) AS total_quantity
FROM products
ORDER BY rating DESC;