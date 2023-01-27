SELECT 
  s.song_name AS nome,
  COUNT(*) AS reproducoes
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u ON h.user_id = u.user_id
INNER JOIN SpotifyClone.songs AS s ON h.song_id = s.song_id
INNER JOIN SpotifyClone.signatures AS sign ON sign.sign_id = u.sign_id
WHERE sign.sign_name = 'gratuito' OR sign.sign_name = 'pessoal'
GROUP BY nome
ORDER BY nome;

