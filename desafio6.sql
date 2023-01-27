SELECT
  MIN(s.sign_value) AS faturamento_minimo,
  MAX(s.sign_value) AS faturamento_maximo,
  ROUND(AVG(s.sign_value), 2) AS faturamento_medio,
  ROUND(SUM(s.sign_value), 2)AS faturamento_total
FROM SpotifyClone.signatures AS s
INNER JOIN SpotifyClone.users AS su ON su.sign_id = s.sign_id;