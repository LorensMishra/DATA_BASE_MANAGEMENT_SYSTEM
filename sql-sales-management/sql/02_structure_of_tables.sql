-- ============================================================
-- CUSTOMERS TABLE
-- Purpose: Stores customer details
-- ============================================================

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,          -- Unique ID for each customer
    name VARCHAR(100) NOT NULL,              -- Customer name
    email VARCHAR(100) UNIQUE NOT NULL,      -- Unique email address
    phone VARCHAR(15),                       -- Contact number
    region VARCHAR(50),                      -- Geographic region
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Record creation time
);


-- ============================================================
-- PRODUCTS TABLE
-- Purpose: Stores product information
-- ============================================================

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,           -- Unique product ID
    product_name VARCHAR(100) NOT NULL,      -- Name of the product
    category VARCHAR(50),                    -- Product category
    price NUMERIC(10,2) NOT NULL,            -- Price of product
    stock_quantity INT DEFAULT 0             -- Available stock
);


-- ============================================================
-- ORDERS TABLE
-- Purpose: Stores order details placed by customers
-- ============================================================

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,             -- Unique order ID
    customer_id INT,                         -- Reference to customer
    order_date DATE DEFAULT CURRENT_DATE,    -- Order date
    status VARCHAR(20),                      -- Order status (Completed, Pending, etc.)
    total_amount NUMERIC(10,2),              -- Total order value

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)    -- Relationship: Orders → Customers
);


-- ============================================================
-- ORDER_ITEMS TABLE
-- Purpose: Stores items within each order
-- ============================================================

CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,        -- Unique ID for each order item
    order_id INT,                            -- Reference to order
    product_id INT,                          -- Reference to product
    quantity INT NOT NULL,                   -- Quantity of product
    price NUMERIC(10,2),                     -- Price at time of purchase

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),         -- Relationship: Order_Items → Orders

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)      -- Relationship: Order_Items → Products
);


-- ============================================================
-- PAYMENTS TABLE (Restricted / Admin)
-- Purpose: Stores payment transaction details
-- ============================================================

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,           -- Unique payment ID
    order_id INT,                            -- Reference to order
    payment_method VARCHAR(50),              -- Payment type (UPI, Card, etc.)
    payment_status VARCHAR(20),              -- Status (Paid, Pending, Refunded)
    amount NUMERIC(10,2),                    -- Amount paid
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Payment timestamp

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id)          -- Relationship: Payments → Orders
);


-- ============================================================
-- SUPPLIERS TABLE (Restricted)
-- Purpose: Stores supplier/vendor details
-- ============================================================

CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,          -- Unique supplier ID
    supplier_name VARCHAR(100),              -- Supplier name
    contact_email VARCHAR(100),              -- Supplier email
    phone VARCHAR(15),                       -- Contact number
    address TEXT                             -- Supplier address
);


-- ============================================================
-- INVENTORY TABLE (Restricted)
-- Purpose: Tracks stock movement and supply chain
-- ============================================================

CREATE TABLE inventory (
    inventory_id SERIAL PRIMARY KEY,         -- Unique inventory record ID
    product_id INT,                          -- Reference to product
    supplier_id INT,                         -- Reference to supplier
    stock_in INT DEFAULT 0,                  -- Quantity added
    stock_out INT DEFAULT 0,                 -- Quantity removed
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Last update time

    FOREIGN KEY (product_id)
        REFERENCES products(product_id),     -- Relationship: Inventory → Products

    FOREIGN KEY (supplier_id)
        REFERENCES suppliers(supplier_id)    -- Relationship: Inventory → Suppliers
);


-- ============================================================
-- EMPLOYEES TABLE (Restricted)
-- Purpose: Stores internal employee details
-- ============================================================

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,          -- Unique employee ID
    name VARCHAR(100),                       -- Employee name
    role VARCHAR(50),                        -- Job role
    salary NUMERIC(10,2),                    -- Salary details
    email VARCHAR(100)                       -- Email address
);


-- ============================================================
-- SALES TABLE (System / Analytics)
-- Purpose: Stores summarized sales data
-- ============================================================

CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,              -- Unique sales record ID
    order_id INT,                            -- Reference to order
    total_quantity INT,                      -- Total items sold
    total_price NUMERIC(10,2),               -- Total revenue
    sale_date DATE,                          -- Date of sale

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id)          -- Relationship: Sales → Orders
);


-- ============================================================
-- LOGS TABLE (System)
-- Purpose: Tracks system/user activity
-- ============================================================

CREATE TABLE logs (
    log_id SERIAL PRIMARY KEY,               -- Unique log ID
    user_id INT,                             -- User reference (generic)
    action VARCHAR(100),                     -- Action performed
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Action time
    status VARCHAR(20)                       -- Status (Success, Failed)
);


-- ============================================================
-- SCHEMA CREATION COMPLETED
-- ============================================================