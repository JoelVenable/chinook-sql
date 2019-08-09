-- Looking at the InvoiceLine table, provide a query
-- that COUNTs the number of line items for Invoice ID 37.


USE Chinook

SELECT i.InvoiceId, COUNT(i.InvoiceId) AS NumItems
FROM InvoiceLine i
WHERE i.InvoiceId = 37

