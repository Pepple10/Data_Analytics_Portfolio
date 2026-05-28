-- Top selling products --
SELECT Product, SUM(Quantity) AS total_units_sold
FROM orders_cleaned
GROUP BY Product
ORDER BY total_units_sold DESC
;
-- Monthly revenue trend --
SELECT DATE_FORMAT(STR_TO_DATE(Order_Date, '%c/%e/%Y'), '%Y-%m') AS mnth,
ROUND(SUM(Revenue), 2) AS total_revenue
FROM orders_cleaned
WHERE Order_Status = 'Completed'
AND Order_Date IS NOT NULL
AND Order_Date != ' '
GROUP BY mnth
ORDER BY mnth
;

-- Best marketing channel --
SELECT Marketing_Channel, ROUND(SUM(Revenue), 2) AS total_revenue,
COUNT(*) AS total_orders,
ROUND(AVG(Revenue),2) AS avg_order
FROM orders_cleaned
WHERE Order_Status = 'Completed'
GROUP BY Marketing_Channel
ORDER BY total_revenue DESC
;

-- Total spent by each customer--
SELECT
cus.Customer_ID,
cus.Customer_Name,
cus.Customer_Segment,
ROUND(SUM(ord.Revenue), 2) AS lifetime_value
FROM customers_cleaned AS cus
JOIN orders_cleaned AS ord
ON cus.Customer_ID = ord.Customer_ID
WHERE ord.Order_Status = 'Completed'
GROUP BY cus.Customer_ID, cus.Customer_Name, cus.Customer_Segment
ORDER BY lifetime_value DESC
LIMIT 20;

-- Most common support issue --
SELECT Issue_Type,
COUNT(*) AS  total_tickets,
ROUND(AVG(Satisfaction_Score), 2) AS avg_satisfaction
FROM support_tickets_cleaned
GROUP BY Issue_Type
ORDER BY total_tickets DESC
;

-- Revenue by City --
SELECT
cus.City,
ROUND(SUM(ord.Revenue),2) AS total_revenue,
COUNT( DISTINCT cus.Customer_ID) AS unique_customers
FROM customers_cleaned AS cus
JOIN orders_cleaned AS ord
ON cus.Customer_ID = ord.Customer_ID
WHERE Order_Status = 'Completed'
GROUP BY cus.City
ORDER BY total_revenue DESC
;

-- VIP spending compared to others --
SELECT 
cus.Customer_Segment,
COUNT(DISTINCT cus.Customer_ID) AS customer_count,
ROUND(SUM(ord.Revenue), 2) AS total_revenue,
ROUND(AVG(ord.Revenue), 2) AS avg_revenue,
COUNT(ord.Order_ID) AS total_orders
FROM customers_cleaned AS cus
JOIN orders_cleaned AS ord
ON cus.Customer_ID = ord.Customer_ID
WHERE ord.Order_Status = 'Completed'
GROUP BY cus.Customer_Segment
ORDER BY total_revenue DESC
;

