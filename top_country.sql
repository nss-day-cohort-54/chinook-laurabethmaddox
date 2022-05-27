SELECT 
    Country,
    MAX(mycount) Count
FROM (
    SELECT
        i.BillingCountry Country,
        SUM(i.Total) mycount
    FROM Invoice i 
    GROUP BY i.BillingCountry
);