SELECT 
    i.Total,
    e.FirstName||' '||e.LastName AS AgentFullName,
    c.FirstName||' '||c.LastName AS CustomerName,
    c.country
FROM Invoice i
JOIN Customer c
    ON c.CustomerId = i.CustomerId
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
WHERE e.EmployeeId = c.SupportRepId;
