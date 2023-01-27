SELECT
  su.user_name AS usuario,
  COUNT(*) AS qt_de_musicas_ouvidas, 
  ROUND(SUM(ss.song_duration / 60), 2) AS total_minutos
FROM SpotifyClone.history AS sh
INNER JOIN SpotifyClone.users AS su ON su.user_id = sh.user_id
INNER JOIN SpotifyClone.songs AS ss ON ss.song_id = sh.song_id
GROUP BY usuario
ORDER BY usuario;
