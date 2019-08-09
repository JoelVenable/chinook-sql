-- Provide a query that shows the # of invoices per country.
USE Chinook


SELECT BillingCountry, COUNT(BillingCountry) AS NumInvoices
FROM Invoice i
GROUP BY i.BillingCountry
