-- Provide a query that includes the purchased track name 
-- AND artist name with each invoice line item.


USE Chinook



SELECT
  i.UnitPrice,
  i.InvoiceId,
  t.Name AS TrackName,
  ar.Name AS ArtistName
FROM InvoiceLine i
  LEFT JOIN Track t ON i.TrackId = t.TrackId
  LEFT JOIN Album a ON t.AlbumId = a.AlbumId
  LEFT JOIN Artist ar ON a.ArtistId = ar.ArtistId
ORDER BY i.InvoiceId