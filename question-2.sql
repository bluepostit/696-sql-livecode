-- List tracks (Name + Composer) of the Classical playlist

SELECT tracks.name, tracks.composer
FROM tracks
JOIN playlists
ON playlist_tracks.playlist_id = playlists.id
JOIN playlist_tracks
ON playlist_tracks.track_id = tracks.id
WHERE playlists.name = 'Classical'