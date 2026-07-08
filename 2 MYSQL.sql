use mysql;

-- Total : Aggregare Functions & GROUP BY / HAVING 
-- TOOL l MySQL Workbench
-- ===============================================================================================================

CREATE TABLE employees(emp_id INT PRIMARY KEY,
                       emp_name VARCHAR(50),
                       department VARCHAR(30),
                       salary INT,
                       joining_year int);
                       
INSERT INTO employees VALUES
(1,'Amit Sharma', 'Sales', 45000, 2021),
(2, 'Priya Singh', 'IT', 62000, 2020),
(3, 'Rahul Verma', 'Sales', 38000, 2022),
(4, 'Neha Gupta', 'HR', 39000, 2023),
(5, 'Vikas Yadav', 'IT', 75000, 2019),
(6, 'Anjali Mehra', 'HR', 39000, 2023),
(7, 'Suresh Kumar', 'Sales', 52000, 2020),
(8, 'Pooja Rani', 'IT', 68000,2021),
(9, 'Karan Malhotra', 'Finance', 55000, 2018),
(10, 'Simran Kaur', 'Finance', 47000, 2022);      
-- ======================================================================================================   

## QUERIES
-- =======================================================================================================      

-- Q1 : Find total number of employees         
select count(*) as total_employees FROM employees;                       

-- Q2 : Find total salary paid to all employees
select sum(salary) as total_salary FROM employees;

-- Q3 : Find average salary of employees
select avg(salary) as average_salary from employees;

-- Q4 : Find the highest and lowest salary
select MAX(Salary) AS highest_salary, MIN(Salary) AS lowest_salary from employees;

-- Q5 : Find number of employees in each department
select department, count(*) as emp_count FROM employees GROUP BY department;

-- Q6 : Find total salary paid department-wise
select department, SUM(salary) as total_salary from employees GROUP BY department;

-- Q7 : Find average salary department-wise, sorted highest to lowest
select department, avg(salary) as avg_salary FROM employees GROUP BY department ORDER BY avg_salary DESC;

-- Q8 : Find departments having more than 2 employees
select department, count(*) as emp_count FROM employees GROUP BY department having count(*)>2;

-- Q9 : Find departments where average salary is greater tahn 45000 
select department, AVG(salary) as avg_salary from employees GROUP BY department Having AVG(salary)>45000;

-- Q10 : Find number of employees joined each year
select joining_year, count(*) as emp_count from employees GROUP BY joining_year ORDER BY joining_year;