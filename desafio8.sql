SELECT 
  ar.artist_name AS artista,
  al.album_name AS album
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.album AS al ON al.artist_id = ar.artist_id
WHERE artist_name = 'Elis Regina'
GROUP BY artista, album;
