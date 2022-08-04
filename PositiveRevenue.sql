# Solution to Leetcode Problem 1821. Find Customers With Positive Revenue this Year
#Write an SQL query to report the customers with postive revenue in the year 2021.
#Day 9
SELECT customer_id
FROM Customers
WHERE year = 2021
GROUP BY customer_id
HAVING SUM(revenue) > 0
