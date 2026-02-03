create database sql_aggregate;
use sql_aggregate;

create table students(
id int primary key,
name text,
class text,
marks int
);
insert into students values
(1, 'Alice', '10A', 78),
(2, 'Bob', '10A', 85),
(3, 'Charlie', '10B', 65),
(4, 'David', '10A', 90),
(5, 'Eva', '10B', 72),
(6, 'Farhan', '10B', 88),
(7, 'Grace', '10A', 91);

-- 1. How many students are there in total? (Use COUNT)
select count(*) as total_students
from students;
-- 2. What is the total sum of all student marks? (Use SUM)
SELECT SUM(marks) AS total_marks
FROM students;

-- 3. What is the average mark of all students? (Use AVG)
SELECT AVG(marks) AS average_marks
FROM students;

-- 4. What is the lowest and highest mark? (Use MIN and MAX)
SELECT 
    MIN(marks) AS lowest_mark,
    MAX(marks) AS highest_mark
FROM students;

-- 5. What is the average mark per class? (Use GROUP BY + AVG)
SELECT class, AVG(marks) AS average_marks
FROM students
GROUP BY class;

-- 6. How many students are there in each class? (Use GROUP BY + COUNT)
SELECT class, COUNT(*) AS student_count
FROM students
GROUP BY class;


