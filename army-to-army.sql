SELECT playlists.Name AS PlaylistName, tracks.Name AS TrackName
FROM playlists
JOIN playlist_track ON playlist_track.PlaylistId = playlists.PlaylistId
JOIN tracks ON tracks.TrackId = playlist_track.TrackId
ORDER BY PlaylistName, TrackName;