-- Joining tables to have retired employees in their specific departments so we know which 
-- departments will have job openings and how many.
-- How do do this:
--  1)  drop original retirement_info table
--  2)  creat new table and give retirement_info table emp_no column
--  3)  join new retirement_info table to the Dept_emp table

-- step 1)
drop table retirement_info;

-- step 2)
-- Create new table for retiring employees
select emp_no, first_name, last_name
into retirement_info
from employees
where (birth_date between '1952-01-01' and '1955-12-31')
and (hire_date between '1985-01-01' and '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;

-- practicing joining tables
-- inner join with departments and dept_manager tables
-- what I want: department names (department table) , (manager table) employee numbers, from and to dates
select d.dept_name,
	dm.emp_no,
	dm.from_date,
	dm.to_date
from departments as d
inner join dept_manager as dm
on d.dept_no = dm.dept_no;

-- retirement_infor table PROBLEM:
-- Some of the folks from our original list may not even work with the company anymore. 
-- Our original retirement_info table only included individuals with certain birth- and 
-- hire-dates—how many of these people have already left the company?

-- How to get a fully accurate retirement_info table:
-- Employee number
-- Employee name (first and last)
-- If the person is presently employed with PH

-- To get the above requirments:
-- Joining retirement_info and dept_emp tables and Using aliases for code readability
select ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
into current_emp
from retirement_info as ri
left join dept_emp as de               -- this shows that dept_emp is on the right side of the join
on ri.emp_no = de.emp_no
where de.to_date = ('9999-01-01');
-- These aliases only exist within this query and aren't committed to that database.

select * from current_emp;



