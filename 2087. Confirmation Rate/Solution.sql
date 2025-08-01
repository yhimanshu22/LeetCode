SELECT 
  a.user_id,
  round(avg(if(b.action = 'confirmed',1.00 , 0)),2) AS confirmation_rate
FROM Signups AS a
LEFT JOIN Confirmations AS b
  ON a.user_id = b.user_id
GROUP BY a.user_id