SELECT 
    t.Name,
    SUM(il.TrackId) SoldTracks
FROM InvoiceLine il 
JOIN Track t 
    ON il.TrackId = t.TrackId
JOIN Invoice i 
    ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE "%2013%"
GROUP BY t.Name
ORDER BY SoldTracks DESC