# Write your MySQL query statement below
SELECT 
    CASE 
        -- If it's the last seat and the ID is odd, keep the ID the same
        WHEN id % 2 = 1 AND id = (SELECT MAX(id) FROM seat) THEN id
        -- If the ID is odd, move it up to the next even number
        WHEN id % 2 = 1 THEN id + 1
        -- If the ID is even, move it down to the previous odd number
        WHEN id % 2 = 0 THEN id - 1
    END AS id,
    student
FROM seat
ORDER BY id;