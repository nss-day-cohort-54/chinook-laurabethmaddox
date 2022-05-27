SELECT 
    MAX(TotalSales) AS Topsales,
    FullName
FROM (
    SELECT 
        e.FirstName||' '|| e.LastName AS FullName,
        sum(i.Total) AS TotalSales
    FROM Employee e
    JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
    WHERE i.InvoiceDate LIKE '%2009%'
    GROUP BY e.EmployeeId
);

