# Pewlett-Hackard-Analysis
Query Language Used: SQL

## Analysis Purpose
This analysis will help prepare this company for a “silver tsunami” by determining the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.  

## Methods for Analysis 

**SQL file:** [Employee_Database_challenge.sql]( https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Queries/Employee_Database_challenge.sql)

***Determining the number of retiring employees:***

*Step 1:* 

Develop a table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.

Table: [Retirement Titles]( https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv)

*Step 2:* 

Since there are duplicate title positions for some employees because they have switched titles over the years, a new table is made to remove these duplicates and keep only the most recent title of each employee.


Table: [Unique Titles]( https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv)

*Step 3:*

Retrieve the number of employees by their most recent job title who are about to retire.

Table: [Retiring Titles]( https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)

***Identifying employees who are eligible to participate in a mentorship program:***

Table: [Mentorship Eligibility]( https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)
