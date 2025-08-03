SELECT a.product_name, SUM(b.unit) AS unit
FROM Products a
JOIN Orders b
  ON a.product_id = b.product_id
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY a.product_id 
HAVING SUM(b.unit) >= 100;
