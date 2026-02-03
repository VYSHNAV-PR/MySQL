use sql_joins;

create table students(
student_id int primary key,
name varchar(50)
);
insert into students values
(1,'Alice'),
(2,'Bob'),
(3,'Charlie'),
(4,'Vyshnav');

create table courses(
course_id int primary key,
student_id int,
course_name varchar(50)
);
insert into courses values
(101,1,'Math'),
(102,2,'English'),
(103,1,'Science'),
(104,3,'History'),
(105,5,'History');

select students.name,courses.course_name
from students
inner join courses
on students.student_id=courses.student_id;

select students.name,courses.course_name
from students
left join courses
on students.student_id=courses.student_id;

select students.name,courses.course_name
from students
right join courses
on students.student_id=courses.student_id;

select students.name ,count(courses.course_id) as total_course
from students
inner join courses
on students.student_id=courses.student_id
group by students.name
having count(courses.course_id)>1;