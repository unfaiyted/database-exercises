use employees;

SELECT DISTINCT D.dept_name, concat(E.first_name, ' ', E.last_name) as full_name
from departments D
  LEFT JOIN dept_manager M ON (D.dept_no = M.dept_no)
  LEFT JOIN dept_emp DE ON (DE.emp_no = M.emp_no)
  LEFT JOIN employees E ON (DE.emp_no = E.emp_no)
WHERE M.to_date > now()
ORDER BY D.dept_name;


SELECT DISTINCT D.dept_name, concat(E.first_name, ' ', E.last_name) as full_name
from departments D
  LEFT JOIN dept_manager M ON (D.dept_no = M.dept_no)
  LEFT JOIN dept_emp DE ON (DE.emp_no = M.emp_no)
  LEFT JOIN employees E ON (DE.emp_no = E.emp_no)
WHERE M.to_date > now() and E.gender = 'F'
ORDER BY D.dept_name;


/* Current Title */
SELECT DISTINCT
  t.title,
  count(*)
from  employees E
  LEFT JOIN titles T ON (E.emp_no = T.emp_no)
  RIGHT OUTER JOIN dept_emp DE ON (DE.emp_no = E.emp_no)
  LEFT JOIN departments D ON (DE.dept_no = D.dept_no)
WHERE T.to_date >= current_date() and  DE.to_date >= current_date() and D.dept_no = 'd009'
GROUP BY T.title
ORDER BY t.title;



SELECT DISTINCT
  D.dept_name,
  concat(E.first_name, ' ', E.last_name) as full_name,
  s.salary
from departments D
  LEFT JOIN dept_manager M ON (D.dept_no = M.dept_no)
  LEFT JOIN dept_emp DE ON (DE.emp_no = M.emp_no)
  LEFT JOIN employees E ON (DE.emp_no = E.emp_no)
  LEFT JOIN salaries s ON (E.emp_no = s.emp_no)
WHERE M.to_date > now() and s.to_date > now()
ORDER BY D.dept_name;


#
# Bonus Find the names of all current employees, their department name, and their current manager's name.
#
SELECT DISTINCT
  t.title,
  count(*)
from  employees E
  LEFT JOIN titles T ON (E.emp_no = T.emp_no)
  RIGHT OUTER JOIN dept_emp DE ON (DE.emp_no = E.emp_no)
  LEFT JOIN departments D ON (DE.dept_no = D.dept_no)
WHERE T.to_date >= current_date() and  DE.to_date >= current_date() and D.dept_no = 'd009'
GROUP BY T.title
ORDER BY t.title;



/* BONUS */
SELECT DISTINCT
  concat(EMP.first_name, ' ', EMP.last_name) AS full_name,
  X.DEPT_NAME,
  X.full_name

FROM employees EMP
  LEFT JOIN dept_emp DE ON (DE.emp_no = EMP.emp_no)
INNER JOIN (
   SELECT DISTINCT
        D.dept_no,
        D.dept_name,
        concat(E.first_name, ' ', E.last_name) AS full_name
      FROM departments D
        LEFT JOIN dept_manager M ON (D.dept_no = M.dept_no)
        LEFT JOIN dept_emp DE ON (DE.emp_no = M.emp_no)
        LEFT JOIN employees E ON (DE.emp_no = E.emp_no)
      WHERE M.to_date > now()
      ORDER BY D.dept_name
) X ON (X.dept_no = DE.dept_no)
WHERE DE.to_date >= current_date();



#     240,124 Rows
#
#     Employee Name | Department Name  |  Manager Name
#     --------------|------------------|-----------------
#      Huan Lortz   | Customer Service | Yuchang Weedman






