CREATE DATABASE Customer_Segmentation;
SELECT * FROM clean_customer_data
LIMIT 10;

SELECT COUNT(*)
FROM clean_customer_data
;

-- Income distribution
SELECT Income_Level, COUNT(*) AS total
FROM clean_customer_data
GROUP BY Income_Level;

-- Spending distribution
SELECT Spending_Group, COUNT(*) AS total
FROM clean_customer_data
GROUP BY Spending_Group;

-- Key segmentation
SELECT 
  Income_Level,
  Spending_Group,
  COUNT(*) AS customers
FROM clean_customer_data
GROUP BY Income_Level, Spending_Group
ORDER BY customers DESC;

-- Customer activity
SELECT Customer_Status, COUNT(*) AS Status
FROM clean_customer_data
GROUP BY Customer_Status;

-- City performance
SELECT City, COUNT(*) AS customers
FROM clean_customer_data
GROUP BY City
ORDER BY customers DESC;

-- Age behavior
SELECT Customer_Age_Group, AVG(Spending_Score)
FROM clean_customer_data
GROUP BY Customer_Age_Group;
