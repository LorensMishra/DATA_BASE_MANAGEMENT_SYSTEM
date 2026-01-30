/* =====================================================
   SAMPLE DATA INSERTS
   PROJECT : Employee Self-Service (ESS)
   ===================================================== */

/* ======================
   DEPARTMENTS
   ====================== */
INSERT INTO departments (dept_name) VALUES
('HR'), ('IT'), ('Finance'), ('Operations'), ('Marketing');

/* ======================
   DESIGNATIONS
   ====================== */
INSERT INTO designations (desig_name) VALUES
('Software Engineer'), ('HR Executive'), ('Manager'),
('Team Lead'), ('Analyst');

/* ======================
   ROLES
   ====================== */
INSERT INTO roles (role_name) VALUES
('Admin'), ('HR'), ('Employee'), ('Manager'), ('Finance');

/* ======================
   PERMISSIONS
   ====================== */
INSERT INTO permissions (perm_name) VALUES
('View Profile'), ('Edit Profile'), ('Approve Leave'),
('View Payroll'), ('Manage Users');

/* ======================
   USERS
   ====================== */
INSERT INTO users (username, password, role_id) VALUES
('admin', 'pass123', 1),
('hr01', 'pass123', 2),
('emp01', 'pass123', 3),
('mgr01', 'pass123', 4),
('fin01', 'pass123', 5);

/* ======================
   EMPLOYEES
   ====================== */
INSERT INTO employees (user_id, full_name, email, phone, dept_id, desig_id, join_date, status) VALUES
(1, 'Admin User', 'admin@knack.com', '9000000001', 1, 3, '2023-01-01', 'Active'),
(2, 'HR User', 'hr@knack.com', '9000000002', 1, 2, '2023-02-01', 'Active'),
(3, 'Employee One', 'emp1@knack.com', '9000000003', 2, 1, '2023-03-01', 'Active'),
(4, 'Manager One', 'mgr@knack.com', '9000000004', 4, 4, '2023-04-01', 'Active'),
(5, 'Finance User', 'fin@knack.com', '9000000005', 3, 5, '2023-05-01', 'Active');

/* ======================
   ATTENDANCE
   ====================== */
INSERT INTO attendance (emp_id, date, status) VALUES
(1, '2025-01-01', 'Present'),
(2, '2025-01-01', 'Present'),
(3, '2025-01-01', 'Absent'),
(4, '2025-01-01', 'Present'),
(5, '2025-01-01', 'Present');

/* ======================
   ATTENDANCE LOGS
   ====================== */
INSERT INTO attendance_logs (emp_id, login_time, logout_time) VALUES
(1, '2025-01-01 09:00', '2025-01-01 18:00'),
(2, '2025-01-01 09:10', '2025-01-01 18:05'),
(3, '2025-01-01 09:30', '2025-01-01 17:30'),
(4, '2025-01-01 08:55', '2025-01-01 18:10'),
(5, '2025-01-01 09:05', '2025-01-01 17:55');

/* ======================
   LEAVE TYPES
   ====================== */
INSERT INTO leave_types (leave_name, max_days) VALUES
('Sick Leave', 10),
('Casual Leave', 12),
('Earned Leave', 15),
('Maternity Leave', 90),
('Paternity Leave', 15);

/* ======================
   LEAVE BALANCE
   ====================== */
INSERT INTO leave_balance VALUES
(1, 1, 8),
(2, 2, 10),
(3, 3, 12),
(4, 1, 7),
(5, 2, 9);

/* ======================
   LEAVE REQUESTS
   ====================== */
INSERT INTO leave_requests (emp_id, leave_type_id, start_date, end_date, status) VALUES
(1, 1, '2025-02-01', '2025-02-02', 'Approved'),
(2, 2, '2025-02-03', '2025-02-03', 'Pending'),
(3, 3, '2025-02-04', '2025-02-05', 'Rejected'),
(4, 1, '2025-02-06', '2025-02-06', 'Approved'),
(5, 2, '2025-02-07', '2025-02-08', 'Pending');

/* ======================
   HOLIDAYS
   ====================== */
INSERT INTO holidays (holiday_name, holiday_date) VALUES
('New Year', '2025-01-01'),
('Republic Day', '2025-01-26'),
('Holi', '2025-03-14'),
('Independence Day', '2025-08-15'),
('Diwali', '2025-11-01');

/* ======================
   SALARY STRUCTURE
   ====================== */
INSERT INTO salary_structure (emp_id, basic_salary) VALUES
(1, 60000),
(2, 50000),
(3, 40000),
(4, 70000),
(5, 55000);

/* ======================
   SALARY COMPONENTS
   ====================== */
INSERT INTO salary_components (salary_id, component_name, amount) VALUES
(1, 'HRA', 15000),
(2, 'Bonus', 10000),
(3, 'Allowance', 8000),
(4, 'HRA', 18000),
(5, 'Bonus', 12000);

/* ======================
   TAX DEDUCTIONS
   ====================== */
INSERT INTO tax_deductions (salary_id, tax_amount) VALUES
(1, 5000),
(2, 4000),
(3, 3000),
(4, 6000),
(5, 4500);

/* ======================
   BANK DETAILS
   ====================== */
INSERT INTO bank_details (emp_id, account_no, bank_name, ifsc) VALUES
(1, '1111111111', 'SBI', 'SBIN0001'),
(2, '2222222222', 'HDFC', 'HDFC0002'),
(3, '3333333333', 'ICICI', 'ICIC0003'),
(4, '4444444444', 'AXIS', 'AXIS0004'),
(5, '5555555555', 'PNB', 'PNB0005');

/* ======================
   PAYSLIPS
   ====================== */
INSERT INTO payslips (emp_id, month, net_salary) VALUES
(1, 'Jan-2025', 55000),
(2, 'Jan-2025', 46000),
(3, 'Jan-2025', 37000),
(4, 'Jan-2025', 64000),
(5, 'Jan-2025', 50500);

/* ======================
   EMPLOYEE DOCUMENTS
   ====================== */
INSERT INTO employee_documents (emp_id, doc_type, file_path) VALUES
(1, 'ID Proof', '/docs/id1.pdf'),
(2, 'Resume', '/docs/resume2.pdf'),
(3, 'Certificate', '/docs/cert3.pdf'),
(4, 'Offer Letter', '/docs/offer4.pdf'),
(5, 'ID Proof', '/docs/id5.pdf');

/* ======================
   ANNOUNCEMENTS
   ====================== */
INSERT INTO announcements (title, message, created_date) VALUES
('Holiday Notice', 'Office closed on Republic Day', '2025-01-20'),
('Policy Update', 'New HR policy released', '2025-01-21'),
('Meeting', 'All hands meeting Friday', '2025-01-22'),
('Payroll', 'Salary credited', '2025-01-23'),
('Event', 'Annual day celebration', '2025-01-24');

/* ======================
   HELPDESK TICKETS
   ====================== */
INSERT INTO helpdesk_tickets (emp_id, subject, status) VALUES
(1, 'System Issue', 'Open'),
(2, 'Leave Issue', 'Closed'),
(3, 'Payroll Query', 'Open'),
(4, 'Access Request', 'Closed'),
(5, 'Document Upload', 'Open');

/* ======================
   TICKET COMMENTS
   ====================== */
INSERT INTO ticket_comments (ticket_id, comment) VALUES
(1, 'Issue under review'),
(2, 'Resolved'),
(3, 'Checking payroll'),
(4, 'Access granted'),
(5, 'Pending approval');

/* ======================
   PROFILE CHANGES
   ====================== */
INSERT INTO employee_profile_changes (emp_id, change_request, status) VALUES
(1, 'Phone number update', 'Approved'),
(2, 'Email update', 'Pending'),
(3, 'Address update', 'Approved'),
(4, 'Bank update', 'Rejected'),
(5, 'Name correction', 'Pending');

/* ======================
   LOGIN LOGS
   ====================== */
INSERT INTO login_logs (user_id, login_time) VALUES
(1, NOW()), (2, NOW()), (3, NOW()), (4, NOW()), (5, NOW());

/* ======================
   ACTIVITY LOGS
   ====================== */
INSERT INTO activity_logs (user_id, activity, activity_time) VALUES
(1, 'Created user', NOW()),
(2, 'Approved leave', NOW()),
(3, 'Viewed payslip', NOW()),
(4, 'Updated profile', NOW()),
(5, 'Generated report', NOW());

/* ======================
   NOTIFICATIONS
   ====================== */
INSERT INTO notifications (emp_id, message, created_at) VALUES
(1, 'Welcome to ESS', NOW()),
(2, 'Leave approved', NOW()),
(3, 'Payslip available', NOW()),
(4, 'Profile updated', NOW()),
(5, 'New announcement', NOW());
