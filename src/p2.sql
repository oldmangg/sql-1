SELECT c.customer_name, o.order_date, SUM(i.price * s.quantity) AS total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN sales s ON o.order_id = s.order_id
JOIN inventories i ON s.product_id = i.product_id
WHERE c.city = 'New York'
GROUP BY c.customer_name, o.order_date;
