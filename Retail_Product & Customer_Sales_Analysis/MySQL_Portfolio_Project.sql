CREATE VIEW combined_sales AS
SELECT
sal.Sale_ID,
sal.Customer_ID,
cus.Customer_name,
cus.City,
pro.Product_Name,
pro.Category,
pro.Product_ID,
sal.Quantity_Sold,
sal.Revenue,
sal.Sale_Date
FROM cleaned_sales sal
JOIN cleaned_products pro ON sal.Product_ID = pro.Product_ID
JOIN cleaned_customers cus ON sal.Customer_ID = cus.Customer_ID
;

-- Total Revenue per Product

SELECT product_Name, SUM(Revenue) AS total_revnue
FROM combined_sales
GROUP BY product_Name
ORDER BY total_revnue DESC;

-- Revenue by customer

SELECT Customer_name, SUM(Revenue) AS total_revnue
FROM combined_sales
GROUP BY Customer_name
ORDER BY total_revnue DESC;

-- Revenue by category

SELECT Category, SUM(Revenue) AS Category_revnue
FROM combined_sales
GROUP BY Category
ORDER BY Category_revnue DESC;

-- Monthly sales Trend

SELECT date_format(Sale_Date, '%Y-%m') AS month_, SUM(Revenue) AS monthly_revenue
FROM combined_sales
GROUP BY month_
ORDER BY month_;

select * 
FROM combined_sales
;


