-- ============================================================
-- ADVANCED SQL QUERIES
-- SALES DATA MANAGEMENT SYSTEM
-- ============================================================


-- ============================================================
-- 1. TOP 3 HIGHEST SPENDING CUSTOMERS
-- Purpose: Identify top customers based on total order amount
-- Output: customer name, total spending
-- ============================================================
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;


-- ============================================================
-- 2. CUSTOMERS WITH NO ORDERS
-- Purpose: Find inactive customers
-- Output: customer names with no orders
-- ============================================================
SELECT name
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id FROM orders
);


-- ============================================================
-- 3. TOTAL SALES PER REGION
-- Purpose: Calculate revenue by region
-- Output: region, total sales
-- ============================================================
SELECT c.region, SUM(s.total_price) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN sales s ON o.order_id = s.order_id
GROUP BY c.region;


-- ============================================================
-- 4. PRODUCTS NEVER ORDERED
-- Purpose: Find products with no sales
-- Output: product_name
-- ============================================================
SELECT product_name
FROM products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id FROM order_items
);


-- ============================================================
-- 5. CUSTOMER ORDER COUNT (HAVING)
-- Purpose: Customers with more than 1 order
-- Output: customer name, order count
-- ============================================================
SELECT c.name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;


-- ============================================================
-- 6. RANK PRODUCTS BY PRICE (WINDOW FUNCTION)
-- Purpose: Rank products based on price
-- Output: product_name, price, rank
-- ============================================================
SELECT product_name, price,
RANK() OVER (ORDER BY price DESC) AS price_rank
FROM products;


-- ============================================================
-- 7. RUNNING TOTAL OF SALES
-- Purpose: Calculate cumulative sales over time
-- Output: sale_date, total_price, running_total
-- ============================================================
SELECT sale_date, total_price,
SUM(total_price) OVER (ORDER BY sale_date) AS running_total
FROM sales;


-- ============================================================
-- 8. CASE STATEMENT FOR ORDER STATUS
-- Purpose: Categorize orders
-- Output: order_id, category (High/Low Value)
-- ============================================================
SELECT order_id,
CASE
    WHEN total_amount > 30000 THEN 'High Value'
    WHEN total_amount BETWEEN 10000 AND 30000 THEN 'Medium Value'
    ELSE 'Low Value'
END AS order_category
FROM orders;


-- ============================================================
-- 9. MOST SOLD PRODUCT
-- Purpose: Identify top-selling product
-- Output: product_name, total_quantity
-- ============================================================
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 1;


-- ============================================================
-- 10. AVERAGE ORDER VALUE PER CUSTOMER
-- Purpose: Calculate average spending
-- Output: customer name, avg_order_value
-- ============================================================
SELECT c.name, AVG(o.total_amount) AS avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;


-- ============================================================
-- ADVANCED QUERY EXECUTION COMPLETED
-- ============================================================