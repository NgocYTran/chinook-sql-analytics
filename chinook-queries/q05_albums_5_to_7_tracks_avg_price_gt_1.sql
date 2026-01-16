/* Display albums (AlbumID, Title) that has 5-7 tracks
with average track price is greater than $1 */ 
SELECT a.AlbumId,
		a.Title
FROM album a JOIN track t
ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId, a.Title
HAVING (COUNT(t.TrackId) BETWEEN 5 AND 7)
AND AVG(t.UnitPrice) > 1;