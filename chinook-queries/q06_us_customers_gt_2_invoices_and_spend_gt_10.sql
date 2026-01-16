/* Showing US customers (CustomerID, FirstName, LastName) 
with > 2 invoices and total spending > $10 */
SELECT c.CustomerId,
		c.FirstName,
        c.LastName,
        SUM(i.Total) AS TotalSpent
FROM customer c JOIN invoice i
ON c.CustomerID = i.CustomerID
WHERE c.Country = 'USA'
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING COUNT(i.InvoiceID) > 2
AND SUM(i.Total) > 10;