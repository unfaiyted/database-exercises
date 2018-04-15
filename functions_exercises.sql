use employees;

SELECT * FROM employees WHERE
  first_name IN ('Irena','Vidya','Maya')
  AND gender = 'M'
ORDER BY first_name, last_name ASC;


SELECT CONCAT(first_name, ' ',last_name) as full_name, e.* FROM employees e WHERE
  last_name like 'E%' and last_name like '%E'
ORDER BY emp_no;



SELECT DATEDIFF(now(), hire_date) as days_hired, e.*
FROM employees e WHERE
  hire_date between '1990-01-01' and '1999-12-31' and
  month(birth_date) = 12 && day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;
