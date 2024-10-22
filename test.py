'''
sql subquery concept and practice questions

Sure! A subquery is a SQL query nested inside another query. It can be used to perform operations that require multiple steps, 
allowing you to filter or aggregate data in a more complex way. Subqueries can be used in various places within a SQL statement, including:

In the SELECT clause: To derive a value for each row.
In the WHERE clause: To filter results based on the results of another query.
In the FROM clause: To treat the results of a query as a table.

Types of Subqueries
Single-row subquery: Returns a single row.
Multiple-row subquery: Returns multiple rows.
Correlated subquery: References columns from the outer query.

Examples
--------
Using a subquery in the WHERE clause:
SELECT employee_id, employee_name
FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE location_id = 1000);

Using a subquery in the SELECT clause:
SELECT employee_id,
       (SELECT AVG(salary) FROM employees WHERE department_id = e.department_id) AS avg_salary
FROM employees e;

Using a correlated subquery:
SELECT e1.employee_id, e1.salary
FROM employees e1
WHERE e1.salary > (SELECT AVG(salary) FROM employees e2 WHERE e1.department_id = e2.department_id);

Practice Questions
Basic Subquery: Write a query to find all products with a price higher than the average price of all products.

Subquery in the FROM clause: Create a query that retrieves the total sales per product by using a subquery to calculate total sales.

Correlated Subquery: Find employees whose salary is greater than the average salary of their department.

Subquery with JOIN: Write a query that lists all employees and their department names, but only for those departments located in a specific city (e.g., "New York").

Not Exists: Write a query to find all customers who have not placed any orders.

select * from products
where price > (select AVG(price) from product)

SELECT p.product_name,
       (SELECT COUNT(s.product_id) FROM sales s WHERE s.product_id = p.product_id) AS total_sales
FROM products p;

select employee_id ,employee_name, employee_salary 
from employess e where salary > (select AVG(salary) where e.departent_id = d.department_id from department as d)
'''