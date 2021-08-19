-- List the 10 artists mostly listed in all playlists

SELECT artists.name, COUNT(*) c
FROM artists
JOIN albums ON artists.id = albums.artist_id
JOIN tracks on albums.id = tracks.album_id
JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
GROUP BY artists.name
ORDER BY c DESC
LIMIT 10