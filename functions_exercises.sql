USE employees;


SELECT * FROM employees WHERE (first_name = 'Irena' AND gender ='M')
                           OR (first_name = 'Vidya' AND gender ='M')
                           OR (first_name = 'Maya' AND gender ='M');


SELECT CONCAT (first_name, ' ', last_name) FROM employees
                             WHERE last_name LIKE 'E%'
                             AND last_name LIKE '%e'
                             ORDER BY emp_no;

SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT * FROM employees WHERE MONTH(birth_date) = 12
                          AND DAY(birth_date) = 25
                          AND YEAR(hire_date) BETWEEN 1990 AND 1999;

SELECT * FROM employees WHERE MONTH(birth_date) = 12
                          AND DAY(birth_date) = 25
                          AND YEAR(hire_date) BETWEEN 1990 AND 1999
                        ORDER BY hire_date DESC, birth_date;

SELECT *, DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE YEAR (hire_date) BETWEEN 1990 and 1999
AND MONTH(hire_date) = 12
AND DAY(hire_date)=25;
