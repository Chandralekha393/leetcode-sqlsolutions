#Solution to LeetCode Problem 577. Employee Bonus
#Write an SQL query to report the name and bonus amount of each employee with a bonus less than 1000.
#Day 7

SELECT Employee.name, Bonus.bonus
FROM Employee
LEFT JOIN Bonus ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 OR Bonus.bonus IS NULL
