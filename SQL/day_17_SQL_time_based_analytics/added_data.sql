INSERT INTO courses (course_id, course_name, category, price) VALUES
(106, 'Advanced SQL Analytics', 'Data', 3000),
(107, 'Power BI Fundamentals', 'Data', 3000),
(108, 'Deep Learning Basics', 'AI', 4000),
(109, 'AWS for Beginners', 'Cloud', 3500),
(110, 'Frontend with React', 'Web', 2000);
INSERT INTO students (student_id, student_name, country) VALUES
(9, 'Ishaan', 'India'),
(10, 'John', 'USA'),
(11, 'Kavya', 'India'),
(12, 'Liam', 'UK'),
(13, 'Meera', 'India'),
(14, 'Noah', 'Canada');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date, status) VALUES
(1011, 2, 102, '2024-05-05', 'completed'),
(1012, 3, 105, '2024-05-15', 'ongoing'),
(1013, 4, 101, '2024-06-01', 'completed'),
(1014, 5, 106, '2024-06-10', 'ongoing'),
(1015, 6, 107, '2024-06-20', 'completed');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date, status) VALUES
(1016, 1, 104, '2024-07-01', 'ongoing'),
(1017, 1, 105, '2024-08-05', 'completed'),
(1018, 1, 106, '2024-08-25', 'ongoing');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date, status) VALUES
(1019, 9, 101, '2024-06-15', 'completed'),
(1020, 10, 102, '2024-06-15', 'completed'),
(1021, 11, 103, '2024-06-15', 'ongoing');
INSERT INTO enrollments (enrollment_id, student_id, course_id, enroll_date, status) VALUES
(1022, 12, 104, '2024-01-05', 'completed'),
(1023, 12, 108, '2024-09-01', 'ongoing');
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
