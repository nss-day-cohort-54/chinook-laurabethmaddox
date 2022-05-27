SELECT 
    e.FirstName ||' '|| e.LastName AS FullName,
CASE WHEN COUNT(c.SupportRepId) ISNULL THEN 0
    WHEN COUNT(c.SupportRepId) >= 0 THEN COUNT(c.SupportRepId) END AS CustomersAssigned
FROM Employee e 
LEFT JOIN Customer c 
ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;