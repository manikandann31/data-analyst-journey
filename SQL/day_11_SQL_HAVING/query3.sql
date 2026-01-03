--Find the total number of students in each department.
SELECT * from student_scores;
select department,count(student_name) from student_scores
group by department;
--Find departments that have more than 6 students.
select department,count(student_name) as no_of_students from student_scores
group by department
having no_of_students>6;
--Find the number of students in each semester only for students who scored above 70.
select semester,count(*) as no_of_students_above70 from student_scores
where marks>70 
group by semester;
--Find the average marks per department.
select department,avg(marks) from student_scores
group by department;
--Find the average marks per department.
select department,avg(marks) as average from student_scores
group by department
having average>80;
--find semesters where the average attendance is above 85%.
select semester, avg(attendance) as average from student_scores
group by semester having average>85;
--Find departments that:Have more than 6 students AND have average marks above 75
select department,count(student_name) as no_of_students,avg(marks) as average from student_scores
group by department
having no_of_students>6 and average >75;
--Find semesters that:Have at least 3 students AND have average attendance greater than 85
select semester,count(student_name) as no_of_students,avg(attendance) as average from student_scores
group by semester
having no_of_students>2 and average >85;  -->2 is reffered as no.of.student atleast 3
--number of students per department per semester.
SELECT department,semester,count(student_name) from student_scores
GROUP BY department,semester;
--Find department–semester combinations where the average marks exceed 80.
SELECT department,semester,avg(marks) as average from student_scores
group by department,semester
having average>80;
--Find students who scored above the overall average marks.
SELECT student_name, marks FROM student_scores
WHERE marks > (SELECT AVG(marks) FROM student_scores);
--Find departments whose average marks are higher than the overall average marks.
SELECT department, AVG(marks) AS average_marks FROM student_scores
GROUP BY department
HAVING AVG(marks) > (SELECT AVG(marks) FROM student_scores);
--Find the average marks by gender.
select gender,avg(marks) from student_scores
group by gender;
--Find departments where female students outperform male students on average.
SELECT department FROM student_scores
GROUP BY department
HAVING
    AVG(CASE WHEN gender = 'F' THEN marks END) >
    AVG(CASE WHEN gender = 'M' THEN marks END);







