-- Provide a query that shows all the Tracks, but displays no IDs.
-- The result should include the Album name, Media type and Genre.


USE Chinook


SELECT
  t.Name,
  a.Title AS AlbumTitle, -- join on Album
  mt.Name AS MediaType, -- join on MediaType
  g.Name AS GenreName
-- join on Genre
FROM Track t
  LEFT JOIN Album a ON t.AlbumId = a.AlbumId
  LEFT JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
  LEFT JOIN Genre g ON t.GenreId = g.GenreId
