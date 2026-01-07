--case statement 
--checking with hardcode values
SELECT
case
    when 5>6 then 'false'
    else 'true'
end as result;
--null handling 
select
s.student_name,e.status
FROM students as s
JOIN enrollments as e 
on s.student_id=e.student_id
JOIN courses as c
on c.course_id=e.course_id
WHERE c.price IS NULL;













