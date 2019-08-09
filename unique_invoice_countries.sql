--  Provide a query showing a unique/distinct 
--  list of billing countries from the Invoice table.


USE Chinook

SELECT BillingCountry, COUNT(BillingCountry) AS InvoicesPerCountry
FROM Invoice
GROUP BY BillingCountry