create database tasks;
use tasks;

create table Departments(
    dept_id int primary key,
    dept_name varchar(20)
);
insert into Departments(dept_id,dept_name)
value(1,'MCA'),
(1,'MBA');

create table Teachers(
    teacher_id int primary key,
    teacher_name varchar(50)
);
create table Subjects(
    subject_id int,
    subject_name varchar(50),
    teacher_id int,
    foreign key(teacher_id) references Teachers(teacher_id)
);
insert into Teachers(teacher_id,teacher_name)
values(101,'hari'),(102,'vyshnav');
select * from Teachers;
insert into Subjects(subject_id,subject_name,teacher_id)
values(1,'html',101),(2,'css',103);
select * from Subjects;

create table Customers(
    cust_id int primary key,
    cust_name varchar(50),
    phone varchar(20) unique,
    email varchar(100)
);
alter table Customers modify column email varchar(100) unique;
insert into Customers(cust_id,cust_name,phone,email)
values(1,'vyshnav','9645546800','vyshu@gmail.com'),
(2,'hari','9048018588','hari@gmail.com'),
(3,'pranav','9048018588','pranav@gmail.com');

create table Library(
book_id int primary key,
book_name varchar(50) not null,
author varchar(50) not null
);
insert into Library values(101,'macbeth');

create table payment(
  payment_id int primary key,
  amount int check(amount>=100 and amount<=10000),
  method varchar(30)
);
insert into payment(payment_id,amount,method)
value(2,15000,'creditcard');
select * from payment;


create table account(
  acc_id int primary key,
  holder_name varchar(20),
  balance int default 1000,
  created_on timestamp default current_timestamp
  );
  insert into account(acc_id,holder_name)
  values(1,'vyshnav');
  select * from account;
  
  
  create table feedback(
    feedback_id int primary key auto_increment,
    username varchar(50),
    message varchar(50)
  );
  insert into feedback(username,message)
  values('hari','enjoyed');
  select * from feedback;