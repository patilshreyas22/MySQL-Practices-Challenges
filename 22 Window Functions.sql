show databases;
use bms;
/* WINDOW FUNCTIONS PERFORM AGGREGATE OPERATIONS ON GROUPS OF ROWS , BUT THEY PRODUCE A RESULT FOR EACH ROW */

/* over clause */

CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

show tables;
desc employees;
SELECT * FROM employees;


SELECT department , avg(salary) FROM employees
group by department;

SELECT AVG(SALARY) FROM EMPLOYEES;

SELECT AVG(SALARY) OVER() FROM employees;

SELECT emp_no , department , salary , avg(salary) over() FROM employees;

SELECT emp_no , department , salary , min(salary) over() as MIN, max(salary) over() as MAX FROM employees;


SELECT emp_no , department , salary , min(salary) as MIN, max(salary) as MAX FROM employees; /* ERROR , COLUMNS WITH NO GROUP BY */

SELECT  MIN(SALARY) AS MIN , MAX(SALARY) AS MAX FROM EMPLOYEES;

SELECT DEPARTMENT , AVG(SALARY) from employees GROUP BY department;

SELECT EMP_no , DEPARTMENT , SALARY , avg(salary) over(partition by department) as dept_avg FROM employees;

SELECT emp_no , department , salary , AVG(salary) OVER(PARTITION BY department) AS 'Dept Avg' , AVG(salary) OVER() AS 'Company Avg' FROM employees;

SELECT emp_no , department , salary , COUNT(*) OVER(PARTITION BY department) AS 'Department Count' FROM employees;

SELECT emp_no , department , salary , SUM(salary) OVER() AS 'Total PayRoll' FROM employees;

SELECT emp_no , department , salary , SUM(salary) OVER(PARTITION BY department) AS 'Department PayRoll' FROM employees;

SELECT emp_no , department , salary , SUM(salary) OVER(PARTITION BY department) AS 'Department PayRoll' , SUM(salary) OVER() AS 'Company PayRoll' FROM employees;

SELECT emp_no , department , salary , SUM(salary) OVER(PARTITION BY department) AS 'Department PayRoll' , SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS 'Rolling Dept Salary' FROM employees;

SELECT emp_no , department , salary,
MIN(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS Rolling_Min
FROM employees;

SELECT emp_no , department , salary,
MIN(salary) OVER (PARTITION BY department ORDER BY salary) AS Rolling_Min
FROM employees;


