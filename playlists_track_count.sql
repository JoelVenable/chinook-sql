-- Provide a query that shows the total number of tracks 
-- in each playlist. 
-- The Playlist name should be include on the resulant table.


USE Chinook


SELECT
  p.Name AS PlaylistName,
  p.PlaylistId,
  COUNT(pt.PlaylistId)
FROM Playlist p
  LEFT JOIN PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId, p.Name

