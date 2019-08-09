--  Provide a query that shows the invoices associated with
--  each sales agent. The resultant table should include
--  the Sales Agent's full name.


USE Chinook

SELECT i.CustomerId, i.InvoiceDate,
  c.SupportRepId,
  e.FirstName, e.LastName
FROM Invoice i
  LEFT JOIN Customer c on i.CustomerId = c.CustomerId
  LEFT JOIN Employee e on c.SupportRepId = e.EmployeeId
ORDER BY c.SupportRepId