use employees;


SELECT DISTINCT title from titles
GROUP BY title;

SELECT last_name FROM employees e WHERE
  last_name like 'E%' and last_name like '%E'
GROUP BY first_name, last_name;


SELECT count(last_name), last_name FROM employees WHERE
  last_name like '%q%' AND last_name not like '%qu%'
GROUP BY last_name;


SELECT count(gender), gender FROM employees WHERE
  first_name IN ('Irena','Vidya','Maya')
  GROUP BY gender;