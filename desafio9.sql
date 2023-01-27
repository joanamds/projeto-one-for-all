SELECT 
  COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS u ON u.user_id = h.user_id
WHERE u.user_name = 'Barbara Liskov';