-- Provide a query only showing the Customers from Brazil.

USE Chinook

SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country = 'Brazil'