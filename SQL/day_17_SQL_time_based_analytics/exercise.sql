--1.how many enrollmenrts hapen each month 
select 
    strftime('%Y-%m',enroll_date) as enroll_month, 
    count(*) as No_of_enrolls
from enrollments
group by enroll_month
order by enroll_month;
--MoM ANALYSIS 
with monthly_data as (
SELECT 
    strftime('%Y-%m',e.enroll_date) as enroll_month,
    COUNT(*) AS monthly_enrollments
FROM enrollments e
JOIN courses c 
    ON c.course_id = e.course_id
GROUP BY enroll_month
ORDER BY enroll_month
)
SELECT 
    enroll_month,
    monthly_enrollments,
    lag(monthly_enrollments)over(
        order by enroll_month) AS previous_month,
    monthly_enrollments-lag(monthly_enrollments)over(
        order by enroll_month) AS growth
from monthly_data
ORDER BY enroll_month;
--




