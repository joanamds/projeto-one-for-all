SELECT 
  s.song_name AS nome,
  COUNT(DISTINCT(h.user_id)) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h ON s.song_id = h.song_id
GROUP BY nome
ORDER BY nome;