-- 1. Retrieve all columns from Employees
Select * from Employees;

-- 2. Retrieve name and salary
Select emp_name, salary from Employees;

-- 3. Show distinct departments(all departement select dept_id from Employees;)
Select distinct dept_id from Employees;

-- 4. Show distinct cities
select distinct city from employees;

-- 5. Retrieve first 10 rows
Select * from Employees Limit 10;

-- 6. Salary greater than 50000
Select * from Employees where salary>50000;

-- 7. Age less than 30
Select * from Employees Where age<30;

-- 8. Employees from Delhi
Select * from Employees
Where city = 'Delhi';

-- 9. Employees not from Mumbai(!= or <>)
Select * from Employees
where city <> 'Mumbai';

-- 10. Salary between 30000 and 70000
Select * from Employees
where salary between 30000 and 70000;

-- 11. Age greater than 25 AND salary greater than 40000
SELECT *
FROM Employees
WHERE age > 25 AND salary > 40000;

-- 12. Department HR OR IT
SELECT *
FROM Employees
WHERE dept_id IN (
    SELECT dept_id
    FROM Departments
    WHERE dept_name IN ('HR', 'IT')
);

-- 13. NOT in Finance
SELECT *
FROM Employees
WHERE dept_id NOT IN (
    SELECT dept_id
    FROM Departments
    WHERE dept_name = 'Finance'
);

-- 14. Age between 25 and 35
SELECT *
FROM Employees
WHERE age BETWEEN 25 AND 35;

-- 15. Salary not between 20000 and 40000
SELECT *
FROM Employees
WHERE salary NOT BETWEEN 20000 AND 40000;

-- 16. Department IN (HR, IT, Sales)
SELECT *
FROM Employees
WHERE dept_id IN (
    SELECT dept_id
    FROM Departments
    WHERE dept_name IN ('HR', 'IT', 'Sales')
);

-- 17. Salary between 40000 and 80000
SELECT *
FROM Employees
WHERE salary BETWEEN 40000 AND 80000;

-- 18. Name starts with A
SELECT *
FROM Employees
WHERE emp_name LIKE 'A%';

-- 19. Name ends with n
SELECT *
FROM Employees
WHERE emp_name LIKE '%n';

-- 20. Name contains ar
SELECT *
FROM Employees
WHERE emp_name LIKE '%ar%';

-- 21. Sort by salary ascending
SELECT *
FROM Employees
ORDER BY salary ASC;

-- 22. Sort by salary descending
SELECT *
FROM Employees
ORDER BY salary DESC;

-- 23. Sort by department then salary
SELECT *
FROM Employees
ORDER BY dept_id ASC, salary ASC;

-- 24. Sort by age descending
SELECT *
FROM Employees
ORDER BY age DESC;

-- 25. Salary is NULL
SELECT *
FROM Employees
WHERE salary IS NULL;

-- 26. Salary is NOT NULL
SELECT *
FROM Employees
WHERE salary IS NOT NULL;

-- 27. Top 5 highest salaries
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 5;

-- 28. Lowest 3 salaries
SELECT *
FROM Employees
ORDER BY salary ASC
LIMIT 3;

-- 29. 2nd highest salary
SELECT DISTINCT salary
FROM Employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- 30. First 5 sorted by age
SELECT *
FROM Employees
ORDER BY age ASC
LIMIT 5;
