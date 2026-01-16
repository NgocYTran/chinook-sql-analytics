/* Retrieve the top 10 tracks ranked by total units sold, 
including the total quantity sold for each track. */
SELECT t.TrackId,
		t.Name,
        SUM(il.Quantity) as quantity_sold
FROM track t JOIN invoiceline il
ON t.TrackId = il.TrackId
GROUP BY t.TrackId, t.Name
ORDER BY quantity_sold DESC
LIMIT 10;