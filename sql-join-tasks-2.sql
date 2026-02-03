use sql_joins;
drop table courses;


create table students(
student_id int primary key,
name varchar(50)
);
insert into students values
(1,'Alice'),
(2,'Bob'),
(3,'Charlie'),
(4,'Diana');

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
(105,5,'Biology'),
(106,null,'Physics');
-- 5. Show students who are not enrolled in any course.
SELECT students.student_id, students.name
FROM students 
LEFT JOIN courses 
ON students.student_id = courses.student_id
WHERE courses.student_id IS NULL;

-- 6. Show all course names with their student names, even if no student is enrolled
SELECT courses.course_name, students.name
FROM courses 
LEFT JOIN students 
ON courses.student_id = students.student_id;

-- 7. Show the total number of courses each student is enrolled in.
SELECT students.student_id, students.name, COUNT(courses.course_id) AS total_courses
FROM students 
LEFT JOIN courses 
ON students.student_id = courses.student_id
GROUP BY students.student_id, students.name;

-- 8. Show students and the number of distinct courses each one takes.
SELECT students.student_id, students.name, COUNT(DISTINCT courses.course_name) AS distinct_courses
FROM students 
LEFT JOIN courses 
ON students.student_id = courses.student_id
GROUP BY students.student_id, students.name;

-- 9. Show a list of all student-course pairs, ordered by student name.
SELECT students.name, courses.course_name
FROM students 
LEFT JOIN courses 
ON students.student_id = courses.student_id
ORDER BY students.name;

-- 10. Show course names which are not assigned to any student
SELECT course_name
FROM courses
WHERE student_id IS NULL;

