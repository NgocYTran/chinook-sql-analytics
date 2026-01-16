/* Show customers who purchased tracks from 
more than 3 different genres */
SELECT c.CustomerId,
		c.FirstName,
        c.LastName,
        COUNT(DISTINCT t.GenreId) AS genre_count
FROM customer c JOIN invoice i
ON c.CustomerId = i.CustomerId
JOIN invoiceline il ON i.InvoiceId = il.InvoiceId
JOIN track t ON il.TrackId = t.TrackId
GROUP BY c.CustomerId, c.FirstName, c.LastName
HAVING genre_count > 3;