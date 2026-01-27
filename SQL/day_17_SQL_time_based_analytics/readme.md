# Day 17 – Time-Based Analysis (MoM & Trends)

## Objective
To understand how data changes over time and how analysts measure
growth, decline, and trends using SQL.

This day focused on comparing time periods rather than just
aggregating data.

---

## Dataset Used
- students
- courses
- enrollments

Primary focus was on the enrollments table using enroll_date
for time-based analysis.

---

## Key Concepts Practiced
- Monthly aggregation
- Month-over-Month (MoM) comparison
- LAG() for previous period analysis
- PARTITION BY for category-level trends
- Handling missing months in time-series data

---

## Problems Covered
1. Monthly enrollment trend
2. Month-over-Month enrollment growth
3. Category-wise monthly trends
4. First month vs latest month comparison
5. Impact of missing months on MoM analysis

---

## Key Learnings
- Growth is always a comparison across time
- GROUP BY alone cannot handle trend analysis
- Window functions are essential for time-based analytics
- Missing periods can mislead MoM results if not handled properly

---

## Takeaway
Time-based analysis is less about SQL syntax and more about
interpreting change correctly over time.
