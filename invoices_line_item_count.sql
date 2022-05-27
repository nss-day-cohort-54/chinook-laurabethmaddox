SELECT 
    i.InvoiceId,
    COUNT(il.InvoiceLineId)
FROM Invoice i
JOIN InvoiceLine il
WHERE i.InvoiceId == il.InvoiceId
GROUP BY i.InvoiceId;