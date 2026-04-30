-- =========================================
-- TABLE CREATION
-- =========================================

-- =========================================
-- EMPLOYEES TABLE
-- =========================================
CREATE TABLE Employees(
	emp_id int primary key,
    emp_name varchar(40) not null,
    age int,
    salary decimal(10,2),
    city varchar(20),
    dept_id int,
    manager_id int,
    email varchar(20),
    dob date,
    join_date date
    );
    
-- =========================================
-- DEPARTMENTS TABLE
-- =========================================
create table departments(
	dept_id int primary key, 
    dept_name varchar(38) unique
    );
    
-- =========================================
-- CUSTOMERS TABLE
-- =========================================
create table customers(
	customer_id int primary key,
    customer_name varchar(30),
    city varchar(20),
    email varchar(25),
    join_date date
    );


-- =========================================
-- ORDERS TABLE
-- =========================================
create table Orders(
	order_id int primary key,
    emp_id int,
    customer_id int,
    order_date date,
    order_value decimal(10,2),
    quantity int,
    product_name varchar(30),
    foreign key (emp_id) references employees(emp_id),
    foreign key (customer_id) references customers(customer_id)
    );

-- =========================================
-- SALES TABLE
-- =========================================
create table Sales(
	sale_id int Primary key,
    emp_id int,
    customer_id int,
    sale_date date,
    revenue decimal(10,2),
    profit decimal(10,2),
    region varchar(20),
    foreign key (emp_id) references Employees(emp_id),
    foreign key (customer_id) references Customers(customer_id)
    );	
    
-- =========================================
-- ATTENDANCE TABLE
-- =========================================
Create table Attendance(
	att_id int primary key,
    emp_id int,
    attendance_date date,
    status varchar(20),
    foreign key (emp_id) references Employees(emp_id)
    );
    
-- ===========================================================
-- Make foreign key relationship in employees and departments
-- ===========================================================
ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id);


