-- Provide a query that includes the 
-- purchased track name with each invoice line item.



USE Chinook

SELECT i.UnitPrice, i.InvoiceId, t.Name AS TrackName
FROM InvoiceLine i
LEFT JOIN Track t ON i.TrackId = t.TrackId
ORDER BY i.InvoiceId