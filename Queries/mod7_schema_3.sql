-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
into employee_count_bydepartment
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
order by de.dept_no;

select * from employee_count_bydepartment;

-- List 1: employee info:
-- Need: emp number, last name, first, name, gender, salary
-- Best tables: employees & salaries
select * from salaries
order by to_date desc;  --does not show the most recen date of employment 
-- Need to pull employment dates from dept_emp table agai

-- Join emp_info to salaries to add the to_date and salary columns to the query
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    e.gender,
    s.salary,
    de.to_date
into emp_info
FROM employees as e
	INNER JOIN salaries as s  --inner join: want all matching records
		ON (e.emp_no = s.emp_no)
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	AND (de.to_date = '9999-01-01');

select * from emp_info;
-- List 2: Management
-- What it will show: Many employees retiring are part of the management team, and these positions require training, 
-- so Bobby is creating this list to reflect the upcoming departures.
-- Need: manager's employee number, first name, last name, starting and ending employment date

-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
-- INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);
-- The table only shows 5 departments with managers... question to ask

-- List 3: Department Retirees
-- What it will show: departments added to the surrent_emp table
-- Need: department names and numbers; emp_no, first_name, last_name, dept_name
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
-- INTO dept_info
FROM current_emp as ce
	INNER JOIN dept_emp AS de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no);

-- Questions to ask from data
--What's going on with the salaries?
--Why are there only five active managers for nine departments?
--Why are some employees appearing twice?

-- Creating tailored lists for answer the above questions