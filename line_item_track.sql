SELECT 
    i.InvoiceLineId, 
    t.Name
FROM InvoiceLine i
JOIN Track t
WHERE i.TrackId == t.TrackId;