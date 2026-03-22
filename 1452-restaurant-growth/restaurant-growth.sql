# Write your MySQL query statement below
WITH DailyTotals AS (
    SELECT 
        visited_on, 
        SUM(amount) AS day_amount
    FROM Customer
    GROUP BY visited_on
)
SELECT 
    visited_on,
    amount,
    average_amount
FROM (
    SELECT 
        visited_on,
        SUM(day_amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
        ROUND(AVG(day_amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount,
        DENSE_RANK() OVER(ORDER BY visited_on) AS day_rank
    FROM DailyTotals
) AS RollingCalculations
WHERE day_rank >= 7;