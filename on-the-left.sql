SELECT artists.ArtistId, artists.Name
FROM artists
LEFT JOIN albums ON albums.ArtistId = artists.ArtistId
WHERE albums.ArtistId IS NULL
ORDER BY artists.Name DESC;