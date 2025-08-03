WITH salary_ranks AS (
    SELECT name,departmentId,salary,
    DENSE_RANK() OVER(PARTITION BY departmentId ORDER BY salary DESC) rnk
    FROM Employee
)
SELECT d.name AS Department, sr.name AS Employee, sr.salary AS Salary
FROM salary_ranks sr
JOIN Department d
ON sr.departmentId=d.id
WHERE sr.rnk IN (1,2,3);