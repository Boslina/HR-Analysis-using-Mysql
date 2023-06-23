create database final_presentation;
use final_presentation;
create table Hr_Analysis (ID CHAR(15),
			 First_name CHAR(15),
			 Last_name CHAR(15),
			 Date_of_birth CHAR(15),
			 Gender CHAR(6),
			 Race CHAR(45),
			 Department CHAR(30),
			 Job_Title CHAR(40),
			 Location CHAR(25),
			 Hire_date CHAR(15),
			 Term_Date CHAR(25),
			 City CHAR(15),
			 State CHAR(15));

use final_presentation;
select *
from hr_analysis;

select ID
from hr_analysis;


select term_date
from hr_analysis;

## what is the gender breakdown of employee in the company
select gender as Gender_count,
count(*) as Number
from hr_analysis
group by gender;


## What is the race/ethnicity breakdown of employees in the company?

select race as Employee_race,
count(*) as Number
from hr_analysis
group by race;

## What is the age distribution of employees in the company?

select date_of_birth as Employee_age,
count(*) as Distribution
from hr_analysis
group by date_of_birth;

## How many employees work at the headquarters versus locations?
select location,
count(*) as Numbers
from hr_analysis
group by location;

## How does the gender distribution vary across departments and job title

select gender as Gender,department as Department,
count(gender) as No_of_gender
from hr_analysis
group by gender,department;



## What is the distribution of job titles across the company?
select job_title as Job_title,department as Department,
count(job_title) as No_of_titles
from hr_analysis
group by job_title,department;

## . What department has the highest turnover rate?
select department,
count(*)
from hr_analysis
group by department;


## What is the distribution of employees across locations by state?
select state,
count(*) as Employee_distribution
from hr_analysis
group by state;

#  How has the company’s employee count changed overtime based on hire and term dates?

select hire_date,
count(*)
from hr_analysis
group by hire_date;

## What is the tenure distribution for each department

select department,hire_date
from hr_analysis
order by term_date;