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



