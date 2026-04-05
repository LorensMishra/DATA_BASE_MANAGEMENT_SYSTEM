-- ============================================================
-- JOIN BASED SQL QUERIES
-- SALES DATA MANAGEMENT SYSTEM
-- ============================================================


-- ============================================================
-- 1. CUSTOMER WITH THEIR ORDERS
-- Purpose: Display customer names along with their orders
-- Output: customer name, order_id, order_date
-- ============================================================
SELECT c.name, o.order_id, o.order_date
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


-- ============================================================
-- 2. ORDER WITH CUSTOMER DETAILS
-- Purpose: Show order details with customer information
-- Output: order_id, customer name, region, status
-- ============================================================
SELECT o.order_id, c.name, c.region, o.status
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;


-- ============================================================
-- 3. ORDER ITEMS WITH PRODUCT NAMES
-- Purpose: Show products included in each order
-- Output: order_id, product_name, quantity
-- ============================================================
SELECT oi.order_id, p.product_name, oi.quantity
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id;


-- ============================================================
-- 4. FULL ORDER DETAILS (MULTI JOIN)
-- Purpose: Combine customer, order, and product data
-- Output: customer name, product_name, quantity
-- ============================================================
SELECT c.name, p.product_name, oi.quantity
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;


-- ============================================================
-- 5. PAYMENTS WITH CUSTOMER DETAILS
-- Purpose: Show payment info with customer name
-- Output: customer name, payment method, amount
-- ============================================================
SELECT c.name, p.payment_method, p.amount
FROM payments p
JOIN orders o ON p.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id;


-- ============================================================
-- 6. PRODUCTS AND SUPPLIERS (INVENTORY)
-- Purpose: Show which supplier provides which product
-- Output: product_name, supplier_name
-- ============================================================
SELECT pr.product_name, s.supplier_name
FROM inventory i
JOIN products pr ON i.product_id = pr.product_id
JOIN suppliers s ON i.supplier_id = s.supplier_id;


-- ============================================================
-- 7. SALES WITH CUSTOMER DETAILS
-- Purpose: Show sales along with customer info
-- Output: customer name, total_price, sale_date
-- ============================================================
SELECT c.name, s.total_price, s.sale_date
FROM sales s
JOIN orders o ON s.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id;


-- ============================================================
-- 8. LEFT JOIN (CUSTOMERS WITH OR WITHOUT ORDERS)
-- Purpose: Show all customers, even if no orders exist
-- Output: customer name, order_id (NULL if no order)
-- ============================================================
SELECT c.name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


-- ============================================================
-- 9. RIGHT JOIN (ORDERS WITH CUSTOMERS)
-- Purpose: Show all orders even if customer missing
-- Output: order_id, customer name
-- ============================================================
SELECT o.order_id, c.name
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;


-- ============================================================
-- 10. INNER JOIN WITH CONDITION
-- Purpose: Show completed orders with customer names
-- Output: customer name, order_id
-- ============================================================
SELECT c.name, o.order_id
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';


-- ============================================================
-- JOIN QUERY EXECUTION COMPLETED
-- ============================================================