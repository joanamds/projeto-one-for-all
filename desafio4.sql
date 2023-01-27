SELECT
  su.user_name AS usuario,
  IF(MAX(YEAR(sh.history_date)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS su
INNER JOIN SpotifyClone.history AS sh ON su.user_id = sh.user_id
GROUP BY usuario
ORDER BY usuario;