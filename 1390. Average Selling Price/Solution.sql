# Write your MySQL query statement below
select p.product_id , ROUND(
    IFNULL(SUM(p.price * u.units) / NULLIF(SUM(u.units), 0), 0),
    2
  )  as average_price from Prices as p
left join UnitsSold as u
on p.product_id = u.product_id
and u.purchase_date between p.start_date and p.end_date
group by product_id