SELECT 
    a.Name,
    SUM(il.TrackId) BestSellingArtist
FROM Artist a 
JOIN Album al 
    ON al.ArtistId = a.ArtistId
JOIN InvoiceLine il 
    ON il.TrackId = t.TrackId
JOIN Track t 
    ON al.AlbumId = t.AlbumId
GROUP BY a.Name
ORDER BY BestSellingArtist DESC
LIMIT 3;