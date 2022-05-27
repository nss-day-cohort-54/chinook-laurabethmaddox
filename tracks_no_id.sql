SELECT 
    t.Name,
    a.Title AS "Album Title",
    m.Name AS "Media Type",
    g.Name as "Genre"
FROM Track t, Album a, MediaType m, Genre g
WHERE t.AlbumId == a.AlbumId
AND t.MediaTypeId == m.MediaTypeId
AND t.GenreId == g.GenreId;
