SELECT 
    e.FirstName||' '||e.LastName AS FullName,
    e.EmployeeId,
    c.CustomerId,
    c.SupportRepId
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
WHERE c.SupportRepId = e.EmployeeId;

