-- 31. Count total employees
Select count(*) as total_employees from Employees;

-- 32. Average salary
Select avg(salary) as avg_salary from Employees;

-- 33. Maximum salary
Select max(salary) as max_salary from Employees;

-- 34. Minimum salary
Select min(salary) as min_salary from Employees;

-- 35. Sum of salaries
Select sum(salary) as total_salary from Employees;

-- 36. Count employees per department
Select dept_id, count(*) as emp_count 
from Employees
group by dept_id;

-- 37. Avg salary per department
Select dept_id, avg(salary) as avg_salary
from Employees
group by dept_id;

-- 38. Max salary per department
Select dept_id, max(salary) as max_salary
from Employees
group by dept_id;

-- 39. Departments with avg salary > 50000
Select dept_id, avg(salary) as avg_salary
from Employees
group by dept_id
having avg(salary) > 50000;

-- 40. Count employees per city
Select city, count(*) as emp_count
from Employees
group by city;

-- 41. Total salary per department
Select dept_id, sum(salary) as total_salary
from Employees
group by dept_id;

-- 42. Departments with more than 5 employees
Select dept_id, count(*) as emp_count
from Employees
group by dept_id
having count(*) > 5;

-- 43. Avg age per department
Select dept_id, avg(age) as avg_age
from Employees
group by dept_id;

-- 44. Count distinct departments
Select count(distinct dept_id) as dept_count
from Employees;

-- 45. Highest salary in IT
Select max(salary) as max_salary
from Employees
where dept_id = (
    select dept_id from Departments where dept_name = 'IT'
);

-- 46. Lowest salary in HR
Select min(salary) as min_salary
from Employees
where dept_id = (
    select dept_id from Departments where dept_name = 'HR'
);

-- 47. Sum salary for Delhi
Select sum(salary) as total_salary
from Employees
where city = 'Delhi';

-- 48. Count employees salary > 60000
Select count(*) as emp_count
from Employees
where salary > 60000;

-- 49. Avg salary where age > 30
Select avg(salary) as avg_salary
from Employees
where age > 30;

-- 50. Max salary where city = Mumbai
Select max(salary) as max_salary
from Employees
where city = 'Mumbai';

-- 51. Departments with total salary > 200000
Select dept_id, sum(salary) as total_salary
from Employees
group by dept_id
having sum(salary) > 200000;

-- 52. Avg salary per city
Select city, avg(salary) as avg_salary
from Employees
group by city;

-- 53. Count employees per age group (example grouping)
Select 
    case 
        when age < 25 then 'Below 25'
        when age between 25 and 35 then '25-35'
        else 'Above 35'
    end as age_group,
    count(*) as emp_count
from Employees
group by age_group;

-- 54. Salary variance check (basic grouping)
Select dept_id, 
       max(salary) - min(salary) as salary_variance
from Employees
group by dept_id;

-- 55. Highest avg salary department
Select dept_id, avg(salary) as avg_salary
from Employees
group by dept_id
order by avg_salary desc
limit 1;

-- 56. Lowest avg salary department
Select dept_id, avg(salary) as avg_salary
from Employees
group by dept_id
order by avg_salary asc
limit 1;

-- 57. Count employees per dept and city
Select dept_id, city, count(*) as emp_count
from Employees
group by dept_id, city;

-- 58. Avg salary per dept and city
Select dept_id, city, avg(salary) as avg_salary
from Employees
group by dept_id, city;

-- 59. Departments with avg salary between range
Select dept_id, avg(salary) as avg_salary
from Employees
group by dept_id
having avg(salary) between 40000 and 70000;

-- 60. Count employees with non-null salary
Select count(salary) as emp_count
from Employees;