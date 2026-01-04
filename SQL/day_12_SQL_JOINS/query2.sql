--coalesce function
select * from students;
select * from courses;
select * from enrollments;
select * from courses where price is NULL;
select course_id,
    course_name,
    coalesce(price,'0.00') as price
from courses;
--subquerry
-- to find the location of the student who got completion in the course status

select country from students 
WHERE student_id IN (
    select student_id from enrollments 
    WHERE status='completed');
--it return the country name as the number of time thee course completed from perticular country
--to avoid multiple answeers, use keyword distinct 

select DISTINCT country as highest_completion from students 
WHERE student_id IN (
    select student_id from enrollments 
    WHERE status='completed') ;






