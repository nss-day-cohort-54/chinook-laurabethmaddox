SELECT 
    i.BillingCountry,
COUNT(i.BillingCountry)
FROM Invoice i GROUP BY i.BillingCountry;