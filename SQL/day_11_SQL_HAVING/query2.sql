--we can use the values in query1
SELECT* FROM student_scores;
--#1count
--total students 
SELECT count(*) AS total_no_of_students from student_scores;
--Students per department
SELECT department,COUNT(student_name) AS NO_OF_STUDENTS  FROM student_scores
GROUP BY department
HAVING NO_OF_STUDENTS>3;
--student per semester 
SELECT semester,COUNT(student_name) AS NO_OF_STUDENTS  FROM student_scores
GROUP BY semester;

--#2 average
--average mark per department 
SELECT department, avg(marks) AS average_marks FROM student_scores
GROUP BY department;
--Average marks per semester
sELECT semester, avg(marks) AS average_marks FROM student_scores
GROUP BY semester;
--highest scorer overall
--method 1
SELECT max(marks) FROM student_scores;
--method 2,it return the gighest mark with the student name 
SELECT student_name,marks FROM student_scores
where marks= (select MAX(marks) from student_scores);
--average mark greater than 60 per department 
SELECT semester,avg(marks) as average_mark from student_scores
GROUP  BY semester
HAVING average_mark>60;
--group by department,semester 
SELECT  department,semester,count(*) as students FROM student_scores
GROUP BY department,semester;




