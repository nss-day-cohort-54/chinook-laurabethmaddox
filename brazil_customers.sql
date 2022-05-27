SELECT c.customerId,
    c.firstName||' '||c.LastName AS FullName,
    c.country
FROM Customer c
WHERE c.country = "Brazil";