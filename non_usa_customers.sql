-- Provide a query showing Customers (just their full names, 
-- customer ID and country) who are not in the US.

USE Chinook

SELECT *
FROM Customer
WHERE NOT Country = 'USA'