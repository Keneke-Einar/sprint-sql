SELECT artists.ArtistId, artists.Name
FROM artists
LEFT JOIN albums ON albums.ArtistId = artists.ArtistId
ORDER BY artists.Name DESC;