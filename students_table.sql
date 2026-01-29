create database DB1;
use DB1;
create table Students(
    StudentID int primary key,
    name varchar(50),
    age int,
    course varchar(50)
);

select * from students;
 
 Alter table students add column email varchar(100);
 alter table students modify column email varchar(200);
 alter table students drop column email; 
 
 -- inserting value
 insert into students(StudentID,name,age,course)
 value(2,'hari',24,'mca');
-- updating table
update students set age=25 where StudentID=1;
delete from students where StudentID=2;

insert into students(StudentID,name,age,course)
 values(4,'pranav',21,'bca'); 
 rollback;