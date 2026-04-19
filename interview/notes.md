# 🗄️ 50 Important SQL Programming Questions

<img width="1420" height="593" alt="image" src="https://github.com/user-attachments/assets/e0e75706-6b2f-41fc-9bef-0fcf2b328a72" />

---

#  1. Basic Level (Foundation – MUST CLEAR)

**1. Find all records from a table**

```sql
SELECT * FROM employees;
```

**2. Select specific columns**

```sql
SELECT name, salary FROM employees;
```

**3. Filter records using WHERE**

```sql
SELECT * FROM employees WHERE salary > 50000;
```

**4. Use ORDER BY**

```sql
SELECT * FROM employees ORDER BY salary DESC;
```

**5. Use DISTINCT**

```sql
SELECT DISTINCT department FROM employees;
```

**6. Count total employees**

```sql
SELECT COUNT(*) FROM employees;
```

**7. Find average salary**

```sql
SELECT AVG(salary) FROM employees;
```

**8. Use BETWEEN**

```sql
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 60000;
```

**9. Use LIKE**

```sql
SELECT * FROM employees WHERE name LIKE 'A%';
```

**10. Use IN**

```sql
SELECT * FROM employees WHERE department IN ('IT','HR');
```

---

#  2. Intermediate Level (Core Interview)

**11. Group by department**

```sql
SELECT department, COUNT(*) FROM employees GROUP BY department;
```

**12. Use HAVING**

```sql
SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;
```

**13. Find duplicate records**

```sql
SELECT name, COUNT(*)
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;
```

**14. INNER JOIN**

```sql
SELECT e.name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.id;
```

**15. LEFT JOIN**

```sql
SELECT e.*
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.id;
```

**16. RIGHT JOIN**

```sql
SELECT *
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.id;
```

**17. SELF JOIN**

```sql
SELECT e1.name, e2.name AS manager
FROM employees e1
JOIN employees e2 ON e1.manager_id = e2.id;
```

**18. Subquery example**

```sql
SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
```

**19. Correlated subquery**

```sql
SELECT name
FROM employees e1
WHERE salary > (
  SELECT AVG(salary)
  FROM employees e2
  WHERE e1.department = e2.department
);
```

**20. EXISTS**

```sql
SELECT name FROM employees e
WHERE EXISTS (
  SELECT 1 FROM departments d WHERE e.dept_id = d.id
);
```

---

#  3. Advanced Queries (L2 Level Core)

**21. Second highest salary**

```sql
SELECT MAX(salary)
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);
```

**22. Nth highest salary**

```sql
SELECT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET N-1;
```

**23. Top 3 salaries**

```sql
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
```

**24. Row number**

```sql
SELECT name, ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn
FROM employees;
```

**25. Rank**

```sql
SELECT name, RANK() OVER (ORDER BY salary DESC) FROM employees;
```

**26. Dense rank**

```sql
SELECT name, DENSE_RANK() OVER (ORDER BY salary DESC) FROM employees;
```

**27. Running total**

```sql
SELECT name, salary,
SUM(salary) OVER (ORDER BY id) AS running_total
FROM employees;
```

**28. Partition by**

```sql
SELECT department, name,
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC)
FROM employees;
```

**29. Lead & Lag**

```sql
SELECT salary,
LAG(salary) OVER (ORDER BY salary) AS prev_salary
FROM employees;
```

**30. First value**

```sql
SELECT FIRST_VALUE(salary) OVER (ORDER BY salary DESC)
FROM employees;
```

---

#  4. Data Cleaning & Real Problems

**31. Delete duplicates**

```sql
DELETE FROM employees
WHERE id NOT IN (
  SELECT MIN(id)
  FROM employees
  GROUP BY name
);
```

**32. Remove NULL values**

```sql
SELECT * FROM employees WHERE salary IS NOT NULL;
```

**33. Replace NULL**

```sql
SELECT COALESCE(salary, 0) FROM employees;
```

**34. Find missing IDs**

```sql
SELECT t1.id + 1
FROM employees t1
LEFT JOIN employees t2 ON t1.id + 1 = t2.id
WHERE t2.id IS NULL;
```

**35. Update records**

```sql
UPDATE employees
SET salary = salary * 1.1
WHERE department = 'IT';
```

---

#  5. Business Use Case Queries (VERY IMPORTANT ⭐)

**36. Highest salary per department**

```sql
SELECT department, MAX(salary)
FROM employees
GROUP BY department;
```

**37. Employees above department average**

```sql
SELECT *
FROM employees e1
WHERE salary > (
  SELECT AVG(salary)
  FROM employees e2
  WHERE e1.department = e2.department
);
```

**38. Monthly sales report**

```sql
SELECT MONTH(date), SUM(amount)
FROM sales
GROUP BY MONTH(date);
```

**39. Top performing product**

```sql
SELECT product_id, SUM(sales)
FROM sales
GROUP BY product_id
ORDER BY SUM(sales) DESC
LIMIT 1;
```

**40. Customer with highest purchase**

```sql
SELECT customer_id, SUM(amount)
FROM orders
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 1;
```

---

#  6. Complex & Scenario-Based (L2 Strong Filter)

**41. Find consecutive records**
👉 (Use window functions)

**42. Pivot data**

```sql
SELECT 
SUM(CASE WHEN dept='IT' THEN salary ELSE 0 END) AS IT
FROM employees;
```

**43. Find duplicate emails**

```sql
SELECT email
FROM users
GROUP BY email
HAVING COUNT(*) > 1;
```

**44. Get last record per group**

```sql
SELECT *
FROM (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY dept ORDER BY date DESC) rn
  FROM employees
) t
WHERE rn = 1;
```

**45. Find employees hired in last 30 days**

```sql
SELECT * FROM employees
WHERE joining_date >= CURRENT_DATE - INTERVAL 30 DAY;
```

---

#  7. Optimization & Advanced Thinking

**46. What is indexing? Write query using index column**

**47. Explain query execution plan**

**48. Difference between OLAP vs OLTP**

**49. Normalize a table (1NF, 2NF, 3NF)**

**50. Optimize a slow query (Explain approach)**

---

#  How to Answer in Interview (Important)

Instead of just writing query, say:

👉 “I’ll use window function here because it avoids subqueries and improves readability.”

👉 “I’ll use GROUP BY with HAVING since filtering on aggregated values.”

---
