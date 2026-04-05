-- ============================================================
-- 📊 SALES PROJECT - SAMPLE DATA INSERT SCRIPT
-- ============================================================
-- This file inserts sample data into all tables
-- Order is maintained based on foreign key dependencies
-- ============================================================


-- ============================================================
-- 🔷 1. INSERT INTO CUSTOMERS (BASE TABLE)
-- ============================================================
-- Stores customer information (no dependencies)

INSERT INTO customers (name, email, phone, region) VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'North'),
('Anita Verma', 'anita@gmail.com', '9876543211', 'South'),
('Ravi Kumar', 'ravi@gmail.com', '9876543212', 'East'),
('Sneha Reddy', 'sneha@gmail.com', '9876543213', 'West'),
('Amit Patel', 'amit@gmail.com', '9876543214', 'North'),
('Priya Singh', 'priya@gmail.com', '9876543215', 'South'),
('Karan Mehta', 'karan@gmail.com', '9876543216', 'East'),
('Neha Gupta', 'neha@gmail.com', '9876543217', 'West'),
('Vikas Jain', 'vikas@gmail.com', '9876543218', 'North'),
('Pooja Das', 'pooja@gmail.com', '9876543219', 'South');


-- ============================================================
-- 🔷 2. INSERT INTO PRODUCTS (BASE TABLE)
-- ============================================================
-- Stores product catalog

INSERT INTO products (product_name, category, price, stock_quantity) VALUES
('Laptop', 'Electronics', 55000, 50),
('Smartphone', 'Electronics', 20000, 100),
('Headphones', 'Electronics', 2000, 150),
('Tablet', 'Electronics', 30000, 40),
('Smartwatch', 'Electronics', 5000, 80),
('Chair', 'Furniture', 2500, 60),
('Desk', 'Furniture', 7000, 30),
('Pen', 'Stationery', 20, 500),
('Notebook', 'Stationery', 100, 300),
('Backpack', 'Accessories', 1200, 70);


-- ============================================================
-- 🔷 3. INSERT INTO SUPPLIERS (BASE TABLE)
-- ============================================================

INSERT INTO suppliers (supplier_name, contact_email, phone, address) VALUES
('Tech Supplies Ltd', 'tech@supplier.com', '9000000001', 'Delhi'),
('Gadget World', 'gadget@supplier.com', '9000000002', 'Mumbai'),
('Furniture Hub', 'furniture@supplier.com', '9000000003', 'Chennai'),
('Office Goods', 'office@supplier.com', '9000000004', 'Hyderabad'),
('Stationery Mart', 'stationery@supplier.com', '9000000005', 'Pune'),
('Digital Store', 'digital@supplier.com', '9000000006', 'Bangalore'),
('Accessory Point', 'access@supplier.com', '9000000007', 'Kolkata'),
('Home Needs', 'home@supplier.com', '9000000008', 'Jaipur'),
('Retail Supply', 'retail@supplier.com', '9000000009', 'Lucknow'),
('Wholesale Traders', 'wholesale@supplier.com', '9000000010', 'Ahmedabad');


-- ============================================================
-- 🔷 4. INSERT INTO ORDERS
-- ============================================================
-- Depends on customers

INSERT INTO orders (customer_id, order_date, status, total_amount) VALUES
(1, '2024-01-10', 'Completed', 75000),
(2, '2024-01-12', 'Completed', 20000),
(3, '2024-01-15', 'Pending', 30000),
(4, '2024-01-18', 'Completed', 5000),
(5, '2024-01-20', 'Cancelled', 7000),
(6, '2024-01-22', 'Completed', 2500),
(7, '2024-01-25', 'Completed', 1200),
(8, '2024-01-28', 'Pending', 2000),
(9, '2024-02-01', 'Completed', 100),
(10, '2024-02-03', 'Completed', 55000);


-- ============================================================
-- 🔷 5. INSERT INTO ORDER_ITEMS
-- ============================================================
-- Depends on orders + products

INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 55000),
(1, 3, 1, 2000),
(2, 2, 1, 20000),
(3, 4, 1, 30000),
(4, 5, 1, 5000),
(5, 7, 1, 7000),
(6, 6, 1, 2500),
(7, 10, 1, 1200),
(8, 3, 1, 2000),
(9, 9, 1, 100),
(10, 1, 1, 55000),
(2, 3, 2, 4000),
(3, 2, 1, 20000),
(4, 8, 5, 100),
(6, 9, 2, 200);


-- ============================================================
-- 🔷 6. INSERT INTO PAYMENTS
-- ============================================================
-- Depends on orders

INSERT INTO payments (order_id, payment_method, payment_status, amount) VALUES
(1, 'Credit Card', 'Paid', 75000),
(2, 'UPI', 'Paid', 20000),
(3, 'Net Banking', 'Pending', 30000),
(4, 'UPI', 'Paid', 5000),
(5, 'Credit Card', 'Refunded', 7000),
(6, 'Cash', 'Paid', 2500),
(7, 'UPI', 'Paid', 1200),
(8, 'Net Banking', 'Pending', 2000),
(9, 'Cash', 'Paid', 100),
(10, 'Credit Card', 'Paid', 55000);


-- ============================================================
-- 🔷 7. INSERT INTO INVENTORY
-- ============================================================
-- Depends on products + suppliers

INSERT INTO inventory (product_id, supplier_id, stock_in, stock_out) VALUES
(1, 1, 100, 50),
(2, 2, 150, 50),
(3, 2, 200, 50),
(4, 1, 80, 40),
(5, 6, 100, 20),
(6, 3, 70, 10),
(7, 3, 50, 20),
(8, 5, 500, 100),
(9, 5, 400, 100),
(10, 7, 120, 50);


-- ============================================================
-- 🔷 8. INSERT INTO EMPLOYEES
-- ============================================================

INSERT INTO employees (name, role, salary, email) VALUES
('Arjun', 'Manager', 60000, 'arjun@company.com'),
('Meena', 'Sales Executive', 30000, 'meena@company.com'),
('Rohit', 'Analyst', 40000, 'rohit@company.com'),
('Kavita', 'HR', 35000, 'kavita@company.com'),
('Suresh', 'Warehouse', 25000, 'suresh@company.com'),
('Anil', 'Manager', 65000, 'anil@company.com'),
('Deepa', 'Support', 28000, 'deepa@company.com'),
('Vijay', 'Technician', 32000, 'vijay@company.com'),
('Sunita', 'Sales Executive', 30000, 'sunita@company.com'),
('Ramesh', 'Driver', 20000, 'ramesh@company.com');


-- ============================================================
-- 🔷 9. INSERT INTO SALES
-- ============================================================
-- Derived summary from orders

INSERT INTO sales (order_id, total_quantity, total_price, sale_date) VALUES
(1, 2, 57000, '2024-01-10'),
(2, 1, 20000, '2024-01-12'),
(3, 1, 30000, '2024-01-15'),
(4, 1, 5000, '2024-01-18'),
(5, 1, 7000, '2024-01-20'),
(6, 2, 2700, '2024-01-22'),
(7, 1, 1200, '2024-01-25'),
(8, 1, 2000, '2024-01-28'),
(9, 1, 100, '2024-02-01'),
(10, 1, 55000, '2024-02-03');


-- ============================================================
-- 🔷 10. INSERT INTO LOGS
-- ============================================================
-- Tracks user/system actions

INSERT INTO logs (user_id, action, status) VALUES
(1, 'Login', 'Success'),
(2, 'Order Placed', 'Success'),
(3, 'Payment Attempt', 'Pending'),
(4, 'Logout', 'Success'),
(5, 'Order Cancelled', 'Success'),
(6, 'Login', 'Failed'),
(7, 'Password Change', 'Success'),
(8, 'Order Viewed', 'Success'),
(9, 'Payment Completed', 'Success'),
(10, 'Logout', 'Success');

-- ============================================================
-- ✅ DATA INSERTION COMPLETED
-- ============================================================
