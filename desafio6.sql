SELECT
  MIN(s.sign_value) AS faturamento_minimo,
  MAX(s.sign_value) AS faturamento_maximo,
  SUM(s.sign_value) AS faturamento_total
FROM SpotifyClone.signatures AS s
INNER JOIN SpotifyClone.users AS su ON s.sign_id = su.sign_id;