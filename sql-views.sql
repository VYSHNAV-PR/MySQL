create database sql_views;
use sql_views;
create table employee(
employee_id int primary key,
firstname varchar(50),
lastName VARCHAR(50),
department VARCHAR(50),
salary INT,
hireDate DATE
);
INSERT INTO employee VALUES
(101, 'John', 'Doe', 'IT', 80000, '2021-03-15'),
(102, 'Jane', 'Smith', 'HR', 75000, '2019-06-01'),
(103, 'Emily', 'Davis', 'IT', 90000, '2020-11-20'),
(104, 'Michael', 'Johnson', 'Marketing', 70000, '2018-04-10'),
(105, 'Jessica', 'Brown', 'HR', 78000, '2022-01-22');

select * from IT_employee;
update IT_employee
set salary=90000
where employee_id=101;

drop view IT_employee;

create view IT_employee as
select employee_id,firstname,lastname,salary
from employee
where department='IT';

CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);
INSERT INTO Departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Marketing');

CREATE TABLE Projects (
 ProjectID INT PRIMARY KEY,
 ProjectName VARCHAR(50),
 DepartmentID INT
);
INSERT INTO Projects VALUES
(201, 'Website Revamp', 1),
(202, 'Recruitment Drive', 2),
(203, 'Ad Campaign', 3);

create view employee_details as
select E.employee_id, E.firstname,D.DepartmentName,E.salary 
from employee E
inner join Departments D
on E.department=D.DepartmentName;
-- select DepartmentName,avg(salary)as avg_salary
-- from employee_details
-- group by DepartmentName;

create view employee_project as
select e.firstname,d.DepartmentName,p.ProjectName,e.salary
from employee e
inner join Departments d  ON e.department = d.DepartmentName
inner join Projects p on d.DepartmentID=p.DepartmentID;

select * from employee_project;