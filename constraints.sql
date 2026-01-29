use DB1;
create table student(
     st_id int primary key,
     st_name varchar(55) not null,
     email varchar(100) unique
);
insert into student(st_id,st_name,email)
values(1,'vyshnav','vyshu@gmail.com'),(2,'hari','hari123@gmail.com');
select * from student;

create table course(
    course_id int primary key,
    course_name varchar(100) unique
);
insert into course(course_id,course_name)
values(1,'python'),(2,'mysql');
select * from course;
 
create table enrollment(
  enrollment_id int primary key,
  st_id int,
  course_id int,
  foreign key (st_id) references student(st_id),
  foreign key (course_id) references course(course_id)
  );
  
insert into enrollment(enrollment_id,st_id,course_id)
values(1,1,1),(2,1,2);
select * from enrollment;

use college_db;
create table orders(
order_id int primary key auto_increment,
quantity int check(quantity>0),
price decimal(10,2) check(price>=100),
stock int default 10
);
insert into orders(quantity,price,stock) values(3,250,20);
select * from orders;

create table enroll(
student_id int,
course_id int,
primary key(student_id,course_id)
);
insert into enroll values(1,102);
select * from enroll;