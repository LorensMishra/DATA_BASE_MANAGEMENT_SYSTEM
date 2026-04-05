-- ============================================================
-- BASIC SQL QUERIES
-- SALES DATA MANAGEMENT SYSTEM
-- ============================================================


-- ============================================================
-- 1. VIEW ALL CUSTOMERS
-- Purpose: Retrieve all customer records
-- Output: Displays all rows from customers table
-- ============================================================
SELECT * FROM customers;


-- ============================================================
-- 2. VIEW ALL PRODUCTS
-- Purpose: Retrieve all product details
-- Output: Displays product list with price and stock
-- ============================================================
SELECT * FROM products;


-- ============================================================
-- 3. VIEW ALL ORDERS
-- Purpose: Retrieve all orders
-- Output: Displays order_id, customer_id, date, status
-- ============================================================
SELECT * FROM orders;


-- ============================================================
-- 4. SELECT SPECIFIC COLUMNS (CUSTOMERS)
-- Purpose: Display only name and region
-- Output: List of customer names with their regions
-- ============================================================
SELECT name, region FROM customers;


-- ============================================================
-- 5. FILTER CUSTOMERS BY REGION
-- Purpose: Get customers from North region
-- Output: Only customers where region = 'North'
-- ============================================================
SELECT * FROM customers
WHERE region = 'North';


-- ============================================================
-- 6. FILTER PRODUCTS BY PRICE
-- Purpose: Get products above 10000
-- Output: Expensive products list
-- ============================================================
SELECT * FROM products
WHERE price > 10000;


-- ============================================================
-- 7. FILTER ORDERS BY STATUS
-- Purpose: Get completed orders
-- Output: Orders with status 'Completed'
-- ============================================================
SELECT * FROM orders
WHERE status = 'Completed';


-- ============================================================
-- 8. SORT CUSTOMERS BY NAME
-- Purpose: Sort customer names alphabetically
-- Output: Customers in ascending order
-- ============================================================
SELECT * FROM customers
ORDER BY name ASC;


-- ============================================================
-- 9. SORT PRODUCTS BY PRICE (DESC)
-- Purpose: Show highest price first
-- Output: Products sorted by price descending
-- ============================================================
SELECT * FROM products
ORDER BY price DESC;


-- ============================================================
-- 10. LIMIT RESULTS
-- Purpose: Show only first 5 customers
-- Output: Top 5 rows from customers
-- ============================================================
SELECT * FROM customers
LIMIT 5;


-- ============================================================
-- 11. COUNT TOTAL CUSTOMERS
-- Purpose: Get total number of customers
-- Output: Single value (count)
-- ============================================================
SELECT COUNT(*) FROM customers;


-- ============================================================
-- 12. COUNT PRODUCTS BY CATEGORY
-- Purpose: Group products by category
-- Output: Category-wise product count
-- ============================================================
SELECT category, COUNT(*) 
FROM products
GROUP BY category;


-- ============================================================
-- 13. SUM OF TOTAL SALES
-- Purpose: Calculate total revenue
-- Output: Single value (sum of total_price)
-- ============================================================
SELECT SUM(total_price) FROM sales;


-- ============================================================
-- 14. AVERAGE PRODUCT PRICE
-- Purpose: Find average price
-- Output: Single value (average price)
-- ============================================================
SELECT AVG(price) FROM products;


-- ============================================================
-- 15. MAX PRODUCT PRICE
-- Purpose: Find highest priced product
-- Output: Maximum price value
-- ============================================================
SELECT MAX(price) FROM products;


-- ============================================================
-- 16. MIN PRODUCT PRICE
-- Purpose: Find lowest priced product
-- Output: Minimum price value
-- ============================================================
SELECT MIN(price) FROM products;


-- ============================================================
-- 17. DISTINCT REGIONS
-- Purpose: Get unique regions
-- Output: List of unique region values
-- ============================================================
SELECT DISTINCT region FROM customers;


-- ============================================================
-- 18. FILTER USING AND CONDITION
-- Purpose: Products in Electronics above 10000
-- Output: Filtered product list
-- ============================================================
SELECT * FROM products
WHERE category = 'Electronics' AND price > 10000;


-- ============================================================
-- 19. FILTER USING OR CONDITION
-- Purpose: Orders that are Pending or Cancelled
-- Output: Filtered order list
-- ============================================================
SELECT * FROM orders
WHERE status = 'Pending' OR status = 'Cancelled';


-- ============================================================
-- 20. BETWEEN CONDITION
-- Purpose: Products within price range
-- Output: Products between 1000 and 20000
-- ============================================================
SELECT * FROM products
WHERE price BETWEEN 1000 AND 20000;


-- ============================================================
-- BASIC QUERY EXECUTION COMPLETED
-- ============================================================