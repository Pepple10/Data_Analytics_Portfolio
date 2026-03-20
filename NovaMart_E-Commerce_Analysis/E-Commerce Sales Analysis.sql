CREATE DATABASE novamart;

select count(*) 
from customers_clean
;

SELECT ROUND(SUM(price),2) AS total_revenue
FROM order_items_cleaned
;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders_cleaned
;


SELECT 
ROUND(SUM(price)
/COUNT(DISTINCT order_id),2) AS avg_order_value
FROM order_items_cleaned
;

select
pro.product_category,
round(SUM(ord.price),2) AS revenue
FROM order_items_cleaned ord
JOIN products_cleaned pro 
ON ord.product_id = pro.product_id
GROUP BY pro.product_category
ORDER BY revenue DESC
LIMIT 6;

select
cus.customer_state,
round(SUM(ord.price),2) AS revenue
FROM customers_clean cus 
JOIN orders_cleaned orde  
ON orde.customer_id = cus.customer_id
JOIN order_items_cleaned ord 
ON orde.order_id = ord.order_id
GROUP BY cus.customer_state
ORDER BY revenue DESC
;


SELECT
payment_type,
COUNT(*) AS total_payments
FROM payments_cleaned
GROUP BY payment_type
ORDER BY total_payments 
DESC;

SELECT
order_status,
COUNT(*) AS orders
FROM orders_cleaned
GROUP BY order_status
;