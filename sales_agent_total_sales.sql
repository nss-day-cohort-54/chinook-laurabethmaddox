SELECT
    e.FirstName||' '||e.LastName as "Sales Rep",
    SUM(i.Total) as "Total Sales"
FROM Employee e, Customer c, Invoice i
WHERE e.EmployeeId == c.SupportRepId
AND c.CustomerId = i.CustomerId
GROUP BY e.FirstName;