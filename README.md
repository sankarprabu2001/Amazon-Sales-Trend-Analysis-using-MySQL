# Amazon-Sales-Trend-Analysis-using-MySQL
This project analyzes Amazon sales data to cover key trends in monthly revenue and order volume using SQL queries

## 📁 Dataset
The dataset contains raw sales records exported from an Excel file, including fields like:
- Order ID
- Order Date
- Sales Amount

> 📌 Note: Dates were originally in string format and converted to proper `DATE` types using `STR_TO_DATE()` for accurate analysis.

## 🎯 Objectives
- Analyze total orders per month
- Calculate monthly revenue
- Identify high-performing months
- Filter data by specific years (e.g., 2024)
- Apply common SQL functions and aggregations

## 🛠 Tools & Technologies
- **MySQL** for query execution
- **CSV** for raw data
- SQL functions used:
  - `STR_TO_DATE()`
  - `YEAR()`, `MONTH()`
  - `EXTRACT()`
  - `COUNT()`, `SUM()`
  - `GROUP BY`, `ORDER BY`, `LIMIT`





