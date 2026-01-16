/* Show the top 5 customers per country by total spending */
SELECT CustomerId,
		FirstName,
		LastName,
        Country,
        total_spent
FROM (
    SELECT
        c.CustomerId,
        c.FirstName,
        c.LastName,
        c.Country,
        SUM(i.Total) AS total_spent,
        ROW_NUMBER() OVER (
            PARTITION BY c.Country
            ORDER BY SUM(i.Total) DESC) AS row_num
    FROM Customer c JOIN invoice i
    ON c.CustomerId = i.CustomerId
    GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country
    ) AS ranked
WHERE row_num <= 5
ORDER BY Country, total_spent DESC;
