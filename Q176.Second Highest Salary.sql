--Problem
/*
 Table: Employee

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.

Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.
The query result format is in the following example.

来源：力扣（LeetCode）
链接：https://leetcode-cn.com/problems/second-highest-salary
著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
*/


--Solution
###METHOD 1
SELECT MAX(e.salary) AS SecondHighestSalary
FROM Employee e,Employee ee 
WHERE e.salary < ee.salary


###METHOD 2
SELECT MAX(e.salary) AS SecondHighestSalary
FROM Employee e RIGHT JOIN Employee ee ON e.salary < ee.salary


###MAY BE THE FASTEST ONE
SELECT
(SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1,1) AS SecondHighestSalary


