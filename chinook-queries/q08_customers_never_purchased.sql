/* Show customers who have never purchased any tracks */
SELECT c.CustomerId,
		c.FirstName,
        c.LastName
FROM customer c LEFT JOIN invoice i
ON c.CustomerId = i.CustomerId
WHERE i.InvoiceId IS NULL;