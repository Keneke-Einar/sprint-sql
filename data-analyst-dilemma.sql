SELECT rating, 
    SUM(price * quantity) AS total_inventory_value
FROM products 
GROUP BY rating
HAVING (SELECT SUM(price * quantity) AS total_inventory_value FROM products) > 20000
    AND (SELECT ROUND(AVG(rating)) AS average_rating FROM products) + 50000
ORDER BY total_inventory_value;