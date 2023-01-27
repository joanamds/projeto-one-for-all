SELECT
  ss.song_name AS cancao,
  COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS ss
INNER JOIN SpotifyClone.history AS sh ON ss.song_id = sh.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
