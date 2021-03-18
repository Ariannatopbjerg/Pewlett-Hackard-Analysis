-- Employees for potential retirement/retired
select em.emp_no, 
	em.first_name, 
	em.last_name,
	ti.title, 
	ti.from_date, 
	ti.to_date
--into deliverable_1
from employees as em
left join titles as ti
	on em.emp_no = ti.emp_no
where (em.birth_date between '1952-01-01' and '1955-12-31')
order by em.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM deliverable_1
ORDER BY emp_no asc, to_date DESC;   --use desc for to_date column to retrieve the most recent title

-- Retrieve the number of employees by their most recent job title who are about to retire
select count(title), title
into retiring_titles
from unique_titles
group by title
order by count(title) desc;