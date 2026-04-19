# 🗄️ SQL Interview Preparation 

<img width="1232" height="458" alt="image" src="https://github.com/user-attachments/assets/f5abf572-f6d7-4c69-81a2-b516edca83d7" />

---

# Topics Covered

* SQL Basics
* Aggregations & Grouping
* Joins & Subqueries
* Window Functions
* Data Cleaning
* Business Use Cases
* Optimization Concepts

---

#  1. Basic SQL Queries

```sql
-- Select all records
SELECT * FROM employees;

-- Select specific columns
SELECT name, salary FROM employees;

-- Filtering data
SELECT * FROM employees WHERE salary > 50000;

-- Sorting
SELECT * FROM employees ORDER BY salary DESC;

-- Unique values
SELECT DISTINCT department FROM employees;

-- Count records
SELECT COUNT(*) FROM employees;

-- Average value
SELECT AVG(salary) FROM employees;

-- Range filter
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 60000;

-- Pattern matching
SELECT * FROM employees WHERE name LIKE 'A%';

-- Multiple values
SELECT * FROM employees WHERE department IN ('IT','HR');
```

---

#  2. Intermediate SQL Queries

```sql
-- Grouping
SELECT department, COUNT(*) FROM employees GROUP BY department;

-- Having clause
SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;

-- Find duplicates
SELECT name, COUNT(*)
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;

-- INNER JOIN
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.id;

-- LEFT JOIN
SELECT e.*
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.id;

-- SELF JOIN (manager relationship)
SELECT e1.name, e2.name AS manager
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.id;

-- Subquery
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Correlated Subquery
SELECT name
FROM employees e1
WHERE salary > (
  SELECT AVG(salary)
  FROM employees e2
  WHERE e1.department = e2.department
);
```

---

#  3. Advanced SQL Queries

```sql
-- Second highest salary
SELECT MAX(salary)
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

-- Nth highest salary
SELECT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET N-1;

-- Top 3 salaries
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Row Number
SELECT name, ROW_NUMBER() OVER (ORDER BY salary DESC) FROM employees;

-- Rank
SELECT name, RANK() OVER (ORDER BY salary DESC) FROM employees;

-- Dense Rank
SELECT name, DENSE_RANK() OVER (ORDER BY salary DESC) FROM employees;

-- Running Total
SELECT name, salary,
SUM(salary) OVER (ORDER BY id) FROM employees;

-- Partition By
SELECT department, name,
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC)
FROM employees;

-- Lag Function
SELECT salary,
LAG(salary) OVER (ORDER BY salary)
FROM employees;
```

---

#  4. Data Cleaning Queries

```sql
-- Remove duplicates
DELETE FROM employees
WHERE id NOT IN (
  SELECT MIN(id)
  FROM employees
  GROUP BY name
);

-- Handle NULL values
SELECT * FROM employees WHERE salary IS NOT NULL;

-- Replace NULL
SELECT COALESCE(salary, 0) FROM employees;

-- Find missing IDs
SELECT t1.id + 1
FROM employees t1
LEFT JOIN employees t2 ON t1.id + 1 = t2.id
WHERE t2.id IS NULL;

-- Update records
UPDATE employees
SET salary = salary * 1.1
WHERE department = 'IT';
```

---

#  5. Business Use Case Queries

```sql
-- Highest salary per department
SELECT department, MAX(salary)
FROM employees
GROUP BY department;

-- Employees above department average
SELECT *
FROM employees e1
WHERE salary > (
  SELECT AVG(salary)
  FROM employees e2
  WHERE e1.department = e2.department
);

-- Monthly sales
SELECT MONTH(date), SUM(amount)
FROM sales
GROUP BY MONTH(date);

-- Top product
SELECT product_id, SUM(sales)
FROM sales
GROUP BY product_id
ORDER BY SUM(sales) DESC
LIMIT 1;

-- Top customer
SELECT customer_id, SUM(amount)
FROM orders
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 1;
```

---

#  6. Advanced Scenarios

```sql
-- Pivot example
SELECT 
SUM(CASE WHEN dept='IT' THEN salary ELSE 0 END) AS IT_Total
FROM employees;

-- Duplicate emails
SELECT email
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- Last record per group
SELECT *
FROM (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY dept ORDER BY date DESC) rn
  FROM employees
) t
WHERE rn = 1;

-- Recent employees
SELECT * FROM employees
WHERE joining_date >= CURRENT_DATE - INTERVAL 30 DAY;
```

---

#  7. Theory (Must Prepare for Interviews)

* What is Indexing?
* What are ACID Properties?
* Difference between OLTP and OLAP
* Normalization (1NF, 2NF, 3NF)
* Query Optimization Techniques

---

#  Best Way to Use This

1. Practice 5–10 queries daily
2. Solve on platforms like LeetCode / HackerRank
3. Explain queries out loud (important for interviews)
4. Focus on **window functions + joins + subqueries**

---
