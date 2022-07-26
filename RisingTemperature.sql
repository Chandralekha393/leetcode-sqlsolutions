# Solution to LeetCode Problem 197. Rising Temperature
#Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
#Day 7
SELECT T1.id
FROM Weather AS T1, Weather AS T2
WHERE T1.temperature > T2.temperature and SUBDATE(T1.recordDate, INTERVAL 1 DAY) = T2.recordDate;