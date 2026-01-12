--window function is a function that perform calculation across row and it does not change the number of rows 
-- i,e every operation in sql return a single result as single coloumn, but window function return the result of the user operation combined with all existing rows 
select * from students; 
select * from courses; 
select * from enrollments;
 --Rank all courses based on price 
select course_name, 
rank() OVER (ORDER BY price DESC) as ranking 
from courses; 
--Rank courses within each category based on price. 
select course_id,category, 
rank() OVER (partition by category ) as ranking 
from courses; 
--Find the top 2 priced courses in each category. 
SELECT course_name,category,price, 
rank() OVER ( PARTITION BY category ORDER BY price DESC ) AS top_course 
FROM courses WHERE top_course>=2 

--we thought the logic is correct for the above code , but sql does not execute in a ordered flow like a program . rather it execute the where condition firstg and do the internal condition secondly 
--the below code is a corrected one that solves the problem 
SELECT course_name,category,price 
from( SELECT course_name,category,price, 
rank() OVER ( PARTITION BY category ORDER BY price DESC ) 
AS top_course FROM courses) 
WHERE top_course<=2; 
--the below is the inner query of above problem which list the courses and their process in order of ranking 
SELECT course_name,category,price, 
rank() OVER ( PARTITION BY category ORDER BY price DESC ) AS top_course 
FROM courses; 
--For each student, assign a number to each enrollment 
select student_name,country, 
ROW_NUMBER() OVER (PARTITION BY student_name ORDER BY student_id ) AS enrollment 
from students;

--how to find the strudent who who enrolled in more than one cource and revenue of that course freater than 5000
select e.student_id,s.student_name,c.course_id,c.course_name,count(*) as enrollments,sum(c.price) as revenue 
from enrollments e 
join students s 
    on e.student_id=s.student_id
join courses as c 
    on e.course_id=c.course_id
group by e.student_id 
HAVING count(*)>1
    AND sum(price)>5000;
select * from enrollments;
--Find the top 2 priced courses in each category.
SELECT course_name,category,price 
FROM(
    SELECT course_name,category,price, 
    rank() over(
        partition by category 
        ORDER BY price DESC
        ) as top_courses
    FROM courses
    )
where top_courses <=1;
--For each student, assign a number to each enrollment based on enroll_date (earliest = 1).
WITH student_enrollments as               --this is called common table expression (CTE)
(select s.student_id,
    s.student_name,
    e.enroll_date,
    ROW_NUMBER() OVER(
    PARTITION BY s.student_id 
        ORDER BY e.enroll_date) as erl_num
from students s 
JOIN enrollments e 
    on s.student_id=e.student_id)
SELECT* from student_enrollments 
WHERE erl_num=1;
--Show each enrollment along with the running total revenue for that course.
SELECT e.enrollment_id,c.course_id,e.enroll_date,c.price,
sum(c.price) over(
    partition by c.course_id
    order by date(e.enroll_date)
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW   --this will give the correct output in every condition 
    ) as running_total_revenue
FROM enrollments e 
JOIN courses as c 
    on c.course_id=e.course_id
WHERE c.price is not null;
--For each course, show:course_name ,price ,average price of its category ,difference from category average
SELECT course_name,price,category,     --it will return course_name,price,category
avg(price) OVER (
    PARTITION BY category 
    ) as average_price,                --it will return the average  
price - avg(price) OVER (
    PARTITION BY category
    ) AS diff_from_catogory_avg        --it willl return the difference price from average category
FROM courses
WHERE price IS NOT NULL;
--Find the student who has spent the most money.  

--subquery approach 
SELECT e.student_id,s.student_name,sum(c.price) as spending 
FROM enrollments e 
JOIN courses c 
    on c.course_id=e.course_id
join students s 
    ON s.student_id=e.student_id
GROUP BY e.student_id,s.student_name
ORDER by spending DESC 
limit 1;
--For each course, show: total enrollments average enrollments across all courses
SELECT c.course_name,
    c.course_id,
    count(e.enrollment_id) AS no_of_enrolls,
    avg(count(enrollment_id)) over() as avg_enroll
from enrollments e
JOIN courses c 
ON C.course_id=e.course_id
GROUP BY c.course_id,c.course_name
order by c.course_id;