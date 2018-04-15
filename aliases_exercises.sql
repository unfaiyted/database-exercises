use employees;


SELECT
  CONCAT(emp_no, ' - ',first_name, ', ' ,last_name) as full_name,
  birth_date as DOB
from employees e
LIMIT 10;