CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;
CREATE TABLE IF NOT EXISTS sales (
 order_id INT PRIMARY KEY, order_date DATE, region VARCHAR(30),
 category VARCHAR(50), product VARCHAR(50), quantity INT,
 unit_price DECIMAL(12,2), unit_cost DECIMAL(12,2)
);
-- Import data/sales.csv using Workbench Table Data Import Wizard.
SELECT COUNT(*) AS row_count FROM sales;
SELECT region, SUM(quantity*unit_price) revenue,
 SUM(quantity*(unit_price-unit_cost)) profit,
 ROUND(100*SUM(quantity*(unit_price-unit_cost))/NULLIF(SUM(quantity*unit_price),0),2) margin_pct
FROM sales GROUP BY region ORDER BY revenue DESC;
SELECT product, SUM(quantity*unit_price) revenue FROM sales GROUP BY product ORDER BY revenue DESC;
SELECT DATE_FORMAT(order_date,'%Y-%m') month, SUM(quantity*unit_price) revenue FROM sales GROUP BY month ORDER BY month;
