use college_db;


create table students(
student_id int primary key,
name text,
class text,
marks int
);
insert into students values
(1, 'Aarav', '10A', 76),
(2, 'Bhavya', '10A', 89),
(3, 'Chirag', '10B', 55),
(4, 'Diya', '10C', 92),
(5, 'Eshan', '10A', 65),
(6, 'Fatima', '10B', 78),
(7, 'Gaurav', '10C', 81),
(8, 'Heena', '10B', 95),
(9, 'Ishaan', '10A', 84),
(10, 'Jiya', '10C', 88);
select * from students;

-- 1
select * from  students where marks>80;
-- 2
select class, count(*) as total_student
from students
group by class;

-- 3
select class, avg(marks) as average_marks
from students
group by class;

-- 4
select class, avg(marks) as average_marks
from students
group by class
having avg(marks)>80;

-- 5
select * from students where class='10B' order by marks asc;

-- 6
select class, sum(marks) as total_marks
from students
group by class;

-- 7
select name,marks from students order by marks desc;