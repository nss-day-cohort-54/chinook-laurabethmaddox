SELECT
    c.firstName||' '||c.LastName AS FullName,
    c.CustomerId,
    c.Country,
    i.invoiceId,
    i.invoiceDate,
    i.billingCountry
FROM Customer c
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
WHERE c.Country = "Brazil";