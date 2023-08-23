USE employees;

# Finding hire date of employee 101010
SELECT *
FROM employees
WHERE emp_no = '101010';

# Selecting all employees who were hired the same date as 101010
SELECT * FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE hire_date = '1990-10-22'
    );

# Find the number of unique titles where the employee's first name is 'Aamod'
SELECT COUNT(DISTINCT title) FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

# Finds all the titles held by employees with the first name Aamod
SELECT title FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT first_name, last_name FROM employees
WHERE gender = 'F'
  AND emp_no IN(
    SELECT emp_no
    FROM dept_manager
   WHERE to_date = '9999-01-01'
);

# BONUS 1
SELECT dept_name FROM departments
WHERE dept_no IN(
    SELECT dept_no
    FROM dept_manager
    WHERE to_date = '9999-01-01'
    AND emp_no IN (
    SELECT emp_no
        FROM employees
        WHERE gender ='F'
)
);

# BONUS 2
SELECT first_name, last_name FROM employees
                             WHERE emp_no IN(
                                 SELECT emp_no FROM salaries
                                 WHERE salary = (SELECT MAX(salary)FROM salaries)
                                 );


