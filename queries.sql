--#1
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

--#2
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01 00:00:00' 
AND  hire_date <  '1987-01-01 00:00:00';

--#3
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager dm
LEFT JOIN employees e
ON dm.emp_no = e.emp_no
LEFT JOIN departments d
ON d.dept_no = dm.dept_no;

--#4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no;

--#5
SELECT emp_no, last_name, first_name 
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

--#6
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp d 
ON e.emp_no = d.emp_no
INNER JOIN departments AS dp 
ON dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE '%Sales%';

--#7
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
INNER JOIN dept_emp d 
ON e.emp_no = d.emp_no
INNER JOIN departments dp 
ON dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE 'Development'
OR dp.dept_name LIKE 'Sales';

--#8
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
