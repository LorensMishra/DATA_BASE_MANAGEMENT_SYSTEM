# 🗄️ Database Management System (DBMS) Projects Repository

<img width="881" height="433" alt="image" src="https://github.com/user-attachments/assets/83fbf1bc-2a53-4b09-ac78-5f1e0a37ddc1" />

## 📌 Overview

This repository is a **central collection of database projects** developed using **MySQL** as part of **Database Management System (DBMS)** learning and practical implementation.

Each project inside this repository represents a **real-world system**, such as **Employee Management**, **Banking System**, **College Management**, etc.
The repository is structured to allow **easy expansion**, so new database projects can be added anytime without affecting existing ones.

---

## 📁 Repository Structure

```text
dbms_projects/
├── employee_self_service/
│   ├── sql/
│   │   ├── 01_create_database.sql
│   │   ├── 02_create_tables.sql
│   │   ├── 03_insert_data.sql
│   ├── README.md
│
├── sql-sales-management/
│    ├──sql/
│    │   ├── 01_create_database.sql
│    │   ├── 02_create_tables.sql
│    │   ├── 03_insert_data.sql
│    │   ├── 04_view_data.sql
│    │   ├── 05_basic_queries.sql
│    │   ├── 06_join_queries.sql
│    │   ├── 07_advanced_queries.sql
│    │   ├
│    │   ├── 01_table_structure_output_with_sample_data/
│    ├── sales.md
│
├── bank_management/
│   ├── sql/
│   │   ├── 01_create_database.sql
│   │   ├── 02_create_tables.sql
│   │   ├── 03_insert_data.sql
│   ├── README.md
│
├── college_management/
│   ├── sql/
│   │   ├── 01_create_database.sql
│   │   ├── 02_create_tables.sql
│   │   ├── 03_insert_data.sql
│   ├── README.md
│
├── common_queries/
│   ├── joins.sql
│   ├── subqueries.sql
│   ├── constraints.sql
│
├── DBMS_NOTES/
|   |   ├── 01_Introduction_to_DBMS.md
|   |   ├── 02_File_System_vs_DBMS.md
|   |   ├── 03_DBMS_Architecture.md
|   |   ├── 04_Data_Models.md
|   |   ├── 05_Entity_Relationship_Model.md
|   |   ├── 06_Relational_Model.md
|   |   ├── 07_Relational_Algebra.md
|   |   ├── 08_Relational_Calculus.md
|   |   ├── 09_SQL_Basics.md
|   |   ├── 10_SQL_Advanced_Queries.md
|   |   ├── 11_Normalization.md
|   |   ├── 12_Functional_Dependencies.md
|   |   ├── 13_Transactions.md
|   |   ├── 14_Concurrency_Control.md
|   |   ├── 15_Deadlocks.md
|   |   ├── 16_Recovery_System.md
|   |   ├── 17_Indexing.md
|   |   ├── 18_File_Organization.md
|   |   ├── 19_Query_Processing.md
|   |   ├── 20_Query_Optimization.md
|   |   ├── 21_Storage_Management.md
|   |   ├── 22_Distributed_DBMS.md
|   |   ├── 23_NoSQL_Databases.md
|   |   ├── 24_DBMS_Security.md
|   |   ├── 25_DBMS_Case_Studies.md
|   |   ├── 26_Interview_Questions_DBMS.md
|   |   ├── 27_MCQs_and_Practice_Problems.md
|   |   ├── 28_Real_World_Use_Cases.md
|   |   ├── 29_DBMS_vs_Data_Warehouse.md
|   |   ├── 30_Revision_Notes_and_Cheatsheet.md
|   |   ├── dbms_concepts.md
|   |   └── normalization.md
|   |   
│
├── README.md
```
<img width="617" height="461" alt="image" src="https://github.com/user-attachments/assets/535e0460-673c-4acc-93e3-476cc0299a9e" />

---
## 🧱 Projects Included

### 🧑‍💼 Employee Self-Service System

* Employee records
* Attendance & leave
* Payroll management
* HR self-service
* System logs & notifications

### 📊 Sales Data Management System
* Customer records and regional data
* Product catalog and pricing management
* Order processing and tracking
* Payment and transaction handling
* Inventory and supplier management
* Employee records (internal use)
* Sales analytics and reporting
* System logs and activity tracking

### 🏦 Bank Management System

* Customer accounts
* Transactions
* Loans & deposits
* Branch management
* Audit logs

### 🎓 College Management System

* Students & faculty
* Courses & departments
* Exams & results
* Attendance & fees

> 📌 Each project has its **own folder, SQL scripts, and README**.

---

## 📄 Standard Project Structure

Every database project follows this structure:

```text
project_name/
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
├── README.md
```

---

## ▶️ How to Use Any Project

1. Navigate to the project folder:

   ```bash
   cd employee_self_service/sql
   ```
2. Run SQL files in order:

   ```sql
   SOURCE 01_create_database.sql;
   SOURCE 02_create_tables.sql;
   SOURCE 03_insert_data.sql;
   ```
3. Verify:

   ```sql
   SHOW TABLES;
   ```

---

## 🧠 Concepts Covered Across Projects

* Database design & normalization
* Primary & foreign keys
* Relationships (1-1, 1-M, M-M)
* Constraints & indexes
* Joins & subqueries
* Stored procedures & triggers
* Real-world data modeling

---

## 🎯 Purpose

* Academic DBMS projects (MCA / BCA / B.Tech)
* Interview & viva preparation
* SQL practice & revision
* Portfolio showcase
* Real-world schema reference

---

## 🛠️ Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Tools:** MySQL Workbench, phpMyAdmin
* **Version Control:** Git & GitHub

---

## 📈 Future Additions

* Hospital management system
* E-commerce database
* Library management system
* Advanced reporting queries
* Performance optimization examples

---

## 👨‍🎓 Author

**Lorens Mishra**

MCA Student | Software Developer | Data Analyst

---

## ⭐ Usage & Contribution

* Fork the repository to add new database projects
* Follow the standard folder structure
* Add a README for every new project
* Keep SQL files properly commented and ordered

---

## 📌 Final Note

This repository is designed as a **long-term DBMS portfolio**.
You can continuously add **new database projects** like **bank, college, hospital, e-commerce**, etc., under the same structure.

---
