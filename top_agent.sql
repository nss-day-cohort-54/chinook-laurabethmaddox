SELECT 
    MAX(TotalSales) as Topsales,
    FullName
FROM (
    SELECT e.FirstName||''|| e.LastName AS FullName,
    SUM(i.Total) AS TotalSales
    FROM Employee e
    JOIN Customer c 
    ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
    GROUP BY e.EmployeeId
);