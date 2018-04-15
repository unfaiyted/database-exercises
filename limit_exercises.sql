use employees;

SELECT DISTINCT title FROM titles;


SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC LIMIT 10;



SELECT * FROM employees WHERE
  hire_date between '1990-01-01' and '1999-12-31' and
  month(birth_date) = 12 && day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;
