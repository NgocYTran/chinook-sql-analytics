/* Display first 10 tracks (TrackId, Name) with more than 
20 characters and no composer is listed */
SELECT TrackId,
		Name
FROM track
WHERE CHAR_LENGTH(Name) > 20 
AND Composer IS NULL
LIMIT 10;