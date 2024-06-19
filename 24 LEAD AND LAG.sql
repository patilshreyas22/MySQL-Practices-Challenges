/* lead and lag */

SELECT emp_no , department , salary ,
LAG(salary) OVER (ORDER BY salary DESC) /* Will display the previous salaries of the current salary , basically value of previous row will be displayed on the current row and so on */
FROM employees;

SELECT emp_no , department , salary , 
salary - LAG(salary) OVER (ORDER BY salary DESC) AS salary_diff
FROM employees;

SELECT emp_no , department , salary , 
salary - LAG(salary) OVER (ORDER BY salary) AS salary_diff
FROM employees;

SELECT emp_no , department , salary , 
salary - LEAD(salary) OVER (ORDER BY salary DESC) AS salary_diff
FROM employees;

SELECT emp_no , department , salary , 
salary - LEAD(salary) OVER (ORDER BY salary) AS salary_diff
FROM employees;

SELECT emp_no , department , salary ,
LEAD(salary) OVER (ORDER BY salary DESC)
FROM employees;

/*using partition by */

SELECT emp_no , department , salary , 
salary - LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS salary_diff_in_departments
FROM employees;

SELECT emp_no , department , salary , 
LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS salary_LAG_in_departments
FROM employees;

CREATE VIEW asach AS
SELECT emp_no , department , salary , 
salary - LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS salary_diff_in_departments
FROM employees;

SELECT emp_no , department , salary , 
LAG(salary ,  2) OVER (PARTITION BY department ORDER BY salary DESC) AS salary_LAG_BY_2
FROM employees;

SELECT emp_no , department , salary , 
LAG(salary , 2) OVER (ORDER BY salary DESC) AS salary_lag_by_2_overall
FROM employees;
