/* =========================================================
   PROJECT : Employee Self-Service (ESS)
   DATABASE: COMPANY_DATA_BASE
   DBMS    : MySQL
   PURPOSE : Centralized database for employee, HR & payroll
   ========================================================= */

/* =========================
   1–6 CORE EMPLOYEE TABLES
   ========================= */

/* Stores department details */
CREATE TABLE departments (
  dept_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique department ID
  dept_name VARCHAR(100) NOT NULL            -- Department name
);

/* Stores job designations */
CREATE TABLE designations (
  desig_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique designation ID
  desig_name VARCHAR(100) NOT NULL           -- Designation title
);

/* Defines system roles (Admin, HR, Employee) */
CREATE TABLE roles (
  role_id INT PRIMARY KEY AUTO_INCREMENT,   -- Role ID
  role_name VARCHAR(50) NOT NULL             -- Role name
);

/* Stores permissions for role-based access */
CREATE TABLE permissions (
  perm_id INT PRIMARY KEY AUTO_INCREMENT,   -- Permission ID
  perm_name VARCHAR(100) NOT NULL            -- Permission description
);

/* User authentication table */
CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,   -- User ID
  username VARCHAR(50) UNIQUE,               -- Login username
  password VARCHAR(255),                     -- Encrypted password
  role_id INT,                               -- Assigned role
  FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

/* Master employee information */
CREATE TABLE employees (
  emp_id INT PRIMARY KEY AUTO_INCREMENT,     -- Employee ID
  user_id INT,                               -- Linked login account
  full_name VARCHAR(100),                    -- Employee full name
  email VARCHAR(100),                        -- Official email
  phone VARCHAR(15),                         -- Contact number
  dept_id INT,                               -- Department reference
  desig_id INT,                              -- Designation reference
  join_date DATE,                            -- Date of joining
  status VARCHAR(20),                        -- Active / Inactive
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
  FOREIGN KEY (desig_id) REFERENCES designations(desig_id)
);

/* =============================
   7–12 ATTENDANCE & LEAVE
   ============================= */

/* Daily attendance summary */
CREATE TABLE attendance (
  attendance_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,                                -- Employee reference
  date DATE,                                -- Attendance date
  status VARCHAR(20),                       -- Present / Absent
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

/* Detailed login & logout tracking */
CREATE TABLE attendance_logs (
  log_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  login_time DATETIME,                      -- Login timestamp
  logout_time DATETIME,                     -- Logout timestamp
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

/* Types of leave available */
CREATE TABLE leave_types (
  leave_type_id INT PRIMARY KEY AUTO_INCREMENT,
  leave_name VARCHAR(50),                   -- Sick, Casual, Earned
  max_days INT                              -- Max allowed days
);

/* Leave balance per employee */
CREATE TABLE leave_balance (
  emp_id INT,
  leave_type_id INT,
  balance INT,                              -- Remaining leave days
  PRIMARY KEY (emp_id, leave_type_id)
);

/* Leave application records */
CREATE TABLE leave_requests (
  request_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  leave_type_id INT,
  start_date DATE,
  end_date DATE,
  status VARCHAR(20),                       -- Pending / Approved
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

/* Company holiday list */
CREATE TABLE holidays (
  holiday_id INT PRIMARY KEY AUTO_INCREMENT,
  holiday_name VARCHAR(100),
  holiday_date DATE
);

/* ======================
   13–17 PAYROLL TABLES
   ====================== */

/* Base salary structure */
CREATE TABLE salary_structure (
  salary_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  basic_salary DECIMAL(10,2),               -- Basic pay
  FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

/* Salary components (HRA, Bonus, etc.) */
CREATE TABLE salary_components (
  component_id INT PRIMARY KEY AUTO_INCREMENT,
  salary_id INT,
  component_name VARCHAR(50),
  amount DECIMAL(10,2)
);

/* Tax deductions */
CREATE TABLE tax_deductions (
  tax_id INT PRIMARY KEY AUTO_INCREMENT,
  salary_id INT,
  tax_amount DECIMAL(10,2)
);

/* Employee bank information */
CREATE TABLE bank_details (
  bank_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  account_no VARCHAR(30),
  bank_name VARCHAR(50),
  ifsc VARCHAR(20)
);

/* Monthly payslip data */
CREATE TABLE payslips (
  payslip_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  month VARCHAR(20),                        -- Salary month
  net_salary DECIMAL(10,2)
);

/* ==========================
   18–22 SELF-SERVICE & HR
   ========================== */

/* Employee uploaded documents */
CREATE TABLE employee_documents (
  doc_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  doc_type VARCHAR(50),                     -- ID, Resume, Certificate
  file_path VARCHAR(255)
);

/* Company-wide announcements */
CREATE TABLE announcements (
  announce_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100),
  message TEXT,
  created_date DATE
);

/* Employee support tickets */
CREATE TABLE helpdesk_tickets (
  ticket_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  subject VARCHAR(100),
  status VARCHAR(20)                        -- Open / Closed
);

/* Ticket discussion/comments */
CREATE TABLE ticket_comments (
  comment_id INT PRIMARY KEY AUTO_INCREMENT,
  ticket_id INT,
  comment TEXT
);

/* Profile update requests */
CREATE TABLE employee_profile_changes (
  change_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  change_request TEXT,
  status VARCHAR(20)                        -- Approved / Rejected
);

/* ======================
   23–25 SYSTEM / AUDIT
   ====================== */

/* User login tracking */
CREATE TABLE login_logs (
  log_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  login_time DATETIME
);

/* System activity audit */
CREATE TABLE activity_logs (
  activity_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  activity VARCHAR(255),
  activity_time DATETIME
);

/* System notifications */
CREATE TABLE notifications (
  notification_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_id INT,
  message VARCHAR(255),
  created_at DATETIME
);
