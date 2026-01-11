select * from students;
select * from courses;
select * from enrollments;
--Find courses whose price is higher than the average course price.
SELECT course_name, price
FROM courses
WHERE price > (
    SELECT AVG(price)
    FROM courses
    WHERE price IS NOT NULL
);
--Find students who enrolled in courses that cost more than 3000.

SELECT DISTINCT s.student_name 
from students as s
JOIN enrollments as e 
    on s.student_id=e.student_id
JOIN courses as c 
    on c.course_id=e.course_id
WHERE c.price>3000;

--EXECUTION ORDER OF KEYWORD
----SELECT
-----FROM
-------JOIN
--------WHERE
----------GROUP BY
------------HAVING
---------------ORDER BY
--Find courses that have more enrollments than the average enrollment count.
SELECT c.course_name
FROM courses c
JOIN enrollments e
    ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name
HAVING COUNT(*) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT course_id, COUNT(*) AS enrollment_count
        FROM enrollments
        GROUP BY course_id
    )
);
--Find students who have not enrolled in any course.
SELECT s.student_name,s.student_id
from students as s
left join enrollments as e 
    on s.student_id = e.student_id
WHERE e.student_id is null;
--Find students whose total spending is greater than the average spending per student.
SELECT s.student_id,s.student_name,sum(c.price) as spending
FROM students as s 
JOIN enrollments as e
    on s.student_id=e.student_id 
JOIN courses as c 
    on c.course_id=e.course_id
group by s.student_id,student_name
having sum(c.price)>                                        --this is outer querry which compare each spending and finds the largest
    select avg(student_spending)                              --this is middle querrry which finds rthe average spending across students
    FROM(
        select e2.student_id,sum(c2.price) as student_spending --
        from enrollments as e2                                 --
        join courses as c2                                    --this is ine=ner querry which find the toal spending per student 
            on c2.course_id=e2.course_id                      --
        group by e2.student_id                                --
    )
);
--Find courses where all enrollments are completed.
select course_id from courses 
WHERE course_id not in (
    SELECT course_id
    from enrollments
    WHERE status='ongoing'
);
--Find the category that generated the highest total revenue.
SELECT c.category,sum(c.price) as revenue
FROM courses c
join enrollments e 
    on c.course_id=e.course_id
group by c.category
order by revenue DESC
limit 1;
--Find students who have enrolled in more than one course category.
select s.student_name,e.student_id,count(DISTINCT c.category) as no_of_courses
FROM enrollments e 
join students s 
    on s.student_id=e.student_id
JOIN courses c
    on e.course_id=c.course_id
group by e.student_id 
having count(distinct c.category)>1;
--Find courses that were enrolled but never completed by any student.
select DISTINCT c.course_id 
from courses c
join enrollments e 
    on c.course_id=e.course_id 
where c.course_id not in(
    select e.course_id 
    from enrollments
    where e.status='completed')

