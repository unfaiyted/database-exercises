Select * from employees where
  hire_date IN(Select hire_date From employees where emp_no = 101010);




Select T.title from employees E
  LEFT JOIN titles T ON (T.emp_no = E.emp_no)
where
  E.first_name IN(Select first_name From employees where first_name = 'Aamod');



SELECT e.first_name, e.last_name

FROM employees e
WHERE
  e.emp_no IN (
    SELECT e2.emp_no FROM dept_manager M
      LEFT JOIN employees e2 ON M.emp_no = e2.emp_no
    where e2.gender = 'F' and M.to_date > current_date()
  )



