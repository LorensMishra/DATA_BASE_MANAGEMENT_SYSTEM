-- 61. Inner join Employees and Departments
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

-- 62. Left join Employees with Departments
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;

-- 63. Right join Employees with Departments
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;

-- 64. Full join Employees and Departments
SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id

UNION

SELECT e.emp_id, e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;

-- 65. Employees with department name
SELECT e.emp_name, d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id;

-- 66. Employees without department
SELECT e.*
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- 67. Departments without employees
SELECT d.*
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

-- 68. Join Employees and Orders
SELECT e.emp_name, o.order_id, o.order_value
FROM Employees e
JOIN Orders o
ON e.emp_id = o.emp_id;

-- 69. Employees with total orders
SELECT e.emp_name, COUNT(o.order_id) AS total_orders
FROM Employees e
LEFT JOIN Orders o
ON e.emp_id = o.emp_id
GROUP BY e.emp_id, e.emp_name;

-- 70. Orders with employee details
SELECT o.order_id, o.order_date, o.order_value,
       e.emp_name, e.salary
FROM Orders o
JOIN Employees e
ON o.emp_id = e.emp_id;

-- 71. Join 3 tables Employees, Orders, Customers
SELECT e.emp_name, c.customer_name,
       o.order_id, o.order_value
FROM Orders o
JOIN Employees e
ON o.emp_id = e.emp_id
JOIN Customers c
ON o.customer_id = c.customer_id;

-- 72. Employees with highest order count
SELECT e.emp_name, COUNT(o.order_id) AS total_orders
FROM Employees e
JOIN Orders o
ON e.emp_id = o.emp_id
GROUP BY e.emp_id, e.emp_name
ORDER BY total_orders DESC
LIMIT 1;

-- 73. Employees with no orders
SELECT e.*
FROM Employees e
LEFT JOIN Orders o
ON e.emp_id = o.emp_id
WHERE o.order_id IS NULL;

-- 74. Orders without employee
SELECT o.*
FROM Orders o
LEFT JOIN Employees e
ON o.emp_id = e.emp_id
WHERE e.emp_id IS NULL;

-- 75. Employees with customer names
SELECT e.emp_name, c.customer_name
FROM Orders o
JOIN Employees e
ON o.emp_id = e.emp_id
JOIN Customers c
ON o.customer_id = c.customer_id;

-- 76. Join on multiple conditions
SELECT e.emp_name, o.order_id, o.order_value
FROM Employees e
JOIN Orders o
ON e.emp_id = o.emp_id
AND e.city = 'Hyderabad';

-- 77. Employees with orders > 5
SELECT e.emp_name, COUNT(o.order_id) AS total_orders
FROM Employees e
JOIN Orders o
ON e.emp_id = o.emp_id
GROUP BY e.emp_id, e.emp_name
HAVING COUNT(o.order_id) > 5;

-- 78. Departments with avg salary using join
SELECT d.dept_name,
       AVG(e.salary) AS avg_salary
FROM Departments d
JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

-- 79. Join with aggregation
SELECT d.dept_name,
       COUNT(e.emp_id) AS total_employees,
       SUM(e.salary) AS total_salary
FROM Departments d
LEFT JOIN Employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

-- 80. Self join employees (same dept)
SELECT e1.emp_name AS employee1,
       e2.emp_name AS employee2,
       e1.dept_id
FROM Employees e1
JOIN Employees e2
ON e1.dept_id = e2.dept_id
AND e1.emp_id < e2.emp_id;

-- 81. Employees with same salary
SELECT e1.emp_name AS employee1,
       e2.emp_name AS employee2,
       e1.salary
FROM Employees e1
JOIN Employees e2
ON e1.salary = e2.salary
AND e1.emp_id < e2.emp_id;

-- 82. Manager employee relation
SELECT e.emp_name AS employee,
       m.emp_name AS manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.emp_id;

-- 83. Employees earning more than manager
SELECT e.emp_name AS employee,
       e.salary AS employee_salary,
       m.emp_name AS manager,
       m.salary AS manager_salary
FROM Employees e
JOIN Employees m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;

-- 84. Self join for duplicate names
SELECT e1.emp_id, e1.emp_name,
       e2.emp_id, e2.emp_name
FROM Employees e1
JOIN Employees e2
ON e1.emp_name = e2.emp_name
AND e1.emp_id < e2.emp_id;

-- 85. Join with alias usage
SELECT e.emp_name, d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id;

-- 86. Join using USING clause
SELECT emp_id, emp_name, dept_name
FROM Employees
JOIN Departments
USING(dept_id);

-- 87. Join using ON clause
SELECT e.emp_name, d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id;

-- 88. Multi table join with conditions
SELECT e.emp_name,
       c.customer_name,
       o.order_value
FROM Orders o
JOIN Employees e
ON o.emp_id = e.emp_id
JOIN Customers c
ON o.customer_id = c.customer_id
WHERE o.order_value > 1000;

-- 89. Employees with max salary per dept
SELECT e.emp_name,
       e.salary,
       d.dept_name
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM Employees e2
    WHERE e2.dept_id = e.dept_id
);

-- 90. Join filtering conditions
SELECT e.emp_name,
       d.dept_name,
       e.salary
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 50000;