/* Show albums that have tracks sold in more than
5 different invoices */
SELECT a.AlbumId,
		a.Title,
        COUNT(DISTINCT il.InvoiceId) as total_invoice
FROM album a JOIN track t
ON a.AlbumId = t.AlbumId
JOIN invoiceline il ON t.TrackId = il.TrackId
GROUP BY a.AlbumId, a.Title
HAVING total_invoice > 5
ORDER BY a.Title;