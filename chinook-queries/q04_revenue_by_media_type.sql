/* Calculate the total sales revenue of each media type. */
SELECT m.MediaTypeId,
		m.Name,
        SUM(il.UnitPrice*il.Quantity) as total_rev
FROM mediatype m JOIN track t 
ON m.MediaTypeId = t.MediaTypeId
JOIN invoiceline il ON t.TrackId = il.TrackId
GROUP BY m.MediaTypeId, m.Name;