/* Display first 10 albums (AlbumId, Title) 
with titles start with the letter "A" */
SELECT AlbumID,
		Title
FROM album
WHERE Title LIKE 'A%'
LIMIT 10;