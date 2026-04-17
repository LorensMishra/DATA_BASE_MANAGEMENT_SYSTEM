# 🧑‍💼 Employee Self-Service (ESS) System

<img width="1407" height="461" alt="image" src="https://github.com/user-attachments/assets/2a424a97-adef-4370-a10d-3fd7e8df3b04" />

## 📌 Project Overview

The **Employee Self-Service (ESS) System** is a database-driven application designed to manage employee information, attendance, leave, payroll, and HR self-service activities.
This project is built using **MySQL** and demonstrates real-world database design concepts such as normalization, relationships, and data integrity.

The system allows employees to manage their own data while enabling HR and administrators to efficiently handle organizational operations.

---

## 🏗️ Project Structure

```text
employee_self_service/
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
├── README.md
```

---

## 🗄️ Database Details

* **Database Name:** `COMPANY_DATA_BASE`
* **DBMS:** MySQL
* **Total Tables:** 25
* **Architecture:** Single centralized relational database

---

## 📊 Database Modules

### 🔹 Core Employee Management

* Departments
* Designations
* Roles & Permissions
* Users (Authentication)
* Employees

### 🔹 Attendance & Leave Management

* Attendance Records
* Attendance Logs
* Leave Types
* Leave Balance
* Leave Requests
* Holidays

### 🔹 Payroll Management

* Salary Structure
* Salary Components
* Tax Deductions
* Bank Details
* Payslips

### 🔹 Employee Self-Service & HR

* Employee Documents
* Announcements
* Helpdesk Tickets
* Ticket Comments
* Profile Change Requests

### 🔹 System & Audit

* Login Logs
* Activity Logs
* Notifications

---

## 📁 SQL Files Description

### 🔸 `01_create_database.sql`

* Creates the database `COMPANY_DATA_BASE`
* Selects the database for further operations

### 🔸 `02_create_tables.sql`

* Contains all **25 table definitions**
* Includes:

  * Primary keys
  * Foreign key relationships
  * Proper normalization
  * Structured comments for clarity

### 🔸 `03_insert_data.sql`

* Inserts **at least 5 sample records** into **each table**
* Data is consistent with foreign key constraints
* Useful for:

  * Testing queries
  * Demonstrations
  * Viva / project presentation

---

## ▶️ How to Run the Project

1. Open **MySQL Workbench** or any MySQL client
2. Execute files in the following order:

   ```sql
   SOURCE sql/01_create_database.sql;
   SOURCE sql/02_create_tables.sql;
   SOURCE sql/03_insert_data.sql;
   ```
3. Verify data using:

   ```sql
   SELECT * FROM employees;
   ```

---

## 🧠 Key Concepts Used

* Relational Database Design
* Primary & Foreign Keys
* One-to-Many Relationships
* Composite Primary Keys
* Data Normalization (up to 3NF)
* Real-world HR & Payroll modeling

---

## 🎯 Use Cases

* Employee profile management
* Attendance tracking
* Leave application & approval
* Payroll calculation reference
* HR announcements
* Helpdesk issue tracking
* System auditing & monitoring

---

## 📌 Tools & Technologies

* **Database:** MySQL
* **Language:** SQL
* **Tool:** MySQL Workbench
* **Platform:** GitHub

---

## 👨‍🎓 Academic Relevance

* Suitable for **MCA / BCA / B.Tech DBMS projects**
* Ideal for **freshers** portfolio
* Demonstrates **industry-level schema design**

---

## 🚀 Future Enhancements

* Stored Procedures & Triggers
* Role-based access control logic
* REST API integration
* Frontend dashboard
* Payroll automation logic

---

## 👤 Author

**Lorens Mishra**
MCA Student | Software & Data Enthusiast

---

## ⭐ Repository Usage

If you find this project helpful:

* ⭐ Star the repository
* 🍴 Fork for customization
* 📢 Use it in interviews & projects

---

