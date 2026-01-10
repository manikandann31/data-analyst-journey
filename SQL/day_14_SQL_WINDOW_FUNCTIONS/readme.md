Day 14 – SQL Window Functions (Ranking & Analytical Queries)

On Day 14, I focused on understanding and applying SQL window functions
to perform advanced analytical operations without reducing rows,
which is a key requirement in real-world data analysis.

This day helped me clearly understand the difference between
GROUP BY aggregations and window functions using OVER().

Key concepts practiced:
- Window functions using OVER()
- PARTITION BY for group-wise analysis
- ORDER BY inside window functions for ranking and sequencing
- ROW_NUMBER(), RANK(), and DENSE_RANK()
- Using SUM() and COUNT() as window functions
- Comparing individual rows against group-level metrics

Problems explored:
- Ranking courses based on price
- Category-wise ranking of courses
- Finding top-priced courses within each category
- Assigning enrollment order per student
- Calculating running totals for revenue
- Comparing course price with category average

What I learned:
- GROUP BY reduces rows, while window functions preserve rows
- PARTITION BY allows analysis within logical groups
- ROW_NUMBER(), RANK(), and DENSE_RANK() behave differently in tie cases
- Window functions are essential for ranking, running totals,
  and comparative analytics

Challenges faced:
- Initially tried solving ranking problems using GROUP BY
- Understood that window functions are the correct approach
  when row-level detail must be preserved

This day significantly improved my analytical SQL skills
and prepared me to handle advanced interview-level SQL questions.
