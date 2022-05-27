SELECT 
    t.Name,
    SUM(il.TrackId) MostSold
FROM InvoiceLine il 
JOIN Track t 
    ON il.TrackId = t.TrackId
JOIN Invoice i 
    ON i.InvoiceId = il.InvoiceId
GROUP BY t.Name
ORDER BY MostSold DESC
LIMIT 5;