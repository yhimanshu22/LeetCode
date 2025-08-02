SELECT 
  ROUND(100*AVG(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END), 2) AS immediate_percentage
FROM (
  SELECT * 
  FROM Delivery AS d
  WHERE order_date = (
    SELECT MIN(order_date) 
    FROM Delivery 
    WHERE customer_id = d.customer_id
  )
) AS first_orders;
