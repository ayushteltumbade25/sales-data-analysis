-- Create Database
CREATE DATABASE sales_project;
USE sales_project;

-- Create Table
CREATE TABLE sales (
    order_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    sales FLOAT,
    quantity INT,
    order_date DATE
);

-- Total Sales
SELECT SUM(sales) AS total_sales FROM sales;

-- Top 5 Products by Sales
SELECT product_name, SUM(sales) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM sales
GROUP BY category;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

-- Average Sales
SELECT AVG(sales) AS avg_sales FROM sales;

-- Highest Sale
SELECT * FROM sales
ORDER BY sales DESC
LIMIT 1;