-- Employees for potential retirement/retired
select em.emp_no, 
	em.first_name, 
	em.last_name,
	ti.title, 
	ti.from_date, 
	ti.to_date
into deliverable_1
from employees as em
left join titles as ti
	on em.emp_no = ti.emp_no
where (em.birth_date between '1952-01-01' and '1955-12-31')
order by em.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
select distinct on (emp_no) emp_no,
first_name,
last_name,
title
into unique_titles
from deliverable_1
order by emp_no asc, to_date desc;   --use desc for to_date column to retrieve the most recent title

-- Retrieve the number of employees by their most recent job title who are about to retire
select count(title), title
into retiring_titles
from unique_titles
group by title
order by count(title) desc;

-- Create a Mentorship Eligibility table
-- Holds: employees who are eligible to participate in mentorship program

select distinct on (em.emp_no) em.emp_no,
	em.first_name,
	em.last_name,
	em.birth_date,
	de.from_date,
	de.to_date,
	ti.title
--into mentorship_eligibility
from employees as em
left join dept_emp as de
	on em.emp_no = de.emp_no
left join titles as ti
	on em.emp_no = ti.emp_no
where (em.birth_date between '1965-01-01' and '1965-12-31') and (de.to_date = '9999-01-01')
order by em.emp_no;

-- Retrieve the number of eligible mentors by title
select count(title), title
into mentorship_title_count
from mentorship_eligibility
group by title
order by count(title) desc;