use db1;
create table employee(
emp_id int primary key,
name varchar(50),
department varchar(50),
salary decimal(10,2),
city varchar(50)
);
insert into employee values
(1,'vyshnav','IT',20000,'malappuram'),
(2,'hari','HR',28000,'Kochi'),
(3,'pranav','Finance',30000,'Calicut'),
(4,'kichu','IT',25000,'malappuram'),
(5,'vishnu','Editor',18000,'Thamaraserry');

select name,department from employee;
select * from employee where department='IT';--  Filtering IT depatment using where clause
select name,salary from employee where salary>15000; -- salary greater than 15000
select * from employee where department='HR' and salary>20000; -- logical AND
select * from employee where city='malappuram' or city='Kochi'; -- logical OR
select * from employee order by salary desc; -- order by
select distinct department from employee; -- distinct
select * from employee limit 3; -- using limit
-- aggregate functions
select count(*) as total_employees from employee;-- count
select avg(salary) as average_salary from employee;-- average
select max(salary) as max_salary from employee;-- max
select min(salary) as min_salary from employee;--  min

-- clause
select department,count(*) as emp_count
from employee
group by department; -- group by

select department,count(*) as emp_count
from employee
group by department
having count(*)>1; -- having clause

select * from employee order by department asc,salary desc;--  order by