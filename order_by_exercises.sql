use employees;

SELECT * FROM employees WHERE
  first_name IN ('Irena','Vidya','Maya')
  AND gender = 'M'
ORDER BY first_name, last_name ASC;


SELECT * FROM employees WHERE
  last_name like 'E%' and last_name like '%E'
ORDER BY emp_no;



SELECT * FROM employees WHERE
  hire_date between '1990-01-01' and '1999-12-31' and
  month(birth_date) = 12 && day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;


#
# SELECT count(*) FROM employees WHERE
#   month(birth_date) = 12 && day(birth_date) = 25;


SELECT * FROM employees WHERE
  last_name like '%q%' AND last_name not like '%qu%'
