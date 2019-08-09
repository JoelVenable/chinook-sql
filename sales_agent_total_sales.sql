-- Provide a query that shows total sales made by each sales agent.

USE Chinook

SELECT
  e.FirstName,
  e.LastName,
  SUM(i.Total)
FROM Employee e
  JOIN Customer c ON e.EmployeeId = c.SupportRepId
  LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.FirstName, e.LastName