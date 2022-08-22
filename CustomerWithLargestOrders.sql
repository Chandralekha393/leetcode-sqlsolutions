# Solution to LeetCode Problem 586. Customer Placing the Largest Number of Orders
#Write an SQL query to find the customer_number for the customer who has placed the largest number of orders.
#Helpful Tip: Derived tables must have own Alias
SELECT  customer_number
FROM Orders
GROUP BY customer_number 
HAVING count(customer_number) = (SELECT MAX(order_count) 
                                 FROM (SELECT count(order_number) as order_count FROM Orders GROUP BY customer_number) as T1) 