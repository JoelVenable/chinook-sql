--  How many Invoices were there in 2009 and 2011?


USE Chinook


SELECT COUNT(InvoiceDate) AS NumInvoices
FROM Invoice
WHERE InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01'

SELECT COUNT(InvoiceDate) AS NumInvoices
FROM Invoice
WHERE InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01'