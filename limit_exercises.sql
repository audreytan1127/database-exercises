USE employees;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC;

SELECT salary, emp_no FROM salaries ORDER BY salary DESC;

SELECT salary, emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 0;
SELECT salary, emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 5;
SELECT salary, emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 10;
SELECT salary, emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 15;







