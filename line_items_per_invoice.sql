-- Looking at the InvoiceLine table, provide a query that COUNTs 
-- the number of line items for each Invoice. 


USE Chinook

SELECT i.InvoiceId, COUNT(i.InvoiceId) AS NumItems
FROM InvoiceLine i
GROUP BY i.InvoiceId