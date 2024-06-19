/* RANK */


SELECT emp_no , department , salary , 
RANK () OVER (ORDER BY salary DESC ) AS 'Overall Salary Rank'
FROM employees; 

SELECT emp_no , department , salary , 
RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS 'Dept Salary Rank',
RANK () OVER (ORDER BY salary DESC ) AS 'Overall Salary Rank'
FROM employees;

SELECT emp_no , department , salary , 
RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS 'Dept Salary Rank',
RANK () OVER (ORDER BY salary DESC ) AS 'Overall Salary Rank'
FROM employees
ORDER BY department;

/* ROW NUMBER FUNCTION */

SELECT emp_no , department , salary , 
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS 'Dept Row Number',
RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS 'Dept Salary Rank',
RANK () OVER (ORDER BY salary DESC ) AS 'Overall Salary Rank'
FROM employees
ORDER BY department;	

/* DENSE RANK */ /* DOESNT SKIP THE RANKS EVEN IF WE GOT A TIE */

SELECT emp_no , department , salary , 
ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS 'Dept Row Number',
RANK () OVER (PARTITION BY department ORDER BY salary DESC) AS 'Dept Salary Rank',
RANK () OVER (ORDER BY salary DESC ) AS 'Overall Salary Rank',
DENSE_RANK() OVER(ORDER BY salary DESC) AS 'Overall Salary Dense Rank'
FROM employees
ORDER BY 'Overall Salary Rank';	


/* NTILE () */

SELECT 
    emp_no, 
    department, 
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,  /* HERE 4 IS THE NUMBER OF BUCKETS MADE BY NTILE FUNCTION */
	NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;


/* FIRST_VALUE () */

SELECT emp_no , department , salary ,
FIRST_VALUE(emp_no) OVER (PARTITION BY department ORDER BY salary DESC) AS 'Highest Paid in the Dept',
FIRST_VALUE(emp_no) OVER (ORDER BY salary DESC) AS 'Highest Paid Overall'
FROM employees;

SELECT emp_no , department , salary ,
FIRST_VALUE(emp_no) OVER (PARTITION BY department ORDER BY salary DESC) AS 'Highest Paid in the Dept', /* Gives the emp_no of the highest paid in the particular department*/
FIRST_VALUE(emp_no) OVER (ORDER BY salary DESC) AS 'Highest Paid Overall'                              /* Gives the emp_no of the highest paid overall in the company */
FROM employees
ORDER BY department;