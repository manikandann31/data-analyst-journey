CREATE TABLE courses(
    course_id int PRIMARY KEY,
    course_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
DROP table students;
CREATE TABLE students(
    student_id int PRIMARY KEY,
    student_name VARCHAR(100),
    country VARCHAR(50)
);
CREATE TABLE enrollments(
    enrollment_id int PRIMARY KEY,
    student_id ,
    course_id,
    enroll_date DATE,
    status VARCHAR(50)
);
PRAGMA table_info (courses);
PRAGMA table_info (students);
PRAGMA table_info (enrollments);
INSERT INTO courses(course_id, course_name, category, price)
VALUES
(101, 'Python for Data Analysis', 'Data', 3000),
(102, 'SQL Mastery', 'Data', NULL),
(103, 'Web Development Basics', 'Web', 2000),
(104, 'Machine Learning Intro', 'AI', 4000),
(105, 'Cloud Fundamentals', 'Cloud', 3500);
INSERT INTO students (student_id, student_name, country)
VALUES
(1, 'Arun', 'India'),
(2, 'Bala', 'India'),
(3, 'Charan', 'USA'),
(4, 'Divya', 'India'),
(5, 'Esha', 'UK'),
(6, 'Farhan', 'Canada'),
(7, 'Gokul', 'India'),
(8, 'Hari', 'Australia');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date, status)
VALUES
(1001, 1, 101, '2024-01-10', 'completed'),
(1002, 1, 102, '2024-02-15', 'completed'),
(1003, 2, 101, '2024-01-20', 'ongoing'),
(1004, 3, 104, '2024-03-01', 'ongoing'),
(1005, 4, 103, '2024-02-10', 'completed'),
(1006, 5, 101, '2024-03-05', 'ongoing'),
(1007, 5, 104, '2024-03-18', 'completed'),
(1008, 6, 105, '2024-04-01', 'ongoing'),
(1009, 7, 102, '2024-04-05', 'completed'),
(1010, 7, 103, '2024-04-10', 'ongoing');
select * from courses;
select * from students;
select * from enrollments;






















