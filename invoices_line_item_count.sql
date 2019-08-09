-- Provide a query that shows all Invoices but includes the # of invoice line items.

USE Chinook

SELECT
  i.InvoiceId,
  i.CustomerId,
  i.InvoiceDate,
  i.BillingAddress,
  i.BillingCity,
  i.BillingState,
  i.BillingCountry,
  i.BillingPostalCode,
  i.Total,
  COUNT(i.InvoiceId) AS NumLines
FROM Invoice i
  LEFT JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY 
  i.InvoiceId,
  i.CustomerId,
  i.InvoiceDate,
  i.BillingAddress,
  i.BillingCity,
  i.BillingState,
  i.BillingCountry,
  i.BillingPostalCode,
  i.Total