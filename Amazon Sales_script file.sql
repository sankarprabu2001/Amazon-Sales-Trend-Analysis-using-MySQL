### 1. Create the Database Name
create database amazon_sales

### 2. Create New Table and Import the Dataset
SELECT & FROM sales

### 3. identify the Month from Order Date using Extract
SELECT Order_Date,EXTRACT(MONTH FROM STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS month
FROM sales
LIMIT 10

### 4. Group by year and month
SELECT 
    YEAR(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS month,
    COUNT(*) AS total_orders
FROM sales
GROUP BY year, month
ORDER BY year, month

### 5. Sum of sales by Year and Month
SELECT 
    YEAR(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS month,
    SUM(Sales) AS monthly_revenue
FROM sales
GROUP BY YEAR, MONTH
ORDER BY year, month

### 6. Unique order by year and month 
SELECT 
    YEAR(STR_TO_DATE(Order_Date , '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(Order_Date , '%Y-%m-%d')) AS month,
    COUNT(DISTINCT Order_ID) AS monthly_order_volume
FROM sales
GROUP BY YEAR, MONTH
ORDER BY year, month

### 7. Highest revenue by Sorting
SELECT 
    YEAR(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(Order_Date, '%Y-%m-%d')) AS month,
    SUM(Sales) AS monthly_revenue
FROM sales
GROUP BY YEAR, MONTH
ORDER BY monthly_revenue desc

### 8. Filter the Specific year 
SELECT 
    YEAR(STR_TO_DATE(Order_Date , '%Y-%m-%d')) AS year,
    MONTH(STR_TO_DATE(Order_Date , '%Y-%m-%d')) AS month
FROM sales
WHERE 
    STR_TO_DATE(Order_Date , '%Y-%m-%d') BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY year, month
ORDER BY month







