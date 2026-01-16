/* Show countries where the average invoice total is above
the overall average invoice total */
SELECT BillingCountry,
		ROUND(AVG(Total),2) as avg_invoice_total
FROM invoice
GROUP BY BillingCountry
HAVING AVG(Total) >
							(
								SELECT AVG(Total)
								FROM invoice
							);