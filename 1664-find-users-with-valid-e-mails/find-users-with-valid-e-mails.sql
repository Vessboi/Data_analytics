# Write your MySQL query statement below
SELECT 
    user_id, 
    name, 
    mail
FROM Users
-- 'c' tells the function to be Case-Sensitive
WHERE REGEXP_LIKE(mail, '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$', 'c');