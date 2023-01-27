SELECT COUNT (DISTINCT ss.song_id) AS cancoes,
COUNT (DISTINCT ss.album_id) AS albuns,
COUNT (DISTINCT sa.artist_id) AS artistas
FROM SpotifyClone.songs AS ss
INNER JOIN SpotifyClone.album AS sa;