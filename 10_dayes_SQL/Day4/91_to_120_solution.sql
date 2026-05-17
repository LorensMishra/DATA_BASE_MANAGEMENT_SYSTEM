-- 91. Employees with salary > avg salary
SELECT * 
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- 92. Employees with max salary
SELECT *
FROM Employees
WHERE salary = (SELECT MAX(salary) FROM Employees);

-- 93. Employees with min salary
SELECT *
FROM Employees
WHERE salary = (SELECT MIN(salary) FROM Employees);

-- 94. Departments with highest avg salary
SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM Employees e
JOIN Departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) = (
    SELECT MAX(avg_sal)
    FROM (
        SELECT AVG(salary) AS avg_sal
        FROM Employees
        GROUP BY dept_id
    ) x
);

-- 95. Employees in dept with highest salary
SELECT *
FROM Employees
WHERE dept_id = (
    SELECT dept_id
    FROM Employees
    ORDER BY salary DESC
    LIMIT 1
);

-- 96. Employees not in IT
SELECT *
FROM Employees
WHERE dept_id != (
    SELECT dept_id
    FROM Departments
    WHERE dept_name = 'IT'
);

-- 97. Salary > avg of own department
SELECT *
FROM Employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);

-- 98. Employees with second highest salary
SELECT *
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employees
    )
);

-- 99. Employees with third highest salary
SELECT *
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employees
        WHERE salary < (
            SELECT MAX(salary)
            FROM Employees
        )
    )
);

-- 100. Departments with no employees
SELECT *
FROM Departments
WHERE dept_id NOT IN (
    SELECT DISTINCT dept_id
    FROM Employees
);

-- 101. Employees in departments with >5 employees
SELECT *
FROM Employees
WHERE dept_id IN (
    SELECT dept_id
    FROM Employees
    GROUP BY dept_id
    HAVING COUNT(*) > 5
);

-- 102. Employees earning above department avg
SELECT *
FROM Employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);

-- 103. Employees in same city as top earner
SELECT *
FROM Employees
WHERE city = (
    SELECT city
    FROM Employees
    ORDER BY salary DESC
    LIMIT 1
);

-- 104. Departments with salary > global avg
SELECT dept_id, AVG(salary)
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM Employees
);

-- 105. Employees with salary = max in dept
SELECT *
FROM Employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);

-- 106. Employees with salary = min in dept
SELECT *
FROM Employees e
WHERE salary = (
    SELECT MIN(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);

-- 107. Nested subquery example
SELECT *
FROM Employees
WHERE dept_id = (
    SELECT dept_id
    FROM Departments
    WHERE dept_name = 'HR'
);

-- 108. Correlated subquery example
SELECT *
FROM Employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id
);

-- 109. Employees whose salary > ALL in dept
SELECT *
FROM Employees
WHERE salary > ALL (
    SELECT salary
    FROM Employees
    WHERE dept_id = 2
);

-- 110. Employees whose salary > ANY in dept
SELECT *
FROM Employees
WHERE salary > ANY (
    SELECT salary
    FROM Employees
    WHERE dept_id = 2
);

-- 111. EXISTS example
SELECT *
FROM Employees e
WHERE EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.emp_id = e.emp_id
);

-- 112. NOT EXISTS example
SELECT *
FROM Employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    WHERE o.emp_id = e.emp_id
);

-- 113. Employees without orders (subquery)
SELECT *
FROM Employees
WHERE emp_id NOT IN (
    SELECT emp_id
    FROM Orders
);

-- 114. Customers with no orders
SELECT *
FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM Orders
);

-- 115. Orders above avg order value
SELECT *
FROM Orders
WHERE order_value > (
    SELECT AVG(order_value)
    FROM Orders
);

-- 116. Employees with salary rank logic
SELECT *,
DENSE_RANK() OVER(ORDER BY salary DESC) AS salary_rank
FROM Employees;

-- 117. Employees matching multiple conditions
SELECT *
FROM Employees
WHERE salary > 50000
AND city = 'Delhi'
AND age > 25;

-- 118. Subquery in SELECT
SELECT emp_name,
salary,
(SELECT AVG(salary) FROM Employees) AS avg_salary
FROM Employees;

-- 119. Subquery in FROM
SELECT dept_id, avg_salary
FROM (
    SELECT dept_id,
    AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY dept_id
) x;

-- 120. Subquery with aggregation
SELECT dept_id,
COUNT(*) AS total_emp
FROM Employees
GROUP BY dept_id
HAVING COUNT(*) > (
    SELECT AVG(emp_count)
    FROM (
        SELECT COUNT(*) AS emp_count
        FROM Employees
        GROUP BY dept_id
    ) x
);