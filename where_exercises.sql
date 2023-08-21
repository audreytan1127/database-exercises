USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE (first_name = 'Irena' AND gender ='M') OR (first_name = 'Vidya' AND gender ='M') OR (first_name = 'Maya' AND gender ='M');

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';