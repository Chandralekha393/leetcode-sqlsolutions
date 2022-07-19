#Problem 1350
# Write an SQL query to find the id and the name of all students who are enrolled in departments that no longer exist.
#Faster solutin than using NOT IN 

SELECT S.id, S.name
FROM Students AS S
LEFT JOIN Departments AS D
ON S.department_id = D.id
WHERE D.id IS NULL