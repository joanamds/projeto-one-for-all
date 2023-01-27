SELECT 
  ar.artist_name AS artista,
  al.album_name AS album,
  COUNT(fa.artist_id) AS seguidores
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.following_artists AS fa ON ar.artist_id = fa.artist_id
INNER JOIN SpotifyClone.album AS al ON al.artist_id = ar.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
