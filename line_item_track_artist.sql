SELECT 
    i.InvoiceLineId,
    t.Name,
    ar.Name
FROM InvoiceLine i
JOIN Track t
    ON t.TrackId == i.TrackId
JOIN Album a
    ON a.AlbumId == t.AlbumId
JOIN Artist ar
    ON ar.ArtistId == a.ArtistId
WHERE ar.ArtistId == a.ArtistId;