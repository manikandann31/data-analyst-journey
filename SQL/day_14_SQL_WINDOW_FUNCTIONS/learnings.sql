--window function is a function that perform calculation across row and it does not change the number of rows
-- i,e  every operation in sql return a single result as single coloumn, but window function return the result of the user operation combined with all existing rows 


select * from students;
select * from courses;
select * from enrollments;

--Rank all courses based on price
select course_name,
rank() OVER (ORDER BY price DESC) as ranking 
from courses;
select * from courses;
--Rank courses within each category based on price.
select course_id,category,
rank() OVER (partition by category ) as ranking 
from courses;
--Find the top 2 priced courses in each category.
SELECT course_name,category,price,
rank() OVER (
    PARTITION BY category            
    ORDER BY price DESC
    ) AS top_course
FROM courses
WHERE top_course>=2
--we thought the logic is correct for the above code , but sql doesnot execute in a ordered flow lke a progeram . rather it execute the where condition firstg and  do the internal condition secondly
--the below code is a corrected one that solves the problem 

SELECT course_name,category,price
from(
SELECT course_name,category,price,
rank() OVER (
    PARTITION BY category 
    ORDER BY price DESC
    ) AS top_course
FROM courses)
WHERE top_course<=2;
--the below is the inner query of above problem which list the courses and their proces in order ofd ranking 
SELECT course_name,category,price,
rank() OVER (
    PARTITION BY category 
    ORDER BY price DESC
    ) AS top_course
FROM courses;
--For each student, assign a number to each enrollment
select student_name,country,
ROW_NUMBER() OVER (PARTITION BY student_name ORDER BY student_id ) AS enrollment
from students;
