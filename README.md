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

*Retrieve current employees who were born between January 1, 1965 and December 31, 1965.*

Table: [Mentorship Eligibility]( https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)

## Summary of Analysis

**Employees Eligible for Retirement**

![](https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Data/Retiring_titles.PNG)

According to the table above, out of the 300,024 employees within the compnay, 90,398 (30.13%) are eligible for retirement. The majority of retirees have positions as Senior Engineer, Senior Staff, and Engineer. I recommend the company to start looking for people to fill these positions now due to the amount of eligible retirees. 

**Qualified Mentors**

![](https://github.com/Ariannatopbjerg/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_title_count.PNG)

There are 1549 employees who are eligible for the mentorship role.






