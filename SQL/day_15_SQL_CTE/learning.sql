--common table expression 
SELECT c.category,s.student_id,e.enroll_date,
ROW_NUMBER()over(
    partition by c.category 
    order by e.student_id ASC
    ) as row_num
from enrollments e 
join courses c 
    on c.course_id=e.course_id 
join students s 
    on s.student_id=e.student_id;
--above is the querry to select the required coloumn with grouping 
--if we want to do comparison and operation with the taken result(for this context: select the student based on category who is enrolled first )
--we use CTE fr this 
with studentRank as (
SELECT c.category,
    s.student_name,
    e.enroll_date,
    ROW_NUMBER()over(
        partition by c.category 
        order by e.student_id ASC
    ) as row_num
    from enrollments e 
    join courses c 
        on c.course_id=e.course_id 
    join students s 
        on s.student_id=e.student_id
)
select category,
    student_name,
    enroll_date 
from studentRank
where row_num=1;
--divide the students into three catyegory based on spending 
with student_spending as (
    select e.student_id,sum(c.price) as spending
    from enrollments e 
    join courses c 
        on e.course_id=c.course_id
    group by student_id
    )
SELECT student_id,
    NTILE(3) OVER (ORDER BY spending)as rank_per_spending
from student_spending;
