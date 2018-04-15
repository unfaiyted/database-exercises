use employees;

SELECT count(*) FROM employees WHERE
  first_name IN ('Irena','Vidya','Maya');


SELECT count(*) FROM employees WHERE
  last_name like 'E%';

SELECT count(*) FROM employees WHERE
  hire_date between '1990-01-01' and '1999-12-31';


SELECT count(*) FROM employees WHERE
  month(birth_date) = 12 && day(birth_date) = 25;


SELECT count(*) FROM employees WHERE
  last_name like '%q%';
