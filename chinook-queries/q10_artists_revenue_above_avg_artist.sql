/* Show artists (ArtistID, Name) whose total sales revenue is above
average artist revenue */
-- Step 1: Calculate total revenue per artist
WITH rev_per_artist AS (
	SELECT a.ArtistId,
			a.Name,
			SUM(il.UnitPrice*il.Quantity) as artist_revenue
    FROM artist a JOIN album ab 
    ON a.ArtistId = ab.ArtistID
    JOIN track t ON ab.AlbumId = t.AlbumId
    JOIN invoiceline il ON t.TrackId = il.TrackId
    GROUP BY a.ArtistId, a.Name
    ),

-- Step 2: Calculate average of artists total using artist_revenue  
	avg_artist_rev AS (
	SELECT AVG(artist_revenue) AS avg_revenue
    FROM rev_per_artist
	)

-- Step 3: Compare and display artists where artist_revenue > avg_artist_revenue
SELECT r.ArtistId,
		r.Name,
        r.artist_revenue,
        ar.avg_revenue
FROM rev_per_artist r CROSS JOIN avg_artist_rev ar
WHERE r.artist_revenue > ar.avg_revenue
ORDER BY r.artist_revenue DESC;