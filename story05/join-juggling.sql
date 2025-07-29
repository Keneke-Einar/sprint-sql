SELECT 
    tracks.Name AS TrackName,
    albums.Title AS AlbumTitle,
    artists.Name AS ArtistName,
    genres.Name AS GenreName,
    media_types.Name AS MediaTypeName
FROM tracks
JOIN albums ON albums.AlbumId = tracks.AlbumId
JOIN artists ON artists.ArtistId = albums.ArtistId
JOIN genres ON genres.GenreId = tracks.GenreId
JOIN media_types ON media_types.MediaTypeId = tracks.MediaTypeId
WHERE genres.Name = 'Rock' 
    AND tracks.Milliseconds >= 600000
ORDER BY genres.Name ASC;