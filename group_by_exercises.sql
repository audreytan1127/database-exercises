USE employees;

SELECT DISTINCT title FROM titles;
# Basically the same thing as distinct where it will only print the unique names. (no duplicates!)
# SELECT title FROM titles GROUP BY title;


SELECT last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' GROUP BY last_name;

# another way to check if the name begins and ends with e (with % between both E's)!
SELECT last_name FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name
ORDER BY last_name;


SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
GROUP BY first_name, last_name
ORDER BY last_name;

# Gets the unique last names(no duplicates)
SELECT last_name FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Gets unique last names and the count of each employee with the same last name.
# Count() AS Name_Of_New_Column (:!!
SELECT last_name, COUNT(last_name) AS Total FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Another syntax when using select and Count()
SELECT COUNT(gender) AS Total, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;