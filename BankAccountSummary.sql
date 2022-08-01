#Solution to LeetCode problem 1587. Bank Account Summary II
# Write an SQL query to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.
#Day 8 
#GROUP BY is used to group rows that have same values, often used with aggregate functions
#HAVING Clause is used with aggregate functions
SELECT Users.name, SUM(Transactions.amount) as balance
FROM Users
LEFT JOIN Transactions on Users.account = Transactions.account
GROUP BY Users.account
HAVING balance > 10000