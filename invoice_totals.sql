--  Provide a query that shows the Invoice Total, 
--  Customer name, Country and Sale Agent name for 
--  all invoices and customers.

USE Chinook

SELECT i.Total, i.BillingCountry,
  c.FirstName AS CustFirstName,
  c.LastName AS CustLastName,
  e.FirstName AS AgentFirstName, e.LastName AS AgentLastName
FROM Invoice i
  LEFT JOIN Customer c on i.CustomerId = c.CustomerId
  LEFT JOIN Employee e on c.SupportRepId = e.EmployeeId
