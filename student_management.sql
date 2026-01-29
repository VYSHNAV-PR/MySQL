create database college_db;
use college_db;
create table student(
    student_id varchar(10) not null primary key,
    student_name varchar(10) not null,
    age int not null,
    place varchar(20) not null
);
insert into student(student_id,student_name,age,place)
 values('s1','Alex',21,'Kochi'),
 ('s2','Maria',22,'Delhi');
 
 update student set student_name='Ronaldo', place='Mumbai'where student_id='s1';
 commit;
 delete from student where student_id='s2';
 rollback;
  select * from student; 
  
-- Add new column
alter table Student add column email Varchar(255) unique;
-- Remove the added column
alter table student drop Column email;

-- Modify the `place` column to allow a maximum of 10 characters.
alter table student modify column Place Varchar(10);
