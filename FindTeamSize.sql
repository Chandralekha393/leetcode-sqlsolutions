# Write your MySQL query statement below
#Solution from leetcode problem 1303. Find the Team Size

WITH TS AS
(
SELECT team_id, COUNT(employee_id) as team_size
FROM Employee
GROUP BY team_id
) 
SELECT Employee.employee_id, TS.team_size
FROM Employee
LEFT JOIN TS
ON  TS.team_id = Employee.team_id