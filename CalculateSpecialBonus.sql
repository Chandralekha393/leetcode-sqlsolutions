#Solution to LeetCode Problem 1873 
#Calculate special bonus 
#Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number 
#and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.
#DAY 4

SELECT employee_id, IF(employee_id%2=0 OR name like 'M%', 0, salary) as bonus 
FROM Employees
ORDER BY employee_id