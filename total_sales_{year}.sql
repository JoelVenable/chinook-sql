-- What are the respective total sales for each of those years?


USE Chinook


SELECT SUM(i.Total) AS Sales2009
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01'

SELECT SUM(i.Total) AS Sales2011
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01'