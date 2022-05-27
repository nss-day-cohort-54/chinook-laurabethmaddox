SELECT 
    i.InvoiceId,
    e.FirstName||' '||e.LastName AS FullName
FROM Invoice i
JOIN Customer c
    ON c.CustomerId = i.CustomerId
JOIN Employee e
    ON e.EmployeeId = c.SupportRepId
WHERE e.EmployeeId = c.SupportRepId;
