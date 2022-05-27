SELECT 
    p.Name AS "Playlist Name",
COUNT(pt.TrackId) as "Number of Tracks"
FROM Playlist p, PlaylistTrack pt
WHERE p.PlaylistId == pt.PlaylistId
GROUP BY p.PlaylistId;